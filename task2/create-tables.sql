CREATE TABLE IF NOT EXISTS genres (
    g_id INT NOT NULL AUTO_INCREMENT,
    g_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (g_id)
);

CREATE TABLE IF NOT EXISTS books (
    b_id INT NOT NULL AUTO_INCREMENT,
    b_name VARCHAR(100) NOT NULL,
    b_year INT,
    b_quantity INT,
    PRIMARY KEY (b_id)
);

CREATE TABLE IF NOT EXISTS authors (
    a_id INT NOT NULL AUTO_INCREMENT,
    a_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (a_id)
);

CREATE TABLE subscribers (
    s_id INT NOT NULL AUTO_INCREMENT,
    s_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (s_id)
);

CREATE TABLE IF NOT EXISTS subscriptions (
    sb_id INT NOT NULL AUTO_INCREMENT,
    sb_subscriber INT NOT NULL,
    sb_book INT NOT NULL,
    sb_start DATE,
    sb_finish DATE,
    sb_is_active TINYINT(1),
    PRIMARY KEY (sb_id),
    FOREIGN KEY (sb_book) REFERENCES books(b_id),
    FOREIGN KEY (sb_subscriber) REFERENCES subscribers(s_id)
);

CREATE TABLE IF NOT EXISTS books_genres (
    b_id INT NOT NULL,
    g_id INT NOT NULL,
    PRIMARY KEY (b_id, g_id),
    FOREIGN KEY (b_id) REFERENCES books(b_id),
    FOREIGN KEY (g_id) REFERENCES genres(g_id)
);

CREATE TABLE IF NOT EXISTS books_authors (
    b_id INT NOT NULL,
    a_id INT NOT NULL,
    PRIMARY KEY (b_id, a_id),
    FOREIGN KEY (b_id) REFERENCES books(b_id),
    FOREIGN KEY (a_id) REFERENCES authors(a_id)
);