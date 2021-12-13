.headers ON
--Q1 Display all Super AGL Types
-- SELECT Title, Character, Type
-- FROM DokkanCards
-- WHERE Type = 'Super AGL';

--Q2 Creates new team row
-- INSERT INTO TeamData (UnitTitle, UnitCharacter,UnitType ,UnitCatagories, UnitID)
-- SELECT Title,Character, Type, Categories, ID
-- FROM DokkanCards
-- WHERE ID = user input
-- LIMIT 1;

-- UPDATE TeamData
-- SET (UnitTitle2, UnitCharacter2,UnitType2 ,UnitCatagories2, UnitID2) = (
-- SELECT Title,Character, Type, Categories, ID
-- FROM DokkanCards
-- WHERE ID = userinput)
-- WHERE TeamID = the team that was recently created;

-- UPDATE TeamData
-- SET (UnitTitle3, UnitCharacter3,UnitType3 ,UnitCatagories3, UnitID3) = (
-- SELECT Title,Character, Type, Categories, ID
-- FROM DokkanCards
-- WHERE ID = user input)
-- WHERE TeamID = the team that was recently created;

-- UPDATE TeamData
-- SET (UnitTitle4, UnitCharacter4,UnitType4 ,UnitCatagories4, UnitID4) = (
-- SELECT Title,Character, Type, Categories, ID
-- FROM DokkanCards
-- WHERE ID = User input)
-- WHERE TeamID = the team that was recently created;

-- UPDATE TeamData
-- SET (UnitTitle5, UnitCharacter5,UnitType5 ,UnitCatagories5, UnitID5) = (
-- SELECT Title,Character, Type, Categories, ID
-- FROM DokkanCards
-- WHERE ID = User Input)
-- WHERE TeamID = where team was recently created;

-- UPDATE TeamData
-- SET (UnitTitle6, UnitCharacter6,UnitType6 ,UnitCatagories6, UnitID6) = (
-- SELECT Title,Character, Type, Categories, ID
-- FROM DokkanCards
-- WHERE ID = User input)
-- WHERE TeamID = team recently created;


--Q3 Creates Team of random units within specific catagories

--Must Insert First then update the row with other units
-- INSERT INTO TeamData (UnitTitle, UnitCharacter,UnitType ,UnitCatagories, UnitID)
-- SELECT Title,Character, Type, Categories, ID
-- FROM DokkanCards
-- WHERE ID = 1331;

-- UPDATE TeamData
-- SET (UnitTitle2, UnitCharacter2,UnitType2 ,UnitCatagories2, UnitID2) = (
-- SELECT Title,Character, Type, Categories, ID
-- FROM DokkanCards
-- WHERE Categories LIKE '%Youth%'
-- ORDER BY RANDOM()
-- LIMIT 1)
-- WHERE TeamID = 4;

-- UPDATE TeamData
-- SET (UnitTitle3, UnitCharacter3,UnitType3 ,UnitCatagories3, UnitID3) = (
-- SELECT Title,Character, Type, Categories, ID
-- FROM DokkanCards
-- WHERE Categories LIKE '%Youth%'
-- ORDER BY RANDOM()
-- LIMIT 1)
-- WHERE TeamID = 4;

-- UPDATE TeamData
-- SET (UnitTitle4, UnitCharacter4,UnitType4 ,UnitCatagories4, UnitID4) = (
-- SELECT Title,Character, Type, Categories, ID
-- FROM DokkanCards
-- WHERE Categories LIKE '%Youth%'
-- ORDER BY RANDOM()
-- LIMIT 1)
-- WHERE TeamID = 4;

-- UPDATE TeamData
-- SET (UnitTitle5, UnitCharacter5,UnitType5 ,UnitCatagories5, UnitID5) = (
-- SELECT Title,Character, Type, Categories, ID
-- FROM DokkanCards
-- WHERE Categories LIKE '%Youth%'
-- ORDER BY RANDOM()
-- LIMIT 1)
-- WHERE TeamID = 4;

-- UPDATE TeamData
-- SET (UnitTitle6, UnitCharacter6,UnitType6 ,UnitCatagories6, UnitID6) = (
-- SELECT Title,Character, Type, Categories, ID
-- FROM DokkanCards
-- WHERE Categories LIKE '%Youth%'
-- ORDER BY RANDOM()
-- LIMIT 1)
-- WHERE TeamID = 4;
-- LIMIT 6;

--Q4 Completely Drops data from all 3 teams
-- Delete from TeamData
-- WHERE TeamID = the user input for which team he wants to delete;


--Q5 Updates password for user
-- UPDATE Users
-- set UserPassword = 12468                                 
-- where UserID = 1;

--Q6 Displays the Charcters ID from specific team
-- SELECT ID
-- FROM TeamData
-- WHERE TeamID = the specific team id to display the characters ID's;

--Q7 Select Post using the Username from Users
-- SELECT P_UserName
-- FROM Posts,Users
-- WHERE Users.UserName = Posts.P_UserName;

--Q8 Display How many Likes A user got on his comment
-- SELECT UserName, c_Comment, CommentLikes
-- FROM Comment_Likes,Comments,Users
-- WHERE commentLikesComment_ID = comment_ID
-- AND c_UserName = UserName;

--Q9 Total Units whos type are Extreme AGL and Extreme INT
-- select count(type) as 'Extreme AGL/INT'
-- from DokkanCards
-- where Type = 'Extreme AGL'
-- or Type = 'Extreme INT';

--Q10 Total HP, Attack, and Defense from Team specified
-- select sum(HP) as 'Total HP', sum(Attack) as 'Total Attack', sum(Defense) as 'Total Defense'
-- from TeamData, DokkanCards
-- where TeamData.UnitTitle = DokkanCards.Title 
-- OR TeamData.UnitTitle2 = DokkanCards.Title 
-- OR TeamData.UnitTitle3 = DokkanCards.Title 
-- OR TeamData.UnitTitle4 = DokkanCards.Title 
-- OR TeamData.UnitTitle5 = DokkanCards.Title 
-- OR TeamData.UnitTitle6 = DokkanCards.Title
-- and TeamData.UnitID = DokkanCards.Character
-- OR TeamData.UnitID2 = DokkanCards.Character
-- OR TeamData.UnitID3 = DokkanCards.Character
-- OR TeamData.UnitID4 = DokkanCards.Character
-- OR TeamData.UnitID5 = DokkanCards.Character
-- OR TeamData.UnitID6 = DokkanCards.Character
-- AND TeamID = 4;


--Q11 Unit With Highest EZA Attack
-- SELECT Title,Character,MAX(EZAAttack)
-- FROM DokkanCards
-- WHERE EZAAttack != '';

--Q12 Find Average Attack across all characters
-- select avg(Attack)
-- from DokkanCards;

--Q13 List of Catagories from a Users Team
-- select DISTINCT UnitCatagories,UnitCatagories2,UnitCatagories3,UnitCatagories4,UnitCatagories5,UnitCatagories6
-- from TeamData
-- where TeamId = 1;

--Q14 Bring up Most Liked Comment
-- SELECT UserName, c_Comment, MAX(CommentLikes)
-- FROM Comment_Likes,Comments,Users
-- WHERE commentLikesComment_ID = comment_ID
-- AND c_UserName = UserName;

--Q15 Display Units that have a Transformation type of Fusion
-- SELECT Title, Character, TransformationType
-- FROM DokkanCards
-- WHERE TransformationType LIKE '%Fusion%';

--Q16 Displays Count of Units with Type Extreme AGL who have the Link Fierce Battle
-- SELECT COUNT(Character) as 'Units With Fierce Battle Link and Type Extreme AGL'
-- FROM DokkanCards
-- WHERE Type = 'Extreme AGL'
-- AND Links LIKE '%Fierce Battle%';

--Q17 Display Units who have an EZA Super Attack and the Name of the EZA Super Attack
-- select distinct Title, Character, EZASuperAttackName
-- from DokkanCards
-- WHERE EZASuperAttackName != ''
-- group by EZASuperAttackName;

--Q18 Display Count of Followers For User
-- SELECT F_UserName as User,F_follower as Followers
-- FROM Followers;

--Q19 Display all UserNames who Follow a User
-- SELECT F_UserName as Followers
-- FROM Users,Followers
-- WHERE F_UserName != UserName
-- AND UserName = 'Soul091';

--Q20 Display the comment the user liked and the post ID the user Liked
-- SELECT Likes.commentLikes_UserName AS User, c_Comment AS 'Comment Liked', P_ID AS 'Post Liked'
-- FROM Posts,Likes,Comment_Likes,Comments
-- WHERE Likes.commentLikes_UserName = 'Soul091'
-- AND Likes.commentLikes_ID = Comments.comment_ID
-- AND Likes.PostID = Posts.P_ID
-- LIMIT 1;

--Q21 Display All characters who have Special Skill that Stacks Attacks
-- SELECT Title,Character
-- FROM DokkanCards
-- WHERE SpecialSkill LIKE '%Stack Attack%';

--Q22 Display Characters whos HP Is >12500 and <12500 using Case
-- SELECT Title,Character,HP
-- FROM DokkanCards
-- WHERE Type = 'Super AGL' 
-- ORDER BY(
-- CASE
--     WHEN HP > 12500 THEN 'HP is Greater than 12500'
--     WHEN HP < 12500 THEN 'HP is Less than 12500'
-- END)ASC;

-- --Q23 Display Units with Defense Between 12500 and 15000
-- SELECT Title,Character,Defense
-- FROM DokkanCards
-- WHERE Defense BETWEEN 12500 AND 15000;