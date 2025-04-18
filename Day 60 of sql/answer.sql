  Create table if not EXISTS posts(id INTEGER primary key autoincrement, 
                     title  VARCHAR(255) not NULL,summary VARCHAR(255) not NULL,
                     body  TEXT  not NULL, 
                     date DATETIME CURRENT_DATE ,
                          author_id int  not NULL);
                        Create table if not EXISTS authors(id INTEGER primary key autoincrement,
                                                      name varchar not null, email varchar not null)