DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS vessel_location;
DROP TABLE IF EXISTS vessel;
DROP TABLE IF EXISTS boxes;
DROP TABLE IF EXISTS dropoff;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  credits INTEGER
);

CREATE TABLE vessel_location (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  latitude TEXT,
  longitude TEXT
);

CREATE TABLE vessel_box (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  compost_weight INTEGER,
  temperature INTEGER,
  compost_status INTEGER,
  closed_on TEXT
);

CREATE TABLE vessel (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  loc INTEGER,
  manager INTEGER,
  box1 INTEGER,
  box2 INTEGER,
  FOREIGN KEY(loc) REFERENCES vessel_location(id),
  FOREIGN KEY(manager) REFERENCES user(id),
  FOREIGN KEY(box1) REFERENCES vessel_box(id),
  FOREIGN KEY(box2) REFERENCES vessel_box(id)
);

CREATE TABLE dropoff (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  compost_weight INTEGER,
  dropoff_time DATETIME,
  boxID INTEGER,
  userID INTEGER,
  points_rewarded INTEGER,
  FOREIGN KEY (boxID) REFERENCES box (id),
  FOREIGN KEY (userID) REFERENCES user (id)
);