--Adding Houses
insert into House values ('Gryffindor', 0);
insert into House values ('Hufflepuff', 0);
insert into House values ('Ravenclaw', 0);
insert into House values ('Slytherin', 0);

--Select * from house

--Adding Staff
INSERT INTO Staff VALUES ('Godric', 'Gryffindor', 1);
INSERT INTO Staff VALUES ('Helga', 'Hufflepuff', 2);
INSERT INTO Staff VALUES ('Rowena', 'Ravenclaw', 3);
INSERT INTO Staff VALUES ('Salazar', 'Slytherin', 4);

INSERT INTO Staff VALUES ('Albus', 'Dumbledore', 1);
INSERT INTO Staff VALUES ('Severus', 'Snape', 4);
INSERT INTO Staff VALUES ('Rubeus', 'Hagrid', 1);
INSERT INTO Staff VALUES ('Remus', 'Lupin', 1);
INSERT INTO Staff VALUES ('Minerva', 'McGonagall', 1);
INSERT INTO Staff VALUES ('Filius', 'Flitwick', 3);
INSERT INTO Staff VALUES ('Horace', 'Slughorn', 4);
INSERT INTO Staff VALUES ('Pomona', 'Sprout', 2);

--select * from staff

--Insert course options
INSERT INTO Course VALUES ('Potions', 6);
INSERT INTO Course VALUES ('Transfiguration', 9);
INSERT INTO Course VALUES ('Charms', 10);
INSERT INTO Course VALUES ('Care of Magical Creatures', 7);
INSERT INTO Course VALUES ('Defense Against the Dark Arts', 8);

--select * from course

--Add students to roster, past and present
--Gryffindor
INSERT INTO Student VALUES ('Euan', 'Abercrombie', 1);
INSERT INTO Student VALUES ('Katie', 'Bell', 1);
INSERT INTO Student VALUES ('Sirius', 'Black', 1);
INSERT INTO Student VALUES ('Lavender', 'Brown', 1);
INSERT INTO Student VALUES ('Ritchie', 'Coote', 1);
INSERT INTO Student VALUES ('Colin', 'Creevey', 1);
INSERT INTO Student VALUES ('Dennis', 'Creevey', 1);
INSERT INTO Student VALUES ('Seamus', 'Finnigan', 1);
INSERT INTO Student VALUES ('Hermione', 'Granger', 1);
INSERT INTO Student VALUES ('Angelina', 'Johnson', 1);
INSERT INTO Student VALUES ('Lee', 'Jordan', 1);
INSERT INTO Student VALUES ('Andrew', 'Kirke', 1);
INSERT INTO Student VALUES ('Neville', 'Longbottom', 1);
INSERT INTO Student VALUES ('Natalie', 'McDonald', 1);
INSERT INTO Student VALUES ('Mary', 'Macdonald', 1);
INSERT INTO Student VALUES ('Cormac', 'McLaggen', 1);
INSERT INTO Student VALUES ('Parvati', 'Patil', 1);
INSERT INTO Student VALUES ('Jimmy', 'Peakes', 1);
INSERT INTO Student VALUES ('Peter', 'Pettigrew', 1);
INSERT INTO Student VALUES ('Harry', 'Potter', 1);
INSERT INTO Student VALUES ('James', 'Potter', 1);
INSERT INTO Student VALUES ('Lily', 'Potter', 1);
INSERT INTO Student VALUES ('Demelza', 'Robins', 1);
INSERT INTO Student VALUES ('Jack', 'Sloper', 1);
INSERT INTO Student VALUES ('Alicia', 'Spinnet', 1);
INSERT INTO Student VALUES ('Dean', 'Thomas', 1);
INSERT INTO Student VALUES ('Romilda', 'Vane', 1);
INSERT INTO Student VALUES ('Arthur', 'Weasley', 1);
INSERT INTO Student VALUES ('Bill', 'Weasley', 1);
INSERT INTO Student VALUES ('Charlie', 'Weasley', 1);
INSERT INTO Student VALUES ('Fred', 'Weasley', 1);
INSERT INTO Student VALUES ('George', 'Weasley', 1);
INSERT INTO Student VALUES ('Ginny', 'Weasley', 1);
INSERT INTO Student VALUES ('Molly', 'Weasley', 1);
INSERT INTO Student VALUES ('Percy', 'Weasley', 1);
INSERT INTO Student VALUES ('Ron', 'Weasley', 1);
INSERT INTO Student VALUES ('Oliver', 'Wood', 1);
--Hufflepuff
INSERT INTO Student VALUES ('Hannah', 'Abbott', 2);
INSERT INTO Student VALUES ('Susan', 'Bones', 2);
INSERT INTO Student VALUES ('Eleanor', 'Branstone', 2);
INSERT INTO Student VALUES ('Owen', 'Cauldwell', 2);
INSERT INTO Student VALUES ('Cedric', 'Diggory', 2);
INSERT INTO Student VALUES ('Justin', 'Finch-Fletchley', 2);
INSERT INTO Student VALUES ('Ernie', 'Macmillan', 2);
INSERT INTO Student VALUES ('Laura', 'Madley', 2);
INSERT INTO Student VALUES ('Eloise', 'Midgeon', 2);
INSERT INTO Student VALUES ('Zacharias', 'Smith', 2);
INSERT INTO Student VALUES ('Nymphadora', 'Tonks', 2);
INSERT INTO Student VALUES ('Kevin', 'Whitby', 2);
INSERT INTO Student VALUES ('Rose', 'Zeller', 2);
--Ravenclaw
INSERT INTO Student VALUES ('Stewart', 'Ackerley', 3);
INSERT INTO Student VALUES ('Marcus', 'Belby', 3);
INSERT INTO Student VALUES ('Terry', 'Boot', 3);
INSERT INTO Student VALUES ('Mandy', 'Brocklehurst', 3);
INSERT INTO Student VALUES ('Cho', 'Chang', 3);
INSERT INTO Student VALUES ('Eddie', 'Carmichael', 3);
INSERT INTO Student VALUES ('Penelope', 'Clearwater', 3);
INSERT INTO Student VALUES ('Michael', 'Corner', 3);
INSERT INTO Student VALUES ('Roger', 'Davies', 3);
INSERT INTO Student VALUES ('Marietta', 'Edgecombe', 3);
INSERT INTO Student VALUES ('S', 'Fawcett', 3);
INSERT INTO Student VALUES ('Anthony', 'Goldstein', 3);
INSERT INTO Student VALUES ('Luna', 'Lovegood', 3);
INSERT INTO Student VALUES ('Padma', 'Patil', 3);
INSERT INTO Student VALUES ('Orla', 'Quirke', 3);
INSERT INTO Student VALUES ('Lisa', 'Turpin', 3);
--Slytherin
INSERT INTO Student VALUES ('Malcolm', 'Baddock', 4);
INSERT INTO Student VALUES ('Regulus', 'Black', 4);
INSERT INTO Student VALUES ('Miles', 'Bletchley', 4);
INSERT INTO Student VALUES ('Millicent', 'Bullstrode', 4);
INSERT INTO Student VALUES ('Vincent', 'Crabbe', 4);
INSERT INTO Student VALUES ('Marcus', 'Flint', 4);
INSERT INTO Student VALUES ('Gregory', 'Goyle', 4);
INSERT INTO Student VALUES ('Terence', 'Higgs', 4);
INSERT INTO Student VALUES ('Bellatrix', 'Lestrange', 4);
INSERT INTO Student VALUES ('Rabastan', 'Lestrange', 4);
INSERT INTO Student VALUES ('Rodolphus', 'Lestrange', 4);
INSERT INTO Student VALUES ('Abraxas', 'Malfoy', 4);
INSERT INTO Student VALUES ('Draco', 'Malfoy', 4);
INSERT INTO Student VALUES ('Lucius', 'Malfoy', 4);
INSERT INTO Student VALUES ('Narcissa', 'Malfoy', 4);
INSERT INTO Student VALUES ('Theodore', 'Nott', 4);
INSERT INTO Student VALUES ('Pansy', 'Parkinson', 4);
INSERT INTO Student VALUES ('Graham', 'Pritchard', 4);
INSERT INTO Student VALUES ('Adrian', 'Pucey', 4);
INSERT INTO Student VALUES ('Tom', 'Riddle', 4);
INSERT INTO Student VALUES ('Blaise', 'Zabini', 4);

--select * from student

--Enroll Students into courses 
INSERT INTO Enrollment VALUES (1, 73);
INSERT INTO Enrollment VALUES (1, 75);
INSERT INTO Enrollment VALUES (1, 76);
INSERT INTO Enrollment VALUES (1, 77);
INSERT INTO Enrollment VALUES (1, 79);
INSERT INTO Enrollment VALUES (1, 54);
INSERT INTO Enrollment VALUES (1, 24);
INSERT INTO Enrollment VALUES (1, 10);
INSERT INTO Enrollment VALUES (1, 40);
INSERT INTO Enrollment VALUES (1, 9);
INSERT INTO Enrollment VALUES (1, 42);
INSERT INTO Enrollment VALUES (1, 71);
INSERT INTO Enrollment VALUES (1, 13);
INSERT INTO Enrollment VALUES (1, 5);
INSERT INTO Enrollment VALUES (1, 30);
INSERT INTO Enrollment VALUES (1, 53);

INSERT INTO Enrollment VALUES (2, 57);
INSERT INTO Enrollment VALUES (2, 54);
INSERT INTO Enrollment VALUES (2, 50);
INSERT INTO Enrollment VALUES (2, 84);
INSERT INTO Enrollment VALUES (2, 68);
INSERT INTO Enrollment VALUES (2, 47);
INSERT INTO Enrollment VALUES (2, 15);
INSERT INTO Enrollment VALUES (2, 41);
INSERT INTO Enrollment VALUES (2, 63);
INSERT INTO Enrollment VALUES (2, 56);
INSERT INTO Enrollment VALUES (2, 26);
INSERT INTO Enrollment VALUES (2, 86);
INSERT INTO Enrollment VALUES (2, 51);
INSERT INTO Enrollment VALUES (2, 76);
INSERT INTO Enrollment VALUES (2, 38);
INSERT INTO Enrollment VALUES (2, 58);

INSERT INTO Enrollment VALUES (3, 33);
INSERT INTO Enrollment VALUES (3, 67);
INSERT INTO Enrollment VALUES (3, 1);
INSERT INTO Enrollment VALUES (3, 52);
INSERT INTO Enrollment VALUES (3, 36);
INSERT INTO Enrollment VALUES (3, 15);
INSERT INTO Enrollment VALUES (3, 4);
INSERT INTO Enrollment VALUES (3, 3);
INSERT INTO Enrollment VALUES (3, 85);
INSERT INTO Enrollment VALUES (3, 8);
INSERT INTO Enrollment VALUES (3, 43);
INSERT INTO Enrollment VALUES (3, 57);

INSERT INTO Enrollment VALUES (4, 7);
INSERT INTO Enrollment VALUES (4, 76);
INSERT INTO Enrollment VALUES (4, 8);
INSERT INTO Enrollment VALUES (4, 12);
INSERT INTO Enrollment VALUES (4, 64);
INSERT INTO Enrollment VALUES (4, 81);
INSERT INTO Enrollment VALUES (4, 41);
INSERT INTO Enrollment VALUES (4, 58);
INSERT INTO Enrollment VALUES (4, 50);
INSERT INTO Enrollment VALUES (4, 43);
INSERT INTO Enrollment VALUES (4, 57);
INSERT INTO Enrollment VALUES (4, 15);
INSERT INTO Enrollment VALUES (4, 79);
INSERT INTO Enrollment VALUES (4, 67);

INSERT INTO Enrollment VALUES (5, 56);
INSERT INTO Enrollment VALUES (5, 11);
INSERT INTO Enrollment VALUES (5, 77);
INSERT INTO Enrollment VALUES (5, 6);
INSERT INTO Enrollment VALUES (5, 63);
INSERT INTO Enrollment VALUES (5, 58);
INSERT INTO Enrollment VALUES (5, 70);
INSERT INTO Enrollment VALUES (5, 53);
INSERT INTO Enrollment VALUES (5, 32);
INSERT INTO Enrollment VALUES (5, 86);
INSERT INTO Enrollment VALUES (5, 30);
INSERT INTO Enrollment VALUES (5, 79);
INSERT INTO Enrollment VALUES (5, 80);
INSERT INTO Enrollment VALUES (5, 16);
INSERT INTO Enrollment VALUES (5, 40);
INSERT INTO Enrollment VALUES (5, 34);
INSERT INTO Enrollment VALUES (5, 39);
INSERT INTO Enrollment VALUES (5, 82);
INSERT INTO Enrollment VALUES (5, 25);
INSERT INTO Enrollment VALUES (5, 22);

--Add Some starting house points
INSERT INTO HousePoint VALUES (5, 6, 20);
INSERT INTO HousePoint VALUES (5, 86, -100);
INSERT INTO HousePoint VALUES (5, 20, 50);
INSERT INTO HousePoint VALUES (5, 20, 20);
INSERT INTO HousePoint VALUES (6, 20, -10);
INSERT INTO HousePoint VALUES (9, 55, 30);

INSERT INTO HousePoint VALUES (9, 35, 10);
INSERT INTO HousePoint VALUES (5, 35, 10);
INSERT INTO HousePoint VALUES (6, 35, 30);
INSERT INTO HousePoint VALUES (10, 35, 10);

INSERT INTO HousePoint VALUES (9, 36, -30);
INSERT INTO HousePoint VALUES (5, 36, 100);
INSERT INTO HousePoint VALUES (10, 36, 50);

INSERT INTO HousePoint VALUES (9, 31, -20);
INSERT INTO HousePoint VALUES (9, 32, -20);


--select * from enrollment;
--select * from housepoint