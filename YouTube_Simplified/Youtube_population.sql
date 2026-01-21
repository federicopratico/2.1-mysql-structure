USE Youtube_simplified;

-- Insert Users
INSERT INTO User (e_mail, Password, Username, Date_of_birth, Sex, Country, Postal_code) VALUES
('john.doe@email.com', 'pass123', 'JohnDoe', '1995-03-15', 'M', 'USA', 10001),
('jane.smith@email.com', 'jane456', 'JaneSmith', '1992-07-22', 'F', 'Canada', 12345),
('alex.wong@email.com', 'alex789', 'AlexWong', '1998-11-30', 'Other', 'Singapore', 67890),
('maria.garcia@email.com', 'maria321', 'MariaG', '1990-05-18', 'F', 'Spain', 28001),
('david.lee@email.com', 'david654', 'DavidLee', '1993-09-25', 'M', 'UK', 20001),
('sarah.johnson@email.com', 'sarah987', 'SarahJ', '1996-01-12', 'F', 'Australia', 30001),
('mike.brown@email.com', 'mike111', 'MikeBrown', '1991-04-08', 'M', 'USA', 10002),
('emma.wilson@email.com', 'emma222', 'EmmaWilson', '1994-12-03', 'F', 'Canada', 12346),
('ryan.taylor@email.com', 'ryan333', 'RyanT', '1997-06-20', 'M', 'USA', 10003),
('lisa.anderson@email.com', 'lisa444', 'LisaA', '1989-08-14', 'F', 'Germany', 40001);

-- Insert Channels
INSERT INTO Channel (Name, Description, Creation_date, Creator_id) VALUES
('TechTalks', 'Latest technology reviews and tutorials', '2020-01-15 10:00:00', 1),
('CookingWithJane', 'Easy and delicious recipes for everyone', '2019-05-20 14:30:00', 2),
('TravelVlogs', 'Exploring the world one destination at a time', '2021-03-10 09:00:00', 3),
('FitnessFirst', 'Workout routines and health tips', '2020-08-22 11:00:00', 4),
('GamingZone', 'Gaming livestreams and walkthroughs', '2018-11-30 16:00:00', 5),
('MusicMakers', 'Original music and covers', '2019-07-14 12:00:00', 6),
('DIYProjects', 'Creative DIY ideas and tutorials', '2020-02-28 13:00:00', 7),
('ScienceExplained', 'Making science fun and accessible', '2021-01-05 10:30:00', 8);

-- Insert Subscriptions
INSERT INTO Subscription (User_id, Channel_id, Subscription_date) VALUES
(1, 2, '2020-02-01 10:00:00'),
(1, 3, '2021-04-15 14:00:00'),
(1, 5, '2019-12-10 16:00:00'),
(2, 1, '2020-03-20 11:00:00'),
(2, 4, '2020-09-05 13:00:00'),
(3, 1, '2020-02-10 09:00:00'),
(3, 6, '2019-08-22 15:00:00'),
(4, 3, '2021-05-01 12:00:00'),
(4, 5, '2019-01-15 14:00:00'),
(5, 2, '2020-06-18 10:00:00'),
(6, 4, '2020-10-12 11:00:00'),
(7, 1, '2020-04-25 13:00:00'),
(7, 8, '2021-02-14 15:00:00'),
(8, 7, '2020-03-30 12:00:00'),
(9, 5, '2019-02-20 16:00:00'),
(10, 6, '2019-09-10 14:00:00');

-- Insert Videos
INSERT INTO Video (Title, Description, Size_byte, Video_filename, Video_duration_ms, Thumbnail, n_views, n_likes, n_dislikes, Video_state, Creator_id, Creation_date) VALUES
('iPhone 15 Review', 'Comprehensive review of the latest iPhone', 524288000, 'iphone15_review.mp4', 900000, 'thumb_iphone15.jpg', 150000, 12000, 500, 'Public', 1, '2023-09-20 10:00:00'),
('Pasta Carbonara', 'Traditional Italian carbonara recipe', 314572800, 'carbonara.mp4', 600000, 'thumb_carbonara.jpg', 85000, 7500, 200, 'Public', 2, '2023-06-15 14:00:00'),
('Tokyo Travel Guide', 'Best places to visit in Tokyo', 1048576000, 'tokyo_guide.mp4', 1200000, 'thumb_tokyo.jpg', 220000, 18000, 800, 'Public', 3, '2023-07-22 09:00:00'),
('30 Min HIIT Workout', 'High intensity interval training routine', 419430400, 'hiit_workout.mp4', 1800000, 'thumb_hiit.jpg', 95000, 8200, 300, 'Public', 4, '2023-08-10 11:00:00'),
('GTA 6 Leaked Footage', 'Analysis of GTA 6 leaks', 629145600, 'gta6_analysis.mp4', 720000, 'thumb_gta6.jpg', 500000, 45000, 2000, 'Public', 5, '2023-09-05 16:00:00'),
('Acoustic Cover Mix', 'Acoustic covers of popular songs', 471859200, 'acoustic_mix.mp4', 2400000, 'thumb_acoustic.jpg', 62000, 5800, 150, 'Public', 6, '2023-05-18 12:00:00'),
('Build a Bookshelf', 'Step-by-step bookshelf tutorial', 367001600, 'bookshelf_diy.mp4', 1500000, 'thumb_bookshelf.jpg', 48000, 4200, 180, 'Public', 7, '2023-04-12 13:00:00'),
('Quantum Physics 101', 'Introduction to quantum mechanics', 576716800, 'quantum_intro.mp4', 1800000, 'thumb_quantum.jpg', 110000, 9500, 400, 'Public', 8, '2023-03-08 10:30:00'),
('Budget Gaming PC', 'Building a gaming PC under $800', 450000000, 'budget_pc.mp4', 1320000, 'thumb_budget_pc.jpg', 175000, 15000, 600, 'Public', 1, '2023-10-01 15:00:00'),
('Chocolate Cake', 'Moist chocolate cake recipe', 280000000, 'choc_cake.mp4', 480000, 'thumb_cake.jpg', 72000, 6800, 220, 'Public', 2, '2023-08-22 16:00:00'),
('Paris Hidden Gems', 'Off-the-beaten-path Paris locations', 890000000, 'paris_hidden.mp4', 960000, 'thumb_paris.jpg', 135000, 11000, 450, 'Hidden', 3, '2023-09-18 11:00:00'),
('Yoga for Beginners', 'Basic yoga poses and breathing techniques', 385000000, 'yoga_begin.mp4', 1680000, 'thumb_yoga.jpg', 88000, 7900, 280, 'Public', 4, '2023-07-30 09:30:00');

-- Insert Tags
INSERT INTO Tag (Name) VALUES
('Technology'),
('Cooking'),
('Travel'),
('Fitness'),
('Gaming'),
('Music'),
('DIY'),
('Science'),
('Review'),
('Tutorial'),
('Vlog'),
('Entertainment'),
('Education'),
('Lifestyle');

-- Insert Tag_Video relationships
INSERT INTO Tag_Video (Tag_id, Video_id) VALUES
(1, 1), (9, 1),  -- iPhone Review: Technology, Review
(2, 2), (10, 2), -- Carbonara: Cooking, Tutorial
(3, 3), (11, 3), -- Tokyo: Travel, Vlog
(4, 4), (10, 4), -- HIIT: Fitness, Tutorial
(5, 5), (12, 5), -- GTA 6: Gaming, Entertainment
(6, 6), (12, 6), -- Acoustic: Music, Entertainment
(7, 7), (10, 7), -- Bookshelf: DIY, Tutorial
(8, 8), (13, 8), -- Quantum: Science, Education
(1, 9), (10, 9), -- Budget PC: Technology, Tutorial
(2, 10), (10, 10), -- Cake: Cooking, Tutorial
(3, 11), (11, 11), -- Paris: Travel, Vlog
(4, 12), (13, 12); -- Yoga: Fitness, Education

-- Insert Video Reactions
INSERT INTO Video_reaction (Video_id, User_id, Reaction_type, Reaction_date) VALUES
(1, 2, 'Like', '2023-09-21 12:00:00'),
(1, 3, 'Like', '2023-09-22 14:00:00'),
(1, 4, 'Dislike', '2023-09-23 10:00:00'),
(2, 1, 'Like', '2023-06-16 15:00:00'),
(2, 5, 'Like', '2023-06-17 11:00:00'),
(3, 1, 'Like', '2023-07-23 13:00:00'),
(3, 6, 'Like', '2023-07-24 16:00:00'),
(4, 2, 'Like', '2023-08-11 09:00:00'),
(5, 7, 'Like', '2023-09-06 17:00:00'),
(5, 8, 'Dislike', '2023-09-07 12:00:00'),
(6, 3, 'Like', '2023-05-19 14:00:00'),
(7, 9, 'Like', '2023-04-13 11:00:00'),
(8, 10, 'Like', '2023-03-09 15:00:00'),
(9, 2, 'Like', '2023-10-02 10:00:00'),
(10, 1, 'Like', '2023-08-23 13:00:00');

-- Insert Playlists
INSERT INTO Playlist (Name, Creation_date, Status, Creator_id) VALUES
('Tech Favorites', '2023-09-25 10:00:00', 'Public', 1),
('Recipes to Try', '2023-08-30 14:00:00', 'Public', 2),
('Travel Bucket List', '2023-09-10 09:00:00', 'Public', 3),
('Workout Plans', '2023-08-15 11:00:00', 'Private', 4),
('Gaming Collection', '2023-09-12 16:00:00', 'Public', 5),
('Chill Music', '2023-07-20 12:00:00', 'Public', 6);

-- Insert Playlist_Video relationships
INSERT INTO Playlist_Video (Playlist_id, Video_id, aggregation_date) VALUES
(1, 1, '2023-09-26 10:00:00'),
(1, 9, '2023-10-03 11:00:00'),
(2, 2, '2023-08-31 14:00:00'),
(2, 10, '2023-09-01 15:00:00'),
(3, 3, '2023-09-11 09:00:00'),
(3, 11, '2023-09-19 10:00:00'),
(4, 4, '2023-08-16 11:00:00'),
(4, 12, '2023-08-17 12:00:00'),
(5, 5, '2023-09-13 16:00:00'),
(6, 6, '2023-07-21 12:00:00');

-- Insert Comments (Note: Schema has UNIQUE constraint on Creator_id which limits one comment per user)
INSERT INTO Comment (Text, Insertion_date, Video_target, Creator_id) VALUES
('Great review! Very detailed and helpful.', '2023-09-21 13:00:00', 1, 2),
('Tried this recipe and it turned out perfect!', '2023-06-16 16:00:00', 2, 1),
('Adding Tokyo to my travel list now!', '2023-07-23 14:00:00', 3, 6),
('This workout is intense but effective!', '2023-08-11 10:00:00', 4, 7),
('Cannot wait for GTA 6 to actually release!', '2023-09-06 18:00:00', 5, 8),
('Beautiful covers, love your voice!', '2023-05-19 15:00:00', 6, 3),
('Clear instructions, built this last weekend.', '2023-04-13 12:00:00', 7, 9),
('Finally understanding quantum physics, thanks!', '2023-03-09 16:00:00', 8, 10),
('Exactly what I needed for my first build.', '2023-10-02 11:00:00', 9, 5),
('My kids loved this cake!', '2023-08-23 14:00:00', 10, 4);

-- Insert Comment Reactions
INSERT INTO Comment_reaction (Comment_id, User_id, Reaction_type, Reaction_date) VALUES
-- Reactions on Comment 1 (Video 1 - iPhone Review by User 2)
(1, 1, 'Like', '2023-09-21 14:00:00'),
(1, 3, 'Like', '2023-09-21 15:00:00'),
(1, 4, 'Like', '2023-09-22 09:00:00'),

-- Reactions on Comment 2 (Video 2 - Carbonara by User 1)
(2, 2, 'Like', '2023-06-16 17:00:00'),
(2, 5, 'Like', '2023-06-17 10:00:00'),
(2, 3, 'Like', '2023-06-18 12:00:00'),

-- Reactions on Comment 3 (Video 3 - Tokyo by User 6)
(3, 1, 'Like', '2023-07-23 15:00:00'),
(3, 3, 'Like', '2023-07-24 11:00:00'),
(3, 7, 'Like', '2023-07-25 13:00:00'),

-- Reactions on Comment 4 (Video 4 - HIIT by User 7)
(4, 2, 'Like', '2023-08-11 11:00:00'),
(4, 4, 'Like', '2023-08-12 14:00:00'),
(4, 6, 'Dislike', '2023-08-13 09:00:00'),

-- Reactions on Comment 5 (Video 5 - GTA 6 by User 8)
(5, 5, 'Like', '2023-09-06 19:00:00'),
(5, 7, 'Like', '2023-09-07 10:00:00'),
(5, 9, 'Like', '2023-09-08 15:00:00'),
(5, 1, 'Like', '2023-09-09 11:00:00'),

-- Reactions on Comment 6 (Video 6 - Acoustic by User 3)
(6, 6, 'Like', '2023-05-19 16:00:00'),
(6, 10, 'Like', '2023-05-20 12:00:00'),

-- Reactions on Comment 7 (Video 7 - Bookshelf by User 9)
(7, 7, 'Like', '2023-04-13 13:00:00'),
(7, 1, 'Like', '2023-04-14 10:00:00'),
(7, 8, 'Like', '2023-04-15 14:00:00'),

-- Reactions on Comment 8 (Video 8 - Quantum by User 10)
(8, 8, 'Like', '2023-03-09 17:00:00'),
(8, 1, 'Like', '2023-03-10 11:00:00'),
(8, 2, 'Dislike', '2023-03-11 13:00:00'),

-- Reactions on Comment 9 (Video 9 - Budget PC by User 5)
(9, 1, 'Like', '2023-10-02 12:00:00'),
(9, 2, 'Like', '2023-10-03 09:00:00'),
(9, 9, 'Like', '2023-10-04 15:00:00'),

-- Reactions on Comment 10 (Video 10 - Chocolate Cake by User 4)
(10, 2, 'Like', '2023-08-23 15:00:00'),
(10, 1, 'Like', '2023-08-24 10:00:00'),
(10, 6, 'Like', '2023-08-25 12:00:00'),
(10, 8, 'Like', '2023-08-26 14:00:00');