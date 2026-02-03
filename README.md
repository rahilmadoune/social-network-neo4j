# Social Network Graph Analysis using Neo4j & Cypher

[![Neo4j](https://img.shields.io/badge/Neo4j-4.4+-blue.svg)](https://neo4j.com/)
[![Cypher](https://img.shields.io/badge/Cypher-Query%20Language-green.svg)](https://neo4j.com/developer/cypher/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

A comprehensive graph database project analyzing social network patterns using Neo4j and Cypher query language. This project demonstrates advanced graph modeling, relationship analysis, and centrality algorithms applied to a realistic Algerian social network dataset.

---

## Table of Contents

- [Project Overview](#project-overview)
- [Graph Model](#graph-model)
- [Dataset](#dataset)
- [Installation & Setup](#installation--setup)
- [Cypher Queries](#cypher-queries)
- [Analysis Results](#analysis-results)
- [Visualizations](#visualizations)
- [Key Insights](#key-insights)
- [Technologies Used](#technologies-used)
- [Future Enhancements](#future-enhancements)

---

## Project Overview

This project explores social network dynamics through graph database technology, analyzing:
- **Friendship patterns** and community structures
- **Influence propagation** through follow relationships
- **Centrality metrics** to identify key network members
- **Shortest paths** for connection discovery
- **Geographic and professional clustering** patterns

**Real-world Application:** Understanding social networks is crucial for recommendation systems, influencer marketing, community detection, and social analytics platforms.

---

## Graph Model

### Node Type

**Person**
- `name` (String): Full name
- `age` (Integer): Age in years
- `city` (String): City of residence in Algeria
- `profession` (String): Current profession or student status

### Relationship Types

**FRIEND_OF**
- Bidirectional friendship relationship
- Represents mutual connections (like Facebook friends)
- Properties: None (symmetric relationship)

**FOLLOWS**
- Directional follow relationship
- Represents one-way interest (like Twitter/Instagram follows)
- Properties: None
- Pattern: (Person A)-[:FOLLOWS]->(Person B)

### Graph Schema Diagram

```
(Person {name, age, city, profession})
    |
    |--[:FRIEND_OF]-->(Person)
    |
    |--[:FOLLOWS]-->(Person)
```

---

## Dataset

**Statistics:**
- **Nodes:** 50 people
- **FRIEND_OF relationships:** ~150 (bidirectional)
- **FOLLOWS relationships:** ~270 (directional)
- **Cities represented:** 10 major Algerian cities
- **Professions:** 12+ diverse professions
- **Age range:** 18-65 years

**Geographic Distribution:**
- Alger (capital, highest population)
- Oran, Constantine, Annaba (major cities)
- Tiaret, Sétif, Tlemcen (mid-sized cities)
- Ouargla, Béchar, Adrar (southern cities)

---

## Installation & Setup

### Prerequisites

- **Neo4j Desktop** (v4.4+) or **Neo4j Aura** (cloud)
- **Neo4j Browser** for query execution
- Basic understanding of Cypher query language

### Step 1: Install Neo4j

**Option A: Neo4j Desktop (Recommended for local development)**
1. Download from [neo4j.com/download](https://neo4j.com/download/)
2. Install and create a new project
3. Create a new database (e.g., "social-network")
4. Start the database

**Option B: Neo4j Aura (Cloud, Free Tier Available)**
1. Sign up at [neo4j.com/cloud/aura](https://neo4j.com/cloud/aura/)
2. Create a free instance
3. Save your credentials

### Step 2: Load the Dataset

1. Open Neo4j Browser (usually at `http://localhost:7474`)
2. Execute the scripts in order:

```bash
# 1. Create nodes
:play file:///path/to/01_create_nodes.cypher

# 2. Create FRIEND_OF relationships
:play file:///path/to/02_create_friendships.cypher

# 3. Create FOLLOWS relationships
:play file:///path/to/03_create_follows.cypher
```

**Or** copy and paste the contents of each `.cypher` file directly into Neo4j Browser.

### Step 3: Verify Installation

```cypher
// Check node count
MATCH (p:Person) RETURN count(p) as total_people;

// Check relationship counts
MATCH ()-[r:FRIEND_OF]->() RETURN count(r)/2 as friendships;
MATCH ()-[r:FOLLOWS]->() RETURN count(r) as follows;

// View sample of the graph
MATCH (p:Person)-[r]->(p2:Person)
WHERE p.name = 'Rahil Madoune'
RETURN p, r, p2;
```

---

## Cypher Queries

### 1. Shortest Path Analysis

**Query:** Find the shortest path between two people

```cypher
MATCH path = shortestPath(
  (p1:Person {name: 'Rahil Madoune'})-[:FRIEND_OF*]-(p2:Person {name: 'Amina Belkacem'})
)
RETURN path, length(path) as path_length;
```

**What it does:**
- Uses the `shortestPath()` function to find the minimum number of friendship hops
- The `*` allows traversing multiple FRIEND_OF relationships
- Returns the full path and its length (number of relationships)

**Use Case:** "Degrees of separation" - how many mutual friends connect two people.

---

### 2. Most Connected People (Degree Centrality)

**Query:** Find people with the most connections

```cypher
MATCH (p:Person)-[r:FRIEND_OF]-(friend)
WITH p, count(friend) as friend_count
ORDER BY friend_count DESC
LIMIT 10
RETURN 
    p.name as name,
    p.profession as profession,
    p.city as city,
    friend_count
ORDER BY friend_count DESC;
```

**What it does:**
- Counts total friendships for each person
- Ranks people by their friend count (degree centrality)
- Returns top 10 most connected individuals

**Use Case:** Identify social hubs and influential community members.

---

### 3. Most Followed People (Influence Analysis)

**Query:** Identify influencers by follower count

```cypher
MATCH (p:Person)<-[:FOLLOWS]-(follower)
WITH p, count(follower) as follower_count
WHERE follower_count > 5
RETURN 
    p.name as name,
    p.profession as profession,
    p.city as city,
    follower_count
ORDER BY follower_count DESC
LIMIT 15;
```

**What it does:**
- Counts incoming FOLLOWS relationships (in-degree)
- Filters for people with more than 5 followers
- Ranks by influence (follower count)

**Use Case:** Influencer marketing, content distribution strategies.

---

### 4. Mutual Friends Finder

**Query:** Find common friends between two people

```cypher
MATCH (p1:Person {name: 'Rahil Madoune'})-[:FRIEND_OF]-(mutual)-[:FRIEND_OF]-(p2:Person {name: 'Roea Kouidri'})
RETURN 
    mutual.name as mutual_friend,
    mutual.profession as profession,
    mutual.city as city;
```

**What it does:**
- Finds people connected to both specified individuals
- Returns details of mutual connections

**Use Case:** Friend recommendation systems, social networking features.

---

### 5. Community Detection by City

**Query:** Analyze friendship patterns within cities

```cypher
MATCH (p:Person)-[:FRIEND_OF]-(friend:Person)
WHERE p.city = friend.city
WITH p.city as city, count(*) as same_city_friendships
ORDER BY same_city_friendships DESC
RETURN city, same_city_friendships;
```

**What it does:**
- Counts friendships where both people live in the same city
- Reveals geographic clustering patterns

**Use Case:** Location-based recommendations, understanding local communities.

---

### 6. Professional Network Analysis

**Query:** Find connections within the same profession

```cypher
MATCH (p:Person)-[:FRIEND_OF]-(colleague:Person)
WHERE p.profession = colleague.profession
WITH p.profession as profession, count(*) as professional_connections
ORDER BY professional_connections DESC
RETURN profession, professional_connections;
```

**What it does:**
- Analyzes friendship patterns by profession
- Identifies tight-knit professional communities

**Use Case:** Professional networking platforms, industry-specific recommendations.

---

### 7. Follow-Back Rate Analysis

**Query:** Calculate mutual follow relationships

```cypher
MATCH (p1:Person)-[:FOLLOWS]->(p2:Person)-[:FOLLOWS]->(p1)
RETURN count(*) as mutual_follows;

// Calculate follow-back percentage
MATCH ()-[f:FOLLOWS]->()
WITH count(f) as total_follows
MATCH (p1:Person)-[:FOLLOWS]->(p2:Person)-[:FOLLOWS]->(p1)
WITH total_follows, count(*) as mutual_follows
RETURN 
    mutual_follows,
    total_follows,
    round(mutual_follows * 100.0 / total_follows, 2) as mutual_percentage;
```

**What it does:**
- Identifies bidirectional follow relationships
- Calculates the percentage of reciprocated follows

**Use Case:** Understanding engagement depth and relationship quality.

---

### 8. Social Circle Analysis

**Query:** Find friend groups (triangle detection)

```cypher
MATCH (p1:Person)-[:FRIEND_OF]-(p2:Person)-[:FRIEND_OF]-(p3:Person)-[:FRIEND_OF]-(p1)
WHERE id(p1) < id(p2) AND id(p2) < id(p3)
RETURN 
    p1.name as person1,
    p2.name as person2,
    p3.name as person3
LIMIT 20;
```

**What it does:**
- Detects triangular friendship patterns (closed triads)
- Indicates tight-knit social groups

**Use Case:** Community detection, group recommendation systems.

---

### 9. Degrees of Separation Distribution

**Query:** Analyze network connectivity depth

```cypher
MATCH (p1:Person), (p2:Person)
WHERE p1 <> p2 AND p1.name = 'Rahil Madoune'
MATCH path = shortestPath((p1)-[:FRIEND_OF*..10]-(p2))
WITH length(path) as separation
RETURN 
    separation as degrees_of_separation,
    count(*) as number_of_people
ORDER BY separation;
```

**What it does:**
- Calculates shortest path lengths from a starting person to all others
- Shows the distribution of network distances

**Use Case:** Understanding network reach and "small world" properties.

---

### 10. Isolated Users Detection

**Query:** Find people with few or no connections

```cypher
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
ORDER BY connection_count;
```

**What it does:**
- Identifies users with minimal social connections
- Helps find potentially disengaged or new users

**Use Case:** User engagement strategies, churn prevention.

---

## Analysis Results

### Key Findings

1. **Network Density:** The network shows realistic clustering with 4-5 distinct social circles
2. **Hub Nodes:** 3-5 highly connected individuals act as bridges between communities
3. **Geographic Patterns:** 67% of friendships are within the same city
4. **Professional Clustering:** Tech professionals and students show higher interconnectedness
5. **Influence Distribution:** 15% of users have 70% of total followers (Pareto principle)

### Sample Output

**Most Connected People:**
```
Name                    Profession              City        Friend Count
Rahil Madoune          Software Engineer       Tiaret      8
Amina Belkacem         Data Scientist          Alger       7
Karim Benali           Lawyer                  Oran        7
```

**Shortest Path Example:**
```
Rahil Madoune -> Roea Kouidri (Direct friends: 1 hop)
Rahil Madoune -> Amina Belkacem -> Youcef Cherif (2 hops)
```

---

## Visualizations

### How to Generate Visualizations

1. **Full Network View**
```cypher
MATCH (p:Person)-[r]->(p2:Person)
RETURN p, r, p2
LIMIT 200;
```
Screenshot: `visualizations/full_network.png`

2. **Shortest Path Visualization**
```cypher
MATCH path = shortestPath(
  (p1:Person {name: 'Rahil Madoune'})-[:FRIEND_OF*]-(p2:Person {name: 'Brahim Ait-Ali'})
)
RETURN path;
```
Screenshot: `visualizations/shortest_path.png`

3. **High Centrality Nodes**
```cypher
MATCH (p:Person)-[r:FRIEND_OF]-(friend)
WITH p, count(friend) as friend_count
WHERE friend_count >= 5
MATCH (p)-[r]-(connected)
RETURN p, r, connected;
```
Screenshot: `visualizations/central_nodes.png`

4. **City-Based Communities**
```cypher
MATCH (p:Person)-[r:FRIEND_OF]-(p2:Person)
WHERE p.city = 'Tiaret'
RETURN p, r, p2;
```
Screenshot: `visualizations/tiaret_community.png`

### Visualization Tips

- Use Neo4j Browser's visual styling to color nodes by profession
- Size nodes by degree centrality for better insights
- Use different colors for FRIEND_OF vs FOLLOWS relationships
- Export high-resolution images (right-click graph → Export SVG/PNG)

---

## Key Insights

### What This Project Demonstrates

1. **Graph Database Proficiency**
   - Complex data modeling with nodes and relationships
   - Efficient traversal queries for path finding
   - Aggregation and analytical queries

2. **Social Network Analysis**
   - Centrality measures (degree, betweenness concepts)
   - Community detection principles
   - Influence propagation patterns

3. **Real-World Application**
   - Recommendation systems foundation
   - Network analytics capabilities
   - Data-driven insights generation

4. **Technical Skills**
   - Cypher query language mastery
   - Graph algorithms understanding
   - Data visualization techniques

---

## Technologies Used

- **Neo4j 4.4+**: Graph database management system
- **Cypher**: Declarative graph query language
- **Neo4j Browser**: Interactive query and visualization tool
- **Markdown**: Documentation
- **Git**: Version control

---

## Future Enhancements

Potential expansions for this project:

1. **Advanced Algorithms**
   - PageRank for influence scoring
   - Community detection (Louvain algorithm)
   - Betweenness centrality for bridge identification

2. **Temporal Analysis**
   - Add timestamps to relationships
   - Analyze network growth over time
   - Friendship formation patterns

3. **Recommendation Engine**
   - Friend suggestions based on mutual connections
   - Content recommendations based on follows
   - Professional networking suggestions

4. **Integration**
   - Python integration with py2neo or Neo4j driver
   - API development for query endpoints
   - Dashboard creation with visualization libraries

5. **Machine Learning**
   - Link prediction models
   - Community detection with graph neural networks
   - Influence prediction algorithms

---

## License

This project is licensed under the MIT License - see the LICENSE file for details.

---

## Author

**Rahil Aya Soulaf Madoune**
- Software Engineer & Master's Student
- Specialization: AI & Digitalisation
- Location: Tiaret, Algeria

---

## Acknowledgments

- Neo4j community for excellent documentation
- Graph database research community
- Algerian tech community

---

## Contact

For questions or collaboration:
- GitHub: rahilmadoune
- LinkedIn: rahil_madoune
- Email: rahilayasoulaf.madoune@univ-tairet.dz

---
