SELECT Songdew_User.email, Songdew_User.ismail_verify
FROM Songdew_User
JOIN Songdew_UserSongDistribution ON Songdew_UserSongDistribution.id =Songdew_User.id
where Songdew_User.last_login between 2022/12/07 and 2022/12/08



SELECT Songdew_User.email, Songdew_User.ismail_verify FROM Songdew_User JOIN Songdew_AlbumDistribution ON Songdew_AlbumDistribution.id =Songdew_User.id where Songdew_User.last_login between 2022/12/07 and 2022/12/08


SELECT * FROM Songdew_User WHERE last_login BETWEEN '2022-12-06' AND '2022-12-08'



""""
SELECT `Songdew_UserSongDistribution`.`id`, `Songdew_UserSongDistribution`.`user_id` FROM `Songdew_UserSongDistribution` WHERE `Songdew_UserSongDistribution`.`user_id` IN (SELECT U0.`id` FROM `Songdew_User` U0 WHERE (U0.`last_login` >= 2022-12-07 10:32:31.026689 AND U0.`last_login` < 2022-12-09 10:32:31.026716))

"""""
SELECT * FROM Songdew_User WHERE last_login BETWEEN
'2022-12-06 00:00:00' AND '2022-12-18 23:59:59',


""""""""""""""""important """"""""""""""""""""""""""""""""""""""


explain select a.email,a.mobile, concat(b.first_name,' ', b.last_name) as name,(select count(id) from Songdew_UserSong where user_id=a.id group by user_id ) as songcount,(select count(id) from Songdew_UserVideo where user_id=a.id group by user_id) as video_count , (select count(id) from Songdew_UserSongDistribution where user_id=a.id group by user_id) as distributio_count , (select count(id) from Songdew_Album where user_id=a.id group by user_id) as album_count, (select count(id) from Songdew_UserProfile where user_id=a.id group by user_id) as profile from Songdew_User a, Songdew_UserProfile b where a.id=b.user_id and a.last_login BETWEEN '2022-01-01' and '2022-02-01' and a.is_type = 'Artist'

"""








""""""""""""""""""""""""""""""""""""


SELECT Songdew_User.username,Songdew_User.last_login,Songdew_User.email,Songdew_User.registered_from FROM Songdew_User where Songdew_User.last_login between '2022-12-01 00:00:00' AND '2022-12-18 23:59:59

"""""""""""""""""""""""


select a.email,a.mobile, concat(b.first_name,' ', b.last_name) as name,(select count(id) from Songdew_UserSong where user_id=a.id group by user_id ) as songcount from Songdew_User a, Songdew_UserProfile b where  a.id=b.user_id and a.last_login BETWEEN '2022-01-01' and '2022-02-01' and a.is_type = 'Artist'





SELECT a.achievement_description,a.created_date,a.priority,b.title, b.artist_id,b.created_date FROM Songdew_UserAchievement a, Songdew_UserSongDistribution b




SELECT Songdew_User.username,Songdew_User.email,Songdew_User.mobile,Songdew_User.created_date,Songdew_User.registered_from FROM Songdew_User WHERE last_login BETWEEN '2022-01-01 00:00:00' AND '2023-01-01 23:59:59'



SELECT Songdew_UserProfile.user_id,Songdew_UserProfile.first_name,Songdew_UserProfile.gender,Songdew_UserProfile.created_date,Songdew_UserProfile.alternate_email,Songdew_UserProfile.alternate_mobile_number,Songdew_UserProfile.spotify_id FROM `Songdew_UserProfile`WHERE created_date BETWEEN '2022-01-01 00:00:00' AND '2023-01-01 23:59:59'



SELECT Songdew_UserSong.user_id,Songdew_UserSong.title,Songdew_UserSong.release_date,Songdew_UserSong.old_cd_track_id,Songdew_UserSong.privacy,Songdew_UserSong.companion FROM Songdew_UserSong ORDER BY id desc 









