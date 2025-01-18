CREATE TABLE IF NOT EXISTS bot_messages (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    username VARCHAR(255),
    message TEXT,
    timestamp TIMESTAMP,
    command VARCHAR(255),
    game VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS bot_management (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    chat_id INTEGER,
    message TEXT,
    timestamp TIMESTAMP
);

CREATE TABLE IF NOT EXISTS wishes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    wish TEXT
);

CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role INTEGER NOT NULL
);