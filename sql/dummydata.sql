INSERT INTO Participant(id) VALUES (DEFAULT);
INSERT INTO Participant(id) VALUES (DEFAULT);
INSERT INTO Participant(id) VALUES (DEFAULT);
INSERT INTO Participant(id) VALUES (DEFAULT);
INSERT INTO Participant(id) VALUES (DEFAULT);
INSERT INTO Participant(id) VALUES (DEFAULT);
INSERT INTO Participant(id) VALUES (DEFAULT);
INSERT INTO Participant(id) VALUES (DEFAULT);
INSERT INTO Participant(id) VALUES (DEFAULT);
INSERT INTO Participant(id) VALUES (DEFAULT);
INSERT INTO "User"(id,name,email,password,is_admin)  VALUES (1,'Charagh J','charagh.jethnani@gmail.com','123456',true); 
INSERT INTO "User"(id,name,email,password,is_admin)  VALUES (2,'Rhendie A','rhendie_manutd@hotmail.com','123456',false);
INSERT INTO "User"(id,name,email,password,is_admin)  VALUES (3,'Lianne L','liannelee719@hotmail.com','123456',false);
INSERT INTO "Group" (id,name) VALUES (3,'COMP9323');
INSERT INTO "Group" (id,name,relatedGroup) VALUES (4,'COMP9323_Group1',3);
INSERT INTO "Group" (id,name,relatedGroup) VALUES (5,'COMP9323_Group2',3);
INSERT INTO "Group" (id,name,relatedGroup) VALUES (6,'COMP9323_Group3',3);
INSERT INTO "Group" (id,name) VALUES (7,'COMP9322');
INSERT INTO "Group" (id,name) VALUES (8,'COMP9444');
INSERT INTO "Group" (id,name) VALUES (9,'COMP9999');
INSERT INTO belong(userId,groupId,role) VALUES (1,3,'student');
INSERT INTO belong(userId,groupId,role) VALUES (1,4,'student');
INSERT INTO belong(userId,groupId,role) VALUES (2,3,'lecturer');
INSERT INTO belong(userId,groupId,role) VALUES (2,4,'student');
INSERT INTO belong(userId,groupId,role) VALUES (2,8,'student');
INSERT INTO belong(userId,groupId,role) VALUES (2,9,'lecturer');
INSERT INTO Activity(userId,participantId,title,message,timeposted,lastmodified) VALUES (1,3,'First Post','Just saying hello','WED Jul 01 01:01:01 GMT 2012','WED Jul 01 01:01:01 GMT 2012');
INSERT INTO Activity(userId,message,timeposted,relatedActivity,lastmodified) VALUES (1,'Commenting for FUNNNNN','WED Jul 01 01:01:01 GMT 2012',1,'WED Jul 01 01:01:01 GMT 2012');
INSERT INTO Activity(userId,rate,timeposted,relatedActivity,lastmodified) VALUES (1,'t','WED Jul 01 01:01:01 GMT 2012',1,'WED Jul 01 01:01:01 GMT 2012');
INSERT INTO Activity(userId,participantId,title,message,timeposted,lastmodified) VALUES (2,4,'Second Post','Just saying hello','WED Jul 01 01:01:01 GMT 2012','WED Jul 01 01:01:01 GMT 2012');
INSERT INTO Activity(userId,message,timeposted,relatedActivity,lastmodified) VALUES (2,'Commenting for FUNNNNN','WED Jul 01 01:01:01 GMT 2012',4,'WED Jul 01 01:01:01 GMT 2012');
INSERT INTO Activity(userId,rate,timeposted,relatedActivity,lastmodified) VALUES (2,'t','WED Jul 01 01:01:01 GMT 2012',4,'WED Jul 01 01:01:01 GMT 2012');