create table actors
(
    actor_id   int auto_increment
        primary key,
    first_name varchar(20) null,
    last_name  varchar(20) null,
    movieId    int         null,
    constraint actor_id
        unique (actor_id)
);

create index movieId
    on actors (movieId);

create table directors
(
    director_id int         not null
        primary key,
    first_name  varchar(20) null,
    last_name   varchar(20) null,
    constraint director_id
        unique (director_id)
);

create table movies
(
    movie_id     int         not null
        primary key,
    title        varchar(20) null,
    release_year varchar(20) null,
    genre        varchar(20) null,
    directorId   int         null,
    actorId      int         null,
    constraint movie_id
        unique (movie_id),
    constraint movies_ibfk_1
        foreign key (directorId) references directors (director_id),
    constraint movies_ibfk_2
        foreign key (actorId) references actors (actor_id)
);

alter table actors
    add constraint actors_ibfk_1
        foreign key (movieId) references movies (movie_id);

create index actorId
    on movies (actorId);

create index directorId
    on movies (directorId);


