create table categories (
    id int primary key not null auto_increment,
    name varchar(64) not null,
    encode_name varchar(64) not null
);

create table users (
                       id int auto_increment not null primary key ,
                       registration_date timestamp not null,
                       email varchar(64),
                       name varchar(128),
                       password varchar(32),
                       contacts text
);

create table lots (
    id int primary key not null auto_increment,
    start_date timestamp default current_timestamp not null,
    title varchar(128) not null unique,
    description text not null,
    image varchar(255) not null,
    start_price int not null,
    finish_date timestamp not null,
    step int,
    user_id int,
    category_id int,
    winner_id int,
    foreign key (user_id) references users(id),
    foreign key (category_id) references categories(id),
    foreign key (winner_id) references users(id)
);

create table bets (
    id int primary key not null auto_increment,
    date TIMESTAMP not null,
    price int not null,
    user_id int,
    lot_id int,
    foreign key (user_id) references users(id),
    foreign key (lot_id) references lots(id)
);

create index id on lots(id);


