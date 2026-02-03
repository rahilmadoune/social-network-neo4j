// CREATE FRIENDSHIPS
MATCH (rahil:Person {name: 'Rahil Madoune'}), (roea:Person {name: 'Roea Kouidri'})
CREATE (rahil)-[:FRIEND_OF]->(roea), (roea)-[:FRIEND_OF]->(rahil);

MATCH (rahil:Person {name: 'Rahil Madoune'}), (yasmine:Person {name: 'Yasmine Messaoudi'})
CREATE (rahil)-[:FRIEND_OF]->(yasmine), (yasmine)-[:FRIEND_OF]->(rahil);

MATCH (rahil:Person {name: 'Rahil Madoune'}), (mehdi:Person {name: 'Mehdi Benkhaled'})
CREATE (rahil)-[:FRIEND_OF]->(mehdi), (mehdi)-[:FRIEND_OF]->(rahil);

MATCH (roea:Person {name: 'Roea Kouidri'}), (yasmine:Person {name: 'Yasmine Messaoudi'})
CREATE (roea)-[:FRIEND_OF]->(yasmine), (yasmine)-[:FRIEND_OF]->(roea);

MATCH (roea:Person {name: 'Roea Kouidri'}), (soraya:Person {name: 'Soraya Taibi'})
CREATE (roea)-[:FRIEND_OF]->(soraya), (soraya)-[:FRIEND_OF]->(roea);

MATCH (mehdi:Person {name: 'Mehdi Benkhaled'}), (soraya:Person {name: 'Soraya Taibi'})
CREATE (mehdi)-[:FRIEND_OF]->(soraya), (soraya)-[:FRIEND_OF]->(mehdi);

MATCH (yasmine:Person {name: 'Yasmine Messaoudi'}), (soraya:Person {name: 'Soraya Taibi'})
CREATE (yasmine)-[:FRIEND_OF]->(soraya), (soraya)-[:FRIEND_OF]->(yasmine);

// Cross-city connection
MATCH (rahil:Person {name: 'Rahil Madoune'}), (karim:Person {name: 'Karim Boudiaf'})
CREATE (rahil)-[:FRIEND_OF]->(karim), (karim)-[:FRIEND_OF]->(rahil);

MATCH (rahil:Person {name: 'Rahil Madoune'}), (youcef:Person {name: 'Youcef Cherif'})
CREATE (rahil)-[:FRIEND_OF]->(youcef), (youcef)-[:FRIEND_OF]->(rahil);

MATCH (roea:Person {name: 'Roea Kouidri'}), (fatima:Person {name: 'Fatima Meziane'})
CREATE (roea)-[:FRIEND_OF]->(fatima), (fatima)-[:FRIEND_OF]->(roea);

MATCH (soraya:Person {name: 'Soraya Taibi'}), (souad:Person {name: 'Souad Messaoudi'})
CREATE (soraya)-[:FRIEND_OF]->(souad), (souad)-[:FRIEND_OF]->(soraya);

MATCH (amina:Person {name: 'Amina Belkacem'}), (karim:Person {name: 'Karim Boudiaf'})
CREATE (amina)-[:FRIEND_OF]->(karim), (karim)-[:FRIEND_OF]->(amina);

MATCH (amina:Person {name: 'Amina Belkacem'}), (omar:Person {name: 'Omar Bensalem'})
CREATE (amina)-[:FRIEND_OF]->(omar), (omar)-[:FRIEND_OF]->(amina);

MATCH (amina:Person {name: 'Amina Belkacem'}), (lina:Person {name: 'Lina Hamidi'})
CREATE (amina)-[:FRIEND_OF]->(lina), (lina)-[:FRIEND_OF]->(amina);

MATCH (karim:Person {name: 'Karim Boudiaf'}), (omar:Person {name: 'Omar Bensalem'})
CREATE (karim)-[:FRIEND_OF]->(omar), (omar)-[:FRIEND_OF]->(karim);

MATCH (karim:Person {name: 'Karim Boudiaf'}), (lina:Person {name: 'Lina Hamidi'})
CREATE (karim)-[:FRIEND_OF]->(lina), (lina)-[:FRIEND_OF]->(karim);

MATCH (lina:Person {name: 'Lina Hamidi'}), (riad:Person {name: 'Riad Belhadj'})
CREATE (lina)-[:FRIEND_OF]->(riad), (riad)-[:FRIEND_OF]->(lina);

MATCH (omar:Person {name: 'Omar Bensalem'}), (fatima:Person {name: 'Fatima Meziane'})
CREATE (omar)-[:FRIEND_OF]->(fatima), (fatima)-[:FRIEND_OF]->(omar);

// Alger professionals
MATCH (nabil:Person {name: 'Nabil Zeroual'}), (samia:Person {name: 'Samia Khaldi'})
CREATE (nabil)-[:FRIEND_OF]->(samia), (samia)-[:FRIEND_OF]->(nabil);

MATCH (nabil:Person {name: 'Nabil Zeroual'}), (riad:Person {name: 'Riad Belhadj'})
CREATE (nabil)-[:FRIEND_OF]->(riad), (riad)-[:FRIEND_OF]->(nabil);

MATCH (samia:Person {name: 'Samia Khaldi'}), (fatima:Person {name: 'Fatima Meziane'})
CREATE (samia)-[:FRIEND_OF]->(fatima), (fatima)-[:FRIEND_OF]->(samia);

// Alger students
MATCH (fatima:Person {name: 'Fatima Meziane'}), (reda:Person {name: 'Reda Mekki'})
CREATE (fatima)-[:FRIEND_OF]->(reda), (reda)-[:FRIEND_OF]->(fatima);

MATCH (fatima:Person {name: 'Fatima Meziane'}), (amir:Person {name: 'Amir Younsi'})
CREATE (fatima)-[:FRIEND_OF]->(amir), (amir)-[:FRIEND_OF]->(fatima);

MATCH (reda:Person {name: 'Reda Mekki'}), (amir:Person {name: 'Amir Younsi'})
CREATE (reda)-[:FRIEND_OF]->(amir), (amir)-[:FRIEND_OF]->(reda);

MATCH (karimB:Person {name: 'Karim Benali'}), (meriem:Person {name: 'Meriem Ould-Ali'})
CREATE (karimB)-[:FRIEND_OF]->(meriem), (meriem)-[:FRIEND_OF]->(karimB);

MATCH (karimB:Person {name: 'Karim Benali'}), (youcef:Person {name: 'Youcef Cherif'})
CREATE (karimB)-[:FRIEND_OF]->(youcef), (youcef)-[:FRIEND_OF]->(karimB);

MATCH (youcef:Person {name: 'Youcef Cherif'}), (hanane:Person {name: 'Hanane Boukhari'})
CREATE (youcef)-[:FRIEND_OF]->(hanane), (hanane)-[:FRIEND_OF]->(youcef);

MATCH (youcef:Person {name: 'Youcef Cherif'}), (sofiane:Person {name: 'Sofiane Mebarki'})
CREATE (youcef)-[:FRIEND_OF]->(sofiane), (sofiane)-[:FRIEND_OF]->(youcef);

MATCH (hanane:Person {name: 'Hanane Boukhari'}), (nesrine:Person {name: 'Nesrine Taleb'})
CREATE (hanane)-[:FRIEND_OF]->(nesrine), (nesrine)-[:FRIEND_OF]->(hanane);

MATCH (meriem:Person {name: 'Meriem Ould-Ali'}), (nesrine:Person {name: 'Nesrine Taleb'})
CREATE (meriem)-[:FRIEND_OF]->(nesrine), (nesrine)-[:FRIEND_OF]->(meriem);

MATCH (sofiane:Person {name: 'Sofiane Mebarki'}), (nawal:Person {name: 'Nawal Bencherif'})
CREATE (sofiane)-[:FRIEND_OF]->(nawal), (nawal)-[:FRIEND_OF]->(sofiane);

MATCH (bilal:Person {name: 'Bilal Hammadi'}), (salma:Person {name: 'Salma Zerrouki'})
CREATE (bilal)-[:FRIEND_OF]->(salma), (salma)-[:FRIEND_OF]->(bilal);

MATCH (bilal:Person {name: 'Bilal Hammadi'}), (imane:Person {name: 'Imane Djilali'})
CREATE (bilal)-[:FRIEND_OF]->(imane), (imane)-[:FRIEND_OF]->(bilal);

MATCH (adel:Person {name: 'Adel Bouazza'}), (salma:Person {name: 'Salma Zerrouki'})
CREATE (adel)-[:FRIEND_OF]->(salma), (salma)-[:FRIEND_OF]->(adel);

MATCH (adel:Person {name: 'Adel Bouazza'}), (raouf:Person {name: 'Raouf Mansouri'})
CREATE (adel)-[:FRIEND_OF]->(raouf), (raouf)-[:FRIEND_OF]->(adel);

MATCH (raouf:Person {name: 'Raouf Mansouri'}), (imane:Person {name: 'Imane Djilali'})
CREATE (raouf)-[:FRIEND_OF]->(imane), (imane)-[:FRIEND_OF]->(raouf);

MATCH (imane:Person {name: 'Imane Djilali'}), (hichem:Person {name: 'Hichem Bouhafs'})
CREATE (imane)-[:FRIEND_OF]->(hichem), (hichem)-[:FRIEND_OF]->(imane);

MATCH (leila:Person {name: 'Leila Sahraoui'}), (amine:Person {name: 'Amine Bouzid'})
CREATE (leila)-[:FRIEND_OF]->(amine), (amine)-[:FRIEND_OF]->(leila);

MATCH (leila:Person {name: 'Leila Sahraoui'}), (fouad:Person {name: 'Fouad Guerroudj'})
CREATE (leila)-[:FRIEND_OF]->(fouad), (fouad)-[:FRIEND_OF]->(leila);

MATCH (amine:Person {name: 'Amine Bouzid'}), (khadija:Person {name: 'Khadija Slimani'})
CREATE (amine)-[:FRIEND_OF]->(khadija), (khadija)-[:FRIEND_OF]->(amine);

MATCH (fouad:Person {name: 'Fouad Guerroudj'}), (khadija:Person {name: 'Khadija Slimani'})
CREATE (fouad)-[:FRIEND_OF]->(khadija), (khadija)-[:FRIEND_OF]->(fouad);


MATCH (sarah:Person {name: 'Sarah Yahiaoui'}), (abdelkader:Person {name: 'Abdelkader Ferhat'})
CREATE (sarah)-[:FRIEND_OF]->(abdelkader), (abdelkader)-[:FRIEND_OF]->(sarah);

MATCH (sarah:Person {name: 'Sarah Yahiaoui'}), (rima:Person {name: 'Rima Bouras'})
CREATE (sarah)-[:FRIEND_OF]->(rima), (rima)-[:FRIEND_OF]->(sarah);

MATCH (rima:Person {name: 'Rima Bouras'}), (walid:Person {name: 'Walid Brahimi'})
CREATE (rima)-[:FRIEND_OF]->(walid), (walid)-[:FRIEND_OF]->(rima);

MATCH (abdelkader:Person {name: 'Abdelkader Ferhat'}), (walid:Person {name: 'Walid Brahimi'})
CREATE (abdelkader)-[:FRIEND_OF]->(walid), (walid)-[:FRIEND_OF]->(abdelkader);


MATCH (dalila:Person {name: 'Dalila Boumediene'}), (hakim:Person {name: 'Hakim Benabdallah'})
CREATE (dalila)-[:FRIEND_OF]->(hakim), (hakim)-[:FRIEND_OF]->(dalila);

MATCH (dalila:Person {name: 'Dalila Boumediene'}), (nawel:Person {name: 'Nawel Tlemcani'})
CREATE (dalila)-[:FRIEND_OF]->(nawel), (nawel)-[:FRIEND_OF]->(dalila);

MATCH (hakim:Person {name: 'Hakim Benabdallah'}), (farid:Person {name: 'Farid Benmoussa'})
CREATE (hakim)-[:FRIEND_OF]->(farid), (farid)-[:FRIEND_OF]->(hakim);

MATCH (nawel:Person {name: 'Nawel Tlemcani'}), (farid:Person {name: 'Farid Benmoussa'})
CREATE (nawel)-[:FRIEND_OF]->(farid), (farid)-[:FRIEND_OF]->(nawel);

MATCH (zineb:Person {name: 'Zineb Bouafia'}), (tarek:Person {name: 'Tarek Messaoud'})
CREATE (zineb)-[:FRIEND_OF]->(tarek), (tarek)-[:FRIEND_OF]->(zineb);

MATCH (zineb:Person {name: 'Zineb Bouafia'}), (amira:Person {name: 'Amira Boumedine'})
CREATE (zineb)-[:FRIEND_OF]->(amira), (amira)-[:FRIEND_OF]->(zineb);

MATCH (tarek:Person {name: 'Tarek Messaoud'}), (amira:Person {name: 'Amira Boumedine'})
CREATE (tarek)-[:FRIEND_OF]->(amira), (amira)-[:FRIEND_OF]->(tarek);

MATCH (mourad:Person {name: 'Mourad Benallal'}), (hafsa:Person {name: 'Hafsa Kaddour'})
CREATE (mourad)-[:FRIEND_OF]->(hafsa), (hafsa)-[:FRIEND_OF]->(mourad);

MATCH (mourad:Person {name: 'Mourad Benallal'}), (yacine:Person {name: 'Yacine Dib'})
CREATE (mourad)-[:FRIEND_OF]->(yacine), (yacine)-[:FRIEND_OF]->(mourad);

MATCH (hafsa:Person {name: 'Hafsa Kaddour'}), (yacine:Person {name: 'Yacine Dib'})
CREATE (hafsa)-[:FRIEND_OF]->(yacine), (yacine)-[:FRIEND_OF]->(hafsa);

MATCH (djamila:Person {name: 'Djamila Toumi'}), (brahim:Person {name: 'Brahim Ait-Ali'})
CREATE (djamila)-[:FRIEND_OF]->(brahim), (brahim)-[:FRIEND_OF]->(djamila);

MATCH (djamila:Person {name: 'Djamila Toumi'}), (malika:Person {name: 'Malika Saadi'})
CREATE (djamila)-[:FRIEND_OF]->(malika), (malika)-[:FRIEND_OF]->(djamila);

MATCH (brahim:Person {name: 'Brahim Ait-Ali'}), (malika:Person {name: 'Malika Saadi'})
CREATE (brahim)-[:FRIEND_OF]->(malika), (malika)-[:FRIEND_OF]->(brahim);

// CROSS-CITY PROFESSIONAL CONNECTIONS

// Software Engineers across cities
MATCH (rahil:Person {name: 'Rahil Madoune'}), (amine:Person {name: 'Amine Bouzid'})
CREATE (rahil)-[:FRIEND_OF]->(amine), (amine)-[:FRIEND_OF]->(rahil);

MATCH (youcef:Person {name: 'Youcef Cherif'}), (omar:Person {name: 'Omar Bensalem'})
CREATE (youcef)-[:FRIEND_OF]->(omar), (omar)-[:FRIEND_OF]->(youcef);

MATCH (amine:Person {name: 'Amine Bouzid'}), (amina:Person {name: 'Amina Belkacem'})
CREATE (amine)-[:FRIEND_OF]->(amina), (amina)-[:FRIEND_OF]->(amine);

// Teachers network
MATCH (soraya:Person {name: 'Soraya Taibi'}), (nesrine:Person {name: 'Nesrine Taleb'})
CREATE (soraya)-[:FRIEND_OF]->(nesrine), (nesrine)-[:FRIEND_OF]->(soraya);

MATCH (dalila:Person {name: 'Dalila Boumediene'}), (amira:Person {name: 'Amira Boumedine'})
CREATE (dalila)-[:FRIEND_OF]->(amira), (amira)-[:FRIEND_OF]->(dalila);

MATCH (malika:Person {name: 'Malika Saadi'}), (nesrine:Person {name: 'Nesrine Taleb'})
CREATE (malika)-[:FRIEND_OF]->(nesrine), (nesrine)-[:FRIEND_OF]->(malika);

// Doctors network
MATCH (samia:Person {name: 'Samia Khaldi'}), (bilal:Person {name: 'Bilal Hammadi'})
CREATE (samia)-[:FRIEND_OF]->(bilal), (bilal)-[:FRIEND_OF]->(samia);

MATCH (bilal:Person {name: 'Bilal Hammadi'}), (hafsa:Person {name: 'Hafsa Kaddour'})
CREATE (bilal)-[:FRIEND_OF]->(hafsa), (hafsa)-[:FRIEND_OF]->(bilal);

// Lawyers network
MATCH (nabil:Person {name: 'Nabil Zeroual'}), (karimB:Person {name: 'Karim Benali'})
CREATE (nabil)-[:FRIEND_OF]->(karimB), (karimB)-[:FRIEND_OF]->(nabil);

MATCH (karimB:Person {name: 'Karim Benali'}), (walid:Person {name: 'Walid Brahimi'})
CREATE (karimB)-[:FRIEND_OF]->(walid), (walid)-[:FRIEND_OF]->(karimB);

// Students network
MATCH (yasmine:Person {name: 'Yasmine Messaoudi'}), (salma:Person {name: 'Salma Zerrouki'})
CREATE (yasmine)-[:FRIEND_OF]->(salma), (salma)-[:FRIEND_OF]->(yasmine);

MATCH (sarah:Person {name: 'Sarah Yahiaoui'}), (nawel:Person {name: 'Nawel Tlemcani'})
CREATE (sarah)-[:FRIEND_OF]->(nawel), (nawel)-[:FRIEND_OF]->(sarah);

MATCH (reda:Person {name: 'Reda Mekki'}), (sarah:Person {name: 'Sarah Yahiaoui'})
CREATE (reda)-[:FRIEND_OF]->(sarah), (sarah)-[:FRIEND_OF]->(reda);


// ADDITIONAL DIVERSE CONNECTIONS

MATCH (lina:Person {name: 'Lina Hamidi'}), (leila:Person {name: 'Leila Sahraoui'})
CREATE (lina)-[:FRIEND_OF]->(leila), (leila)-[:FRIEND_OF]->(lina);

MATCH (raouf:Person {name: 'Raouf Mansouri'}), (amina:Person {name: 'Amina Belkacem'})
CREATE (raouf)-[:FRIEND_OF]->(amina), (amina)-[:FRIEND_OF]->(raouf);

MATCH (hakim:Person {name: 'Hakim Benabdallah'}), (souad:Person {name: 'Souad Messaoudi'})
CREATE (hakim)-[:FRIEND_OF]->(souad), (souad)-[:FRIEND_OF]->(hakim);

MATCH (rima:Person {name: 'Rima Bouras'}), (hanane:Person {name: 'Hanane Boukhari'})
CREATE (rima)-[:FRIEND_OF]->(hanane), (hanane)-[:FRIEND_OF]->(rima);