alter table RegistrationDetails 
Add constraint FK_RegistrationDetails_Users foreign key (userId)
references Users(userId)


alter table Budget 
Add constraint FK_Budget_Users foreign key (userId)
references Users(userId)

alter table Users_Group 
Add constraint FK_Users_Group_Users foreign key (userId)
references Users(userId)

alter table Users_Group 
Add constraint FK_Users_Group_Group foreign key (groupId)
references Groups(groupId)

alter table Events
Add constraint FK_Events_Users foreign key (userId)
references Users(userId)

alter table Users_Notification 
Add constraint FK_UNotification_Users foreign key (userId)
references Users(userId)

alter table Users_Notification 
Add constraint FK_UsersNot_Notification foreign key (notificationId)
references Notifications(notificationId)

alter table Invitation 
Add constraint FK_Invitation_Users foreign key (fromId)
references Users(userId)

alter table Invitation 
Add constraint FK_Invitation_HashTable foreign key (hashId)
references HashTable(hashId)

alter table InvitedUsers 
Add constraint FK_InvitedUsers_Invitation foreign key (invitationId)
references Invitation(invitationId)

alter table Settlement
Add constraint FK_Settlement_FinalT foreign key (finalTransactionId)
references FinalTransaction(transactionId)

alter table PersonalTransaction 
Add constraint FK_Personal_Users foreign key (fromId)
references Users(userId)

alter table PersonalTransaction 
Add constraint FK_Personal_Activity foreign key (toId)
references Activity(activityId)

alter table PersonalTransaction 
Add constraint FK_Personal_Events foreign key (eventId)
references Events(eventId)

alter table PersonalTransaction 
Add constraint FK_Personal_Group foreign key (groupId)
references Groups(groupId)

insert into Users values(1,'nitesh','nitesh','nitesh@nitesh.com',GETDATE())
