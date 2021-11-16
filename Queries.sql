.headers ON
--Q1 Display all Super AGL Types
--SELECT Title, Character
--FROM dbz
--WHERE Type = 'Super AGL';

--Q2 Display All Units that contain Goku in the name
--SELECT Title, Character
--FROM dbz
--WHERE Character LIKE '%Goku%';

--Q3 Display Super Attacks that lowers ATK
--SELECT Title,Character
--FROM dbz
--WHERE SuperAttackEffect LIKE '%lowers ATK%';

--Q4 Display Units with Attack greater than 17000
--SELECT Character
--FROM dbz
--WHERE Attack > 17000;

--Q5 Display Units with Sworn Enemies Catagories
--SELECT Title, Character
--FROM dbz
--WHERE Categories LIKE '%Sworn Enemies%';

--Q6 Display AVG EZA ATTACK for EZA units
--SELECT Title, Character, AVG(EZAAttack)
--FROM dbz;

--Q7 Insert unit into Team
--INSERT into Team
--VALUES ('Mystery Super Technique', 'Super Saiyan 3 Goku', '120/140', 15 , 'UR', 'Super AGL',1321); 

--Q8 Update Unit to show you change in lvl for that unit on the team
--UPDATE Team
--SET MaxLevel = '140/140'
--WHERE Id = 1321;

--Q9 Delete Unit to remove it from the Team
--DELETE 
--FROM Team
--WHERE Id = 1321;

--Q10 Display Units that have a Transformation type of Fusion
--SELECT Title, Character
--FROM dbz
--WHERE TransformationType LIKE '%Fusion%';

--Q11 Display Count of Units
--SELECT COUNT(Character) as Units_With_Name_Goku
--FROM dbz
--WHERE Character LIKE '%Goku%';

--Q12 Display Units with Super AGL and thier Leader Skills
--SELECT Title,Character,LeaderSkill
--FROM dbz
--WHERE SALevel = '20/20'
--AND Type = 'Super AGL';

--Q13 Display All Passive skills that increase KI Sidenote Database from kaggle includes images to what ki they increase hence the Large amount of Links in the output
--SELECT Title,Character, PassiveSkill
--FROM dbz
--WHERE PassiveSkill LIKE '%Ki +%';

--Q14 Display Amount Of Lr rarities in the database
--SELECT COUNT(Rarity) as Total_LR
--FROM dbz
--WHERE Rarity = 'LR';

--Q15 Display Amount of Types for each Unique Type
--SELECT Count(Character), Type
--FROM dbz
--GROUP BY Type;

--Q16 Display Units Who are of type Extreme INT and have SA Level 10/10 in Alphabetical Order
--SELECT DISTINCT dbz.Title,dbz.Character
--FROM dbz, (SELECT DISTINCT dbz.Title,dbz.Character
--            FROM dbz
--            WHERE Type = 'Extreme INT')
--            WHERE SALevel = '10/10';

--Q17 When users leave thier comments on team they made for teams
--INSERT 
--INTO Users (UserId,UserName,UserComment)
--VALUES ('?','?','?');

--Q18 Display All Characters
--SELECT DISTINCT character
--FROM dbz;

--Q19 Display All Units Who Have a Transformation
--SELECT DISTINCT Title,Character,Rarity,Id
--FROM dbz
--WHERE Id > 40000;

--Q20 Display All Different Transformatin Types
--SELECT DISTINCT TransformationType
--FROM dbz;