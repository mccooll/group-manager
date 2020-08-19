CREATE TABLE Member(
	id INT AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE `Group`(
	id INT AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE Membership(
	groupId INT NOT NULL,
	memberId INT NOT NULL,
	isJoin BOOLEAN NOT NULL,
	`when` DATETIME NOT NULL,
	PRIMARY KEY(groupId, memberId, `when`),
	FOREIGN KEY(groupId) REFERENCES `Group`(id),
	FOREIGN KEY(memberId) REFERENCES Member(id),
	INDEX members (groupId, memberId),
	INDEX changes (groupId, `when`)
);

INSERT INTO Member (name)
VALUES ('Terry Aki'),('Cory Ander'),('Robin Banks'),('Jimmy Changa'),('Barry Wine'),('Wilma Mumduya'),('Buster Hyman'),('Poppa Cherry'),('Zack Lee'),('Don Stairs'),('Saul T. Balls'),('Peter Pants'),('Hal Appeno '),('Otto Matic'),('Moe Fugga'),('Graham Cracker'),('Tom Foolery'),('Al Dente'),('Bud Wiser'),('Polly Tech'),('Holly Graham'),('Frank N. Stein'),('Cam L. Toe'),('Pat Agonia'),('Tara Zona'),('Barry Cade'),('Phil Anthropist '),('Marvin Gardens'),('Phil Harmonic '),('Arty Ficial'),('Will Power'),('Donatella Nobatti'),('Juan Annatoo'),('Stew Gots'),('Anna Rexia'),('Bill Emia'),('Curt N. Call'),('Max Emum'),('Minnie Mum'),('Bill Yerds'),('Hap E. Birthday'),('Matt Innae'),('Polly Science'),('Tara Misu'),('Ed U. Cation'),('Gerry Atric'),('Kerry Oaky'),('Midge Itz'),('Gabe Lackmen'),('Mary Christmas'),('Dan Druff'),('Jim Nasium'),('Angie O. Plasty'),('Ella Vator'),('Sal Vidge'),('Bart Ender'),('Artie Choke'),('Hans Olo'),('Marge Arin'),('Hugh Briss'),('Gene Poole'),('Ty Tanic'),('Manuel Labor'),('Lynn Guini'),('Claire Voyant'),('Peg Leg'),('Jack E. Sack'),('Marty Graw'),('Ash Wednesday'),('Olive Yu'),('Gene Jacket'),('Tom Atoe'),('Doug Out'),('Sharon Needles'),('Beau Tie'),('Serj Protector'),('Marcus Down'),('Warren Peace'),('Bud Jet'),('Barney Cull'),('Marion Gaze');

INSERT INTO `Group` (name)
VALUES ('Five Guys'),('Five Gals'),('Welders');

INSERT INTO Membership (groupId, memberId, isJoin, `when`)
VALUES (1,1,1,NOW()), (1,2,1,NOW() + INTERVAL 2 MINUTE), (1,3,1,NOW() + INTERVAL 3 MINUTE), (1,4,1,NOW() + INTERVAL 4 MINUTE), (1,5,1,NOW() + INTERVAL 5 MINUTE), (1,6,1,NOW() + INTERVAL 6 MINUTE), (1,7,1,NOW() + INTERVAL 7 MINUTE), (1,8,1,NOW() + INTERVAL 8 MINUTE), (1,9,1,NOW() + INTERVAL 9 MINUTE), (1,10,1,NOW() + INTERVAL 10 MINUTE), (1,11,1,NOW() + INTERVAL 11 MINUTE), (1,12,1,NOW() + INTERVAL 12 MINUTE);