.headers ON
--Q1 Display all Super AGL Types
-- SELECT Title, Character, Type
-- FROM DokkanCards
-- WHERE Type = 'Super AGL';

--Q2 Creates new team tables
-- Create Table Team2(
--     Title varchar(117),
--     Characters varchar(117),
--     Categories varchar(117),
--     Links varchar(117),
--     Type varchar(117)
-- );
-- Create Table Team3(
-- --     Title varchar(117),
-- --     Characters varchar(117),
-- --     Categories varchar(117),
-- --     Links varchar(117),
-- --     Type varchar(117)
-- -- );

--Q3 Insert data into Team 1, Team2, and Team3
-- INSERT INTO Team1 (Title, Characters,Categories, Links, Type)
-- SELECT Title,Character,Categories, Links, Type
-- FROM DokkanCards
-- WHERE Categories LIKE '%Super Saiyan%'
-- ORDER BY RANDOM()
-- LIMIT 6;

-- INSERT INTO Team2 (Title, Characters,Categories, Links, Type)
-- SELECT Title,Character,Categories, Links, Type
-- FROM DokkanCards
-- WHERE Categories LIKE '%Future Saga%'
-- ORDER BY RANDOM()
-- LIMIT 6;

-- INSERT INTO Team3 (Title, Characters,Categories, Links, Type)
-- Select Title, Character, Categories, Links, Type
-- from DokkanCards
-- Where Categories like '%Android%'
-- ORDER BY RANDOM()
-- LIMIT 6;

--Q4 Completely Drops data from all 3 teams
-- Delete from Team1;

-- Delete from Team2;

-- Delete from Team3;

--Q5 Updates password for user
-- UPDATE Users
-- set UserPassword = 12468                                 
-- where UserID = 1;

--Q6 Displays the Charcters ID from Team3
-- SELECT Characters, ID
-- FROM DokkanCards,Team3
-- WHERE Team3.Title = DokkanCards.Title
-- and Team3.Characters = DokkanCards.Character;

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

--Q10 Total HP, Attack, and Defense from Team3
-- select sum(HP) as 'Total HP', sum(Attack) as 'Total Attack', sum(Defense) as 'Total Defense'
-- from Team3, DokkanCards
-- where Team3.Title = DokkanCards.Title
-- and Team3.Characters = DokkanCards.Character;


--Q11 Unit With Highest EZA Attack
-- SELECT Title,Character,MAX(EZAAttack)
-- FROM DokkanCards
-- WHERE EZAAttack != '';

--Q12 Find Average Attack across all characters
-- select avg(Attack)
-- from DokkanCards;

--Q13 List of Links from a Users Team
-- select links
-- from Team3;

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