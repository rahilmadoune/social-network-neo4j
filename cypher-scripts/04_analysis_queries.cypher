// CYPHER QUERIES

// 1. SHORTEST PATH ANALYSIS

// Find shortest path between Rahil and any person
MATCH path = shortestPath(
  (p1:Person {name: 'Rahil Madoune'})-[:FRIEND_OF*]-(p2:Person {name: 'Amina Belkacem'})
)
RETURN path, length(path) as path_length;

// Find shortest paths from Rahil to all others (connectivity analysis)
MATCH (rahil:Person {name: 'Rahil Madoune'}), (other:Person)
WHERE rahil <> other
MATCH path = shortestPath((rahil)-[:FRIEND_OF*..10]-(other))
WITH other, length(path) as degrees_of_separation
ORDER BY degrees_of_separation
RETURN 
    other.name as person,
    other.city as city,
    degrees_of_separation
LIMIT 10;

// Distribution of degrees of separation from Rahil
MATCH (rahil:Person {name: 'Rahil Madoune'}), (other:Person)
WHERE rahil <> other
MATCH path = shortestPath((rahil)-[:FRIEND_OF*..10]-(other))
WITH length(path) as separation
RETURN 
    separation as degrees_of_separation,
    count(*) as number_of_people
ORDER BY separation;


// 2. DEGREE CENTRALITY - Most Connected People

// Top 10 most connected people by friend count
MATCH (p:Person)-[:FRIEND_OF]-(friend)
WITH p, count(friend) as friend_count
ORDER BY friend_count DESC
LIMIT 10
RETURN 
    p.name as name,
    p.profession as profession,
    p.city as city,
    p.age as age,
    friend_count
ORDER BY friend_count DESC;

// Full ranking with connection counts
MATCH (p:Person)
OPTIONAL MATCH (p)-[:FRIEND_OF]-(friend)
WITH p, count(friend) as friend_count
ORDER BY friend_count DESC
RETURN 
    p.name as name,
    p.city as city,
    p.profession as profession,
    friend_count
ORDER BY friend_count DESC;

// People with highest connectivity in each city
MATCH (p:Person)-[:FRIEND_OF]-(friend)
WITH p, count(friend) as friend_count
ORDER BY p.city, friend_count DESC
RETURN 
    p.city as city,
    collect({name: p.name, connections: friend_count})[0] as most_connected_person;


// 3. INFLUENCE ANALYSIS - Most Followed

// Top influencers by follower count
MATCH (p:Person)<-[:FOLLOWS]-(follower)
WITH p, count(follower) as follower_count
WHERE follower_count > 5
RETURN 
    p.name as name,
    p.profession as profession,
    p.city as city,
    p.age as age,
    follower_count
ORDER BY follower_count DESC
LIMIT 15;

// Compare follower count vs friend count (influence vs popularity)
MATCH (p:Person)
OPTIONAL MATCH (p)<-[:FOLLOWS]-(follower)
WITH p, count(follower) as follower_count
OPTIONAL MATCH (p)-[:FRIEND_OF]-(friend)
WITH p, follower_count, count(friend) as friend_count
WHERE follower_count > 0 OR friend_count > 0
RETURN 
    p.name as name,
    p.profession as profession,
    follower_count,
    friend_count,
    round((follower_count * 1.0 / CASE WHEN friend_count = 0 THEN 1 ELSE friend_count END), 2) as influence_ratio
ORDER BY follower_count DESC
LIMIT 15;


// 4. MUTUAL FRIENDS ANALYSIS

// Find mutual friends between Rahil and Roea
MATCH (p1:Person {name: 'Rahil Madoune'})-[:FRIEND_OF]-(mutual)-[:FRIEND_OF]-(p2:Person {name: 'Roea Kouidri'})
RETURN 
    mutual.name as mutual_friend,
    mutual.profession as profession,
    mutual.city as city;

// Find people with most mutual friends with Rahil (friend recommendations)
MATCH (rahil:Person {name: 'Rahil Madoune'})-[:FRIEND_OF]-(friend)-[:FRIEND_OF]-(potentialFriend)
WHERE rahil <> potentialFriend 
  AND NOT (rahil)-[:FRIEND_OF]-(potentialFriend)
WITH potentialFriend, count(DISTINCT friend) as mutual_friends
ORDER BY mutual_friends DESC
RETURN 
    potentialFriend.name as recommended_friend,
    potentialFriend.profession as profession,
    potentialFriend.city as city,
    mutual_friends
LIMIT 10;


// 5. COMMUNITY DETECTION - Geographic Clustering

// Friendship density within each city
MATCH (p:Person)-[:FRIEND_OF]-(friend:Person)
WHERE p.city = friend.city
WITH p.city as city, count(*)/2 as same_city_friendships
ORDER BY same_city_friendships DESC
RETURN 
    city,
    same_city_friendships;

// Cross-city friendship patterns
MATCH (p1:Person)-[:FRIEND_OF]-(p2:Person)
WHERE p1.city <> p2.city
WITH p1.city as city1, p2.city as city2, count(*)/2 as connections
ORDER BY connections DESC
RETURN 
    city1,
    city2,
    connections
LIMIT 15;

// City network statistics
MATCH (p:Person)
WITH p.city as city, count(p) as population
OPTIONAL MATCH (p1:Person)-[:FRIEND_OF]-(p2:Person)
WHERE p1.city = city AND p2.city = city
WITH city, population, count(DISTINCT p1)/2 as internal_connections
RETURN 
    city,
    population,
    internal_connections,
    round((internal_connections * 2.0 / (population * (population - 1))), 3) as density
ORDER BY density DESC;


// 6. PROFESSIONAL NETWORK ANALYSIS

// Connections within same profession
MATCH (p:Person)-[:FRIEND_OF]-(colleague:Person)
WHERE p.profession = colleague.profession
WITH p.profession as profession, count(*)/2 as professional_connections
ORDER BY professional_connections DESC
RETURN 
    profession,
    professional_connections;

// Cross-professional connections (who connects different fields)
MATCH (p:Person)-[:FRIEND_OF]-(friend:Person)
WHERE p.profession <> friend.profession
WITH p, count(DISTINCT friend.profession) as diverse_connections
ORDER BY diverse_connections DESC
RETURN 
    p.name as name,
    p.profession as own_profession,
    p.city as city,
    diverse_connections
LIMIT 10;

// Professional clustering coefficient
MATCH (p:Person)
WITH p.profession as profession, count(p) as count
WHERE count > 2
OPTIONAL MATCH (p1:Person)-[:FRIEND_OF]-(p2:Person)
WHERE p1.profession = profession AND p2.profession = profession
WITH profession, count, count(DISTINCT p1)/2 as internal_connections
RETURN 
    profession,
    count as members,
    internal_connections,
    round((internal_connections * 2.0 / (count * (count - 1))), 3) as clustering
ORDER BY clustering DESC;


// 7. FOLLOW-BACK ANALYSIS

// Mutual follows (bidirectional follow relationships)
MATCH (p1:Person)-[:FOLLOWS]->(p2:Person)-[:FOLLOWS]->(p1)
RETURN count(*) as mutual_follow_count;

// Calculate follow-back rate
MATCH ()-[f:FOLLOWS]->()
WITH count(f) as total_follows
MATCH (p1:Person)-[:FOLLOWS]->(p2:Person)-[:FOLLOWS]->(p1)
WITH total_follows, count(*) as mutual_follows
RETURN 
    total_follows,
    mutual_follows,
    round(mutual_follows * 100.0 / total_follows, 2) as mutual_percentage;

// People with highest follow-back rate
MATCH (p:Person)-[:FOLLOWS]->(following)
WITH p, count(following) as following_count
MATCH (p)<-[:FOLLOWS]-(follower)
WITH p, following_count, count(follower) as follower_count
MATCH (p)-[:FOLLOWS]->(mutual)<-[:FOLLOWS]-(p)
WITH p, following_count, follower_count, count(mutual) as mutual_count
WHERE following_count > 3
RETURN 
    p.name as name,
    following_count,
    follower_count,
    mutual_count,
    round(mutual_count * 100.0 / following_count, 2) as follow_back_rate
ORDER BY follow_back_rate DESC
LIMIT 15;


// 8. TRIANGLE DETECTION (Tight-knit Groups)

// Find all friendship triangles (closed triads)
MATCH (p1:Person)-[:FRIEND_OF]-(p2:Person)-[:FRIEND_OF]-(p3:Person)-[:FRIEND_OF]-(p1)
WHERE id(p1) < id(p2) AND id(p2) < id(p3)
RETURN 
    p1.name as person1,
    p2.name as person2,
    p3.name as person3,
    CASE 
        WHEN p1.city = p2.city AND p2.city = p3.city THEN p1.city 
        ELSE 'Mixed cities' 
    END as location
LIMIT 20;

// Count triangles per person (clustering indicator)
MATCH (p:Person)-[:FRIEND_OF]-(friend1)-[:FRIEND_OF]-(friend2)-[:FRIEND_OF]-(p)
WHERE id(friend1) < id(friend2)
WITH p, count(*) as triangle_count
ORDER BY triangle_count DESC
RETURN 
    p.name as name,
    p.city as city,
    triangle_count
LIMIT 15;


// 9. NETWORK REACH ANALYSIS

// Average path length in the network (small world property)
MATCH (p1:Person), (p2:Person)
WHERE id(p1) < id(p2)
MATCH path = shortestPath((p1)-[:FRIEND_OF*..10]-(p2))
WITH length(path) as distance
RETURN 
    avg(distance) as average_path_length,
    min(distance) as shortest_connection,
    max(distance) as longest_connection;

// Network diameter (longest shortest path)
MATCH (p1:Person), (p2:Person)
WHERE id(p1) < id(p2)
MATCH path = shortestPath((p1)-[:FRIEND_OF*..10]-(p2))
WITH length(path) as distance
ORDER BY distance DESC
LIMIT 1
RETURN distance as network_diameter;


// 10. ISOLATED & LOW-CONNECTIVITY NODES

// Find isolated or minimally connected people
MATCH (p:Person)
OPTIONAL MATCH (p)-[r:FRIEND_OF]-()
WITH p, count(r) as connection_count
WHERE connection_count < 3
RETURN 
    p.name as name,
    p.age as age,
    p.city as city,
    p.profession as profession,
    connection_count
ORDER BY connection_count, p.name;

// People with no follows (potential inactive accounts)
MATCH (p:Person)
WHERE NOT (p)-[:FOLLOWS]->()
RETURN 
    p.name as name,
    p.profession as profession,
    p.city as city
ORDER BY p.name;


// 11. AGE-BASED ANALYSIS

// Age distribution of the network
MATCH (p:Person)
WITH 
    CASE 
        WHEN p.age < 25 THEN '18-24'
        WHEN p.age < 35 THEN '25-34'
        WHEN p.age < 45 THEN '35-44'
        WHEN p.age < 55 THEN '45-54'
        ELSE '55+'
    END as age_group
RETURN age_group, count(*) as count
ORDER BY age_group;

// Friendship patterns by age similarity
MATCH (p1:Person)-[:FRIEND_OF]-(p2:Person)
WITH abs(p1.age - p2.age) as age_difference
RETURN 
    CASE 
        WHEN age_difference <= 5 THEN '0-5 years'
        WHEN age_difference <= 10 THEN '6-10 years'
        WHEN age_difference <= 15 THEN '11-15 years'
        ELSE '16+ years'
    END as age_gap,
    count(*)/2 as friendships
ORDER BY age_gap;


// 12. SPECIFIC USER PROFILES

// Rahil's complete network profile
MATCH (rahil:Person {name: 'Rahil Madoune'})
OPTIONAL MATCH (rahil)-[:FRIEND_OF]-(friend)
WITH rahil, count(friend) as friend_count, collect(friend.name) as friends
OPTIONAL MATCH (rahil)-[:FOLLOWS]->(following)
WITH rahil, friend_count, friends, count(following) as following_count
OPTIONAL MATCH (rahil)<-[:FOLLOWS]-(follower)
RETURN 
    rahil.name as name,
    rahil.age as age,
    rahil.city as city,
    rahil.profession as profession,
    friend_count,
    following_count,
    count(follower) as follower_count;

// Roea's complete network profile
MATCH (roea:Person {name: 'Roea Kouidri'})
OPTIONAL MATCH (roea)-[:FRIEND_OF]-(friend)
WITH roea, count(friend) as friend_count
OPTIONAL MATCH (roea)-[:FOLLOWS]->(following)
WITH roea, friend_count, count(following) as following_count
OPTIONAL MATCH (roea)<-[:FOLLOWS]-(follower)
RETURN 
    roea.name as name,
    roea.age as age,
    roea.city as city,
    roea.profession as profession,
    friend_count,
    following_count,
    count(follower) as follower_count;


// 13. OVERALL NETWORK STATISTICS

// Profession distribution
MATCH (p:Person)
RETURN 
    p.profession as profession,
    count(*) as count
ORDER BY count DESC;

// City distribution
MATCH (p:Person)
RETURN 
    p.city as city,
    count(*) as population
ORDER BY population DESC;


// 14. ADVANCED QUERIES FOR INSIGHTS

// Find "bridge" nodes (connecting different communities)
MATCH (p:Person)-[:FRIEND_OF]-(friend)
WITH p, collect(DISTINCT friend.city) as connected_cities
WHERE size(connected_cities) > 2
RETURN 
    p.name as bridge_person,
    p.city as home_city,
    p.profession as profession,
    size(connected_cities) as cities_connected,
    connected_cities
ORDER BY cities_connected DESC
LIMIT 10;

// Most active professionals by engagement
MATCH (p:Person)
OPTIONAL MATCH (p)-[:FRIEND_OF]-(friend)
WITH p, count(friend) as friends
OPTIONAL MATCH (p)-[:FOLLOWS]->(following)
WITH p, friends, count(following) as following_count
OPTIONAL MATCH (p)<-[:FOLLOWS]-(follower)
WITH p, friends, following_count, count(follower) as followers
RETURN 
    p.name as name,
    p.profession as profession,
    p.city as city,
    friends,
    following_count,
    followers,
    (friends + following_count + followers) as total_engagement
ORDER BY total_engagement DESC
LIMIT 15;
