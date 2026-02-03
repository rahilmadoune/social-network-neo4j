// CREATE FOLLOWS
MATCH (karim:Person {name: 'Karim Boudiaf'}), (amina:Person {name: 'Amina Belkacem'})
CREATE (karim)-[:FOLLOWS]->(amina);

MATCH (omar:Person {name: 'Omar Bensalem'}), (amina:Person {name: 'Amina Belkacem'})
CREATE (omar)-[:FOLLOWS]->(amina);

MATCH (rahil:Person {name: 'Rahil Madoune'}), (amina:Person {name: 'Amina Belkacem'})
CREATE (rahil)-[:FOLLOWS]->(amina);

MATCH (youcef:Person {name: 'Youcef Cherif'}), (amina:Person {name: 'Amina Belkacem'})
CREATE (youcef)-[:FOLLOWS]->(amina);

MATCH (amine:Person {name: 'Amine Bouzid'}), (amina:Person {name: 'Amina Belkacem'})
CREATE (amine)-[:FOLLOWS]->(amina);

MATCH (raouf:Person {name: 'Raouf Mansouri'}), (amina:Person {name: 'Amina Belkacem'})
CREATE (raouf)-[:FOLLOWS]->(amina);

MATCH (fatima:Person {name: 'Fatima Meziane'}), (amina:Person {name: 'Amina Belkacem'})
CREATE (fatima)-[:FOLLOWS]->(amina);

MATCH (lina:Person {name: 'Lina Hamidi'}), (amina:Person {name: 'Amina Belkacem'})
CREATE (lina)-[:FOLLOWS]->(amina);

MATCH (leila:Person {name: 'Leila Sahraoui'}), (amina:Person {name: 'Amina Belkacem'})
CREATE (leila)-[:FOLLOWS]->(amina);

MATCH (hanane:Person {name: 'Hanane Boukhari'}), (amina:Person {name: 'Amina Belkacem'})
CREATE (hanane)-[:FOLLOWS]->(amina);

MATCH (reda:Person {name: 'Reda Mekki'}), (amina:Person {name: 'Amina Belkacem'})
CREATE (reda)-[:FOLLOWS]->(amina);

MATCH (amir:Person {name: 'Amir Younsi'}), (amina:Person {name: 'Amina Belkacem'})
CREATE (amir)-[:FOLLOWS]->(amina);

MATCH (salma:Person {name: 'Salma Zerrouki'}), (amina:Person {name: 'Amina Belkacem'})
CREATE (salma)-[:FOLLOWS]->(amina);

MATCH (sarah:Person {name: 'Sarah Yahiaoui'}), (amina:Person {name: 'Amina Belkacem'})
CREATE (sarah)-[:FOLLOWS]->(amina);

MATCH (roea:Person {name: 'Roea Kouidri'}), (amina:Person {name: 'Amina Belkacem'})
CREATE (roea)-[:FOLLOWS]->(amina);

MATCH (karimB:Person {name: 'Karim Benali'}), (sofiane:Person {name: 'Sofiane Mebarki'})
CREATE (karimB)-[:FOLLOWS]->(sofiane);

MATCH (lina:Person {name: 'Lina Hamidi'}), (sofiane:Person {name: 'Sofiane Mebarki'})
CREATE (lina)-[:FOLLOWS]->(sofiane);

MATCH (nabil:Person {name: 'Nabil Zeroual'}), (sofiane:Person {name: 'Sofiane Mebarki'})
CREATE (nabil)-[:FOLLOWS]->(sofiane);

MATCH (riad:Person {name: 'Riad Belhadj'}), (sofiane:Person {name: 'Sofiane Mebarki'})
CREATE (riad)-[:FOLLOWS]->(sofiane);

MATCH (leila:Person {name: 'Leila Sahraoui'}), (sofiane:Person {name: 'Sofiane Mebarki'})
CREATE (leila)-[:FOLLOWS]->(sofiane);

MATCH (walid:Person {name: 'Walid Brahimi'}), (sofiane:Person {name: 'Sofiane Mebarki'})
CREATE (walid)-[:FOLLOWS]->(sofiane);

MATCH (abdelkader:Person {name: 'Abdelkader Ferhat'}), (sofiane:Person {name: 'Sofiane Mebarki'})
CREATE (abdelkader)-[:FOLLOWS]->(sofiane);

MATCH (youcef:Person {name: 'Youcef Cherif'}), (sofiane:Person {name: 'Sofiane Mebarki'})
CREATE (youcef)-[:FOLLOWS]->(sofiane);

MATCH (fouad:Person {name: 'Fouad Guerroudj'}), (sofiane:Person {name: 'Sofiane Mebarki'})
CREATE (fouad)-[:FOLLOWS]->(sofiane);

MATCH (rima:Person {name: 'Rima Bouras'}), (sofiane:Person {name: 'Sofiane Mebarki'})
CREATE (rima)-[:FOLLOWS]->(sofiane);

MATCH (zineb:Person {name: 'Zineb Bouafia'}), (sofiane:Person {name: 'Sofiane Mebarki'})
CREATE (zineb)-[:FOLLOWS]->(sofiane);

MATCH (salma:Person {name: 'Salma Zerrouki'}), (adel:Person {name: 'Adel Bouazza'})
CREATE (salma)-[:FOLLOWS]->(adel);

MATCH (fatima:Person {name: 'Fatima Meziane'}), (adel:Person {name: 'Adel Bouazza'})
CREATE (fatima)-[:FOLLOWS]->(adel);

MATCH (roea:Person {name: 'Roea Kouidri'}), (adel:Person {name: 'Adel Bouazza'})
CREATE (roea)-[:FOLLOWS]->(adel);

MATCH (yasmine:Person {name: 'Yasmine Messaoudi'}), (adel:Person {name: 'Adel Bouazza'})
CREATE (yasmine)-[:FOLLOWS]->(adel);

MATCH (reda:Person {name: 'Reda Mekki'}), (adel:Person {name: 'Adel Bouazza'})
CREATE (reda)-[:FOLLOWS]->(adel);

MATCH (amir:Person {name: 'Amir Younsi'}), (adel:Person {name: 'Adel Bouazza'})
CREATE (amir)-[:FOLLOWS]->(adel);

MATCH (sarah:Person {name: 'Sarah Yahiaoui'}), (adel:Person {name: 'Adel Bouazza'})
CREATE (sarah)-[:FOLLOWS]->(adel);

MATCH (nawel:Person {name: 'Nawel Tlemcani'}), (adel:Person {name: 'Adel Bouazza'})
CREATE (nawel)-[:FOLLOWS]->(adel);

MATCH (raouf:Person {name: 'Raouf Mansouri'}), (adel:Person {name: 'Adel Bouazza'})
CREATE (raouf)-[:FOLLOWS]->(adel);

MATCH (rima:Person {name: 'Rima Bouras'}), (adel:Person {name: 'Adel Bouazza'})
CREATE (rima)-[:FOLLOWS]->(adel);

MATCH (rahil:Person {name: 'Rahil Madoune'}), (karim:Person {name: 'Karim Boudiaf'})
CREATE (rahil)-[:FOLLOWS]->(karim);

MATCH (rahil:Person {name: 'Rahil Madoune'}), (omar:Person {name: 'Omar Bensalem'})
CREATE (rahil)-[:FOLLOWS]->(omar);

MATCH (rahil:Person {name: 'Rahil Madoune'}), (youcef:Person {name: 'Youcef Cherif'})
CREATE (rahil)-[:FOLLOWS]->(youcef);

MATCH (rahil:Person {name: 'Rahil Madoune'}), (amine:Person {name: 'Amine Bouzid'})
CREATE (rahil)-[:FOLLOWS]->(amine);

MATCH (rahil:Person {name: 'Rahil Madoune'}), (lina:Person {name: 'Lina Hamidi'})
CREATE (rahil)-[:FOLLOWS]->(lina);

MATCH (rahil:Person {name: 'Rahil Madoune'}), (raouf:Person {name: 'Raouf Mansouri'})
CREATE (rahil)-[:FOLLOWS]->(raouf);

MATCH (rahil:Person {name: 'Rahil Madoune'}), (sofiane:Person {name: 'Sofiane Mebarki'})
CREATE (rahil)-[:FOLLOWS]->(sofiane);

MATCH (rahil:Person {name: 'Rahil Madoune'}), (adel:Person {name: 'Adel Bouazza'})
CREATE (rahil)-[:FOLLOWS]->(adel);

MATCH (rahil:Person {name: 'Rahil Madoune'}), (roea:Person {name: 'Roea Kouidri'})
CREATE (rahil)-[:FOLLOWS]->(roea);

MATCH (rahil:Person {name: 'Rahil Madoune'}), (mehdi:Person {name: 'Mehdi Benkhaled'})
CREATE (rahil)-[:FOLLOWS]->(mehdi);

MATCH (amina:Person {name: 'Amina Belkacem'}), (rahil:Person {name: 'Rahil Madoune'})
CREATE (amina)-[:FOLLOWS]->(rahil);

MATCH (karim:Person {name: 'Karim Boudiaf'}), (rahil:Person {name: 'Rahil Madoune'})
CREATE (karim)-[:FOLLOWS]->(rahil);

MATCH (youcef:Person {name: 'Youcef Cherif'}), (rahil:Person {name: 'Rahil Madoune'})
CREATE (youcef)-[:FOLLOWS]->(rahil);

MATCH (roea:Person {name: 'Roea Kouidri'}), (rahil:Person {name: 'Rahil Madoune'})
CREATE (roea)-[:FOLLOWS]->(rahil);

MATCH (yasmine:Person {name: 'Yasmine Messaoudi'}), (rahil:Person {name: 'Rahil Madoune'})
CREATE (yasmine)-[:FOLLOWS]->(rahil);

MATCH (mehdi:Person {name: 'Mehdi Benkhaled'}), (rahil:Person {name: 'Rahil Madoune'})
CREATE (mehdi)-[:FOLLOWS]->(rahil);

MATCH (fatima:Person {name: 'Fatima Meziane'}), (rahil:Person {name: 'Rahil Madoune'})
CREATE (fatima)-[:FOLLOWS]->(rahil);

MATCH (roea:Person {name: 'Roea Kouidri'}), (fatima:Person {name: 'Fatima Meziane'})
CREATE (roea)-[:FOLLOWS]->(fatima);

MATCH (roea:Person {name: 'Roea Kouidri'}), (yasmine:Person {name: 'Yasmine Messaoudi'})
CREATE (roea)-[:FOLLOWS]->(yasmine);

MATCH (roea:Person {name: 'Roea Kouidri'}), (salma:Person {name: 'Salma Zerrouki'})
CREATE (roea)-[:FOLLOWS]->(salma);

MATCH (roea:Person {name: 'Roea Kouidri'}), (sarah:Person {name: 'Sarah Yahiaoui'})
CREATE (roea)-[:FOLLOWS]->(sarah);

MATCH (roea:Person {name: 'Roea Kouidri'}), (soraya:Person {name: 'Soraya Taibi'})
CREATE (roea)-[:FOLLOWS]->(soraya);

MATCH (roea:Person {name: 'Roea Kouidri'}), (karim:Person {name: 'Karim Boudiaf'})
CREATE (roea)-[:FOLLOWS]->(karim);

MATCH (roea:Person {name: 'Roea Kouidri'}), (lina:Person {name: 'Lina Hamidi'})
CREATE (roea)-[:FOLLOWS]->(lina);

MATCH (roea:Person {name: 'Roea Kouidri'}), (sofiane:Person {name: 'Sofiane Mebarki'})
CREATE (roea)-[:FOLLOWS]->(sofiane);

MATCH (karim:Person {name: 'Karim Boudiaf'}), (omar:Person {name: 'Omar Bensalem'})
CREATE (karim)-[:FOLLOWS]->(omar);

MATCH (omar:Person {name: 'Omar Bensalem'}), (karim:Person {name: 'Karim Boudiaf'})
CREATE (omar)-[:FOLLOWS]->(karim);

MATCH (karim:Person {name: 'Karim Boudiaf'}), (youcef:Person {name: 'Youcef Cherif'})
CREATE (karim)-[:FOLLOWS]->(youcef);

MATCH (youcef:Person {name: 'Youcef Cherif'}), (omar:Person {name: 'Omar Bensalem'})
CREATE (youcef)-[:FOLLOWS]->(omar);

MATCH (amine:Person {name: 'Amine Bouzid'}), (karim:Person {name: 'Karim Boudiaf'})
CREATE (amine)-[:FOLLOWS]->(karim);

MATCH (amine:Person {name: 'Amine Bouzid'}), (youcef:Person {name: 'Youcef Cherif'})
CREATE (amine)-[:FOLLOWS]->(youcef);

MATCH (omar:Person {name: 'Omar Bensalem'}), (amine:Person {name: 'Amine Bouzid'})
CREATE (omar)-[:FOLLOWS]->(amine);

MATCH (fatima:Person {name: 'Fatima Meziane'}), (reda:Person {name: 'Reda Mekki'})
CREATE (fatima)-[:FOLLOWS]->(reda);

MATCH (reda:Person {name: 'Reda Mekki'}), (fatima:Person {name: 'Fatima Meziane'})
CREATE (reda)-[:FOLLOWS]->(fatima);

MATCH (fatima:Person {name: 'Fatima Meziane'}), (amir:Person {name: 'Amir Younsi'})
CREATE (fatima)-[:FOLLOWS]->(amir);

MATCH (amir:Person {name: 'Amir Younsi'}), (reda:Person {name: 'Reda Mekki'})
CREATE (amir)-[:FOLLOWS]->(reda);

MATCH (yasmine:Person {name: 'Yasmine Messaoudi'}), (salma:Person {name: 'Salma Zerrouki'})
CREATE (yasmine)-[:FOLLOWS]->(salma);

MATCH (salma:Person {name: 'Salma Zerrouki'}), (yasmine:Person {name: 'Yasmine Messaoudi'})
CREATE (salma)-[:FOLLOWS]->(yasmine);

MATCH (sarah:Person {name: 'Sarah Yahiaoui'}), (yasmine:Person {name: 'Yasmine Messaoudi'})
CREATE (sarah)-[:FOLLOWS]->(yasmine);

MATCH (sarah:Person {name: 'Sarah Yahiaoui'}), (nawel:Person {name: 'Nawel Tlemcani'})
CREATE (sarah)-[:FOLLOWS]->(nawel);

MATCH (nawel:Person {name: 'Nawel Tlemcani'}), (sarah:Person {name: 'Sarah Yahiaoui'})
CREATE (nawel)-[:FOLLOWS]->(sarah);

MATCH (samia:Person {name: 'Samia Khaldi'}), (bilal:Person {name: 'Bilal Hammadi'})
CREATE (samia)-[:FOLLOWS]->(bilal);

MATCH (bilal:Person {name: 'Bilal Hammadi'}), (samia:Person {name: 'Samia Khaldi'})
CREATE (bilal)-[:FOLLOWS]->(samia);

MATCH (hafsa:Person {name: 'Hafsa Kaddour'}), (samia:Person {name: 'Samia Khaldi'})
CREATE (hafsa)-[:FOLLOWS]->(samia);

MATCH (hafsa:Person {name: 'Hafsa Kaddour'}), (bilal:Person {name: 'Bilal Hammadi'})
CREATE (hafsa)-[:FOLLOWS]->(bilal);

MATCH (imane:Person {name: 'Imane Djilali'}), (samia:Person {name: 'Samia Khaldi'})
CREATE (imane)-[:FOLLOWS]->(samia);

MATCH (imane:Person {name: 'Imane Djilali'}), (bilal:Person {name: 'Bilal Hammadi'})
CREATE (imane)-[:FOLLOWS]->(bilal);

MATCH (hakim:Person {name: 'Hakim Benabdallah'}), (samia:Person {name: 'Samia Khaldi'})
CREATE (hakim)-[:FOLLOWS]->(samia);

MATCH (nabil:Person {name: 'Nabil Zeroual'}), (karimB:Person {name: 'Karim Benali'})
CREATE (nabil)-[:FOLLOWS]->(karimB);

MATCH (karimB:Person {name: 'Karim Benali'}), (nabil:Person {name: 'Nabil Zeroual'})
CREATE (karimB)-[:FOLLOWS]->(nabil);

MATCH (walid:Person {name: 'Walid Brahimi'}), (nabil:Person {name: 'Nabil Zeroual'})
CREATE (walid)-[:FOLLOWS]->(nabil);

MATCH (walid:Person {name: 'Walid Brahimi'}), (karimB:Person {name: 'Karim Benali'})
CREATE (walid)-[:FOLLOWS]->(karimB);

MATCH (karimB:Person {name: 'Karim Benali'}), (walid:Person {name: 'Walid Brahimi'})
CREATE (karimB)-[:FOLLOWS]->(walid);

MATCH (soraya:Person {name: 'Soraya Taibi'}), (nesrine:Person {name: 'Nesrine Taleb'})
CREATE (soraya)-[:FOLLOWS]->(nesrine);

MATCH (nesrine:Person {name: 'Nesrine Taleb'}), (soraya:Person {name: 'Soraya Taibi'})
CREATE (nesrine)-[:FOLLOWS]->(soraya);

MATCH (dalila:Person {name: 'Dalila Boumediene'}), (soraya:Person {name: 'Soraya Taibi'})
CREATE (dalila)-[:FOLLOWS]->(soraya);

MATCH (amira:Person {name: 'Amira Boumedine'}), (nesrine:Person {name: 'Nesrine Taleb'})
CREATE (amira)-[:FOLLOWS]->(nesrine);

MATCH (malika:Person {name: 'Malika Saadi'}), (dalila:Person {name: 'Dalila Boumediene'})
CREATE (malika)-[:FOLLOWS]->(dalila);

MATCH (khadija:Person {name: 'Khadija Slimani'}), (soraya:Person {name: 'Soraya Taibi'})
CREATE (khadija)-[:FOLLOWS]->(soraya);

MATCH (hanane:Person {name: 'Hanane Boukhari'}), (lina:Person {name: 'Lina Hamidi'})
CREATE (hanane)-[:FOLLOWS]->(lina);

MATCH (lina:Person {name: 'Lina Hamidi'}), (hanane:Person {name: 'Hanane Boukhari'})
CREATE (lina)-[:FOLLOWS]->(hanane);

MATCH (rima:Person {name: 'Rima Bouras'}), (hanane:Person {name: 'Hanane Boukhari'})
CREATE (rima)-[:FOLLOWS]->(hanane);

MATCH (hanane:Person {name: 'Hanane Boukhari'}), (leila:Person {name: 'Leila Sahraoui'})
CREATE (hanane)-[:FOLLOWS]->(leila);

MATCH (lina:Person {name: 'Lina Hamidi'}), (karim:Person {name: 'Karim Boudiaf'})
CREATE (lina)-[:FOLLOWS]->(karim);

MATCH (lina:Person {name: 'Lina Hamidi'}), (raouf:Person {name: 'Raouf Mansouri'})
CREATE (lina)-[:FOLLOWS]->(raouf);

MATCH (leila:Person {name: 'Leila Sahraoui'}), (karim:Person {name: 'Karim Boudiaf'})
CREATE (leila)-[:FOLLOWS]->(karim);

MATCH (riad:Person {name: 'Riad Belhadj'}), (mehdi:Person {name: 'Mehdi Benkhaled'})
CREATE (riad)-[:FOLLOWS]->(mehdi);

MATCH (fouad:Person {name: 'Fouad Guerroudj'}), (mehdi:Person {name: 'Mehdi Benkhaled'})
CREATE (fouad)-[:FOLLOWS]->(mehdi);

MATCH (zineb:Person {name: 'Zineb Bouafia'}), (tarek:Person {name: 'Tarek Messaoud'})
CREATE (zineb)-[:FOLLOWS]->(tarek);

MATCH (tarek:Person {name: 'Tarek Messaoud'}), (zineb:Person {name: 'Zineb Bouafia'})
CREATE (tarek)-[:FOLLOWS]->(zineb);

MATCH (meriem:Person {name: 'Meriem Ould-Ali'}), (samia:Person {name: 'Samia Khaldi'})
CREATE (meriem)-[:FOLLOWS]->(samia);

MATCH (meriem:Person {name: 'Meriem Ould-Ali'}), (hakim:Person {name: 'Hakim Benabdallah'})
CREATE (meriem)-[:FOLLOWS]->(hakim);

MATCH (raouf:Person {name: 'Raouf Mansouri'}), (karim:Person {name: 'Karim Boudiaf'})
CREATE (raouf)-[:FOLLOWS]->(karim);

MATCH (riad:Person {name: 'Riad Belhadj'}), (youcef:Person {name: 'Youcef Cherif'})
CREATE (riad)-[:FOLLOWS]->(youcef);

MATCH (abdelkader:Person {name: 'Abdelkader Ferhat'}), (nabil:Person {name: 'Nabil Zeroual'})
CREATE (abdelkader)-[:FOLLOWS]->(nabil);

MATCH (farid:Person {name: 'Farid Benmoussa'}), (sofiane:Person {name: 'Sofiane Mebarki'})
CREATE (farid)-[:FOLLOWS]->(sofiane);

MATCH (mourad:Person {name: 'Mourad Benallal'}), (abdelkader:Person {name: 'Abdelkader Ferhat'})
CREATE (mourad)-[:FOLLOWS]->(abdelkader);

MATCH (yacine:Person {name: 'Yacine Dib'}), (tarek:Person {name: 'Tarek Messaoud'})
CREATE (yacine)-[:FOLLOWS]->(tarek);

MATCH (brahim:Person {name: 'Brahim Ait-Ali'}), (sofiane:Person {name: 'Sofiane Mebarki'})
CREATE (brahim)-[:FOLLOWS]->(sofiane);

MATCH (souad:Person {name: 'Souad Messaoudi'}), (meriem:Person {name: 'Meriem Ould-Ali'})
CREATE (souad)-[:FOLLOWS]->(meriem);

MATCH (nawal:Person {name: 'Nawal Bencherif'}), (khadija:Person {name: 'Khadija Slimani'})
CREATE (nawal)-[:FOLLOWS]->(khadija);

MATCH (hichem:Person {name: 'Hichem Bouhafs'}), (karim:Person {name: 'Karim Boudiaf'})
CREATE (hichem)-[:FOLLOWS]->(karim);

MATCH (hichem:Person {name: 'Hichem Bouhafs'}), (amina:Person {name: 'Amina Belkacem'})
CREATE (hichem)-[:FOLLOWS]->(amina);

MATCH (reda:Person {name: 'Reda Mekki'}), (karim:Person {name: 'Karim Boudiaf'})
CREATE (reda)-[:FOLLOWS]->(karim);

MATCH (amir:Person {name: 'Amir Younsi'}), (lina:Person {name: 'Lina Hamidi'})
CREATE (amir)-[:FOLLOWS]->(lina);

MATCH (meriem:Person {name: 'Meriem Ould-Ali'}), (youcef:Person {name: 'Youcef Cherif'})
CREATE (meriem)-[:FOLLOWS]->(youcef);

MATCH (nesrine:Person {name: 'Nesrine Taleb'}), (karimB:Person {name: 'Karim Benali'})
CREATE (nesrine)-[:FOLLOWS]->(karimB);

MATCH (salma:Person {name: 'Salma Zerrouki'}), (raouf:Person {name: 'Raouf Mansouri'})
CREATE (salma)-[:FOLLOWS]->(raouf);

MATCH (imane:Person {name: 'Imane Djilali'}), (adel:Person {name: 'Adel Bouazza'})
CREATE (imane)-[:FOLLOWS]->(adel);
