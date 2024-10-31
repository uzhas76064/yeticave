insert into categories(name, encode_name)
values ('Доски и лыжи', 'boards'),
       ('Крепления', 'attachment'),
       ('Ботинки', 'boots'),
       ('Одежда', 'clothing'),
       ('Инструменты', 'tools'),
       ('Разное', 'other');

INSERT INTO lots (title, description, image, start_price, finish_date, category_id, step, user_id, winner_id) VALUES
                ('2014 Rossignol District Snowboard', 'Отличный сноуборд для всех уровней', 'img/lot-1.jpg', 10999, '2024-11-21 15:40', 1, 1000, 1, 2),
                ('DC Ply Mens 2016/2017 Snowboard', 'Сноуборд с высокой производительностью', 'img/lot-2.jpg', 159999, '2024-11-18 16:40', 1, 1000, 2, 1),
                ('Крепления Union Contact Pro 2015 года размер L/XL', 'Надежные крепления для максимального контроля', 'img/lot-3.jpg', 8000, '2024-10-17 17:40', 2, 1000, 1, 1),
                ('Ботинки для сноуборда DC Mutiny Charocal', 'Комфортные и стильные ботинки', 'img/lot-4.jpg', 10999, '2024-10-20 18:40', 3, 1000, 2, 2),
                ('Куртка для сноуборда DC Mutiny Charocal', 'Теплая и водонепроницаемая куртка', 'img/lot-5.jpg', 7500, '2024-10-18 20:40', 4, 1000, 1, 2),
                ('Маска Oakley Canopy', 'Маска с отличной видимостью и защитой', 'img/lot-6.jpg', 5400, '2024-11-19 00:00', 6, 1000, 2, 1);

INSERT INTO users (registration_date, email, name, password, contacts) VALUES
               (NOW(), 'ivanov@example.com', 'Иван Иванов', 'pass1234', 'Телефон: +79991234567'),
               (NOW(), 'petrov@example.com', 'Петр Петров', 'securePass1', 'Телефон: +79992345678'),
               (NOW(), 'sidorov@example.com', 'Сидор Сидоров', 'mypassword2023', 'Телефон: +79993456789'),
               (NOW(), 'nikolaev@example.com', 'Николай Николаев', 'nikolayPass', 'Телефон: +79994567890'),
               (NOW(), 'smirnova@example.com', 'Анна Смирнова', 'anna2023secure', 'Телефон: +79995678901'),
               (NOW(), 'kuznetsova@example.com', 'Мария Кузнецова', 'mariaPassword!', 'Телефон: +79996789012');

insert into bets(date, price, user_id, lot_id)
values (now(), 12000, 4, 7),
       (now(), 20000, 5, 9),
       (now(), 6000, 3, 12);

update users
set contacts='Телефон: +99363883272'
where id=2;

select * from users;
select * from lots;
select * from bets;
# delete from lots;

select title, start_price, image, category_id, categories.name from lots
join categories
    on category_id = categories.id;


select lots.id, lots.title, lots.start_price, lots.finish_date, categories.name
from lots
join categories on lots.category_id = categories.id;

update lots
set start_price=99999
where lots.id=7;

select bets.date, bets.price, bets.user_id, bets.lot_id, users.name from bets
join lots on bets.lot_id = lots.id
join users on bets.user_id = users.id
where lots.id=7
order by bets.date desc ;