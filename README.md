# Active Record Association Kata

Add associations to the models in `app/models/*.rb` to make the tests
pass.

[Video Walkthrough](https://youtu.be/E2jk4h1gQ2I)

## Setup

```sh
git clone git@github.com:cjavdev/st-ar-wars.git
cd st-ar-wars
bundle install
rails db:create db:migrate
```

## Running the tests

```sh
rspec spec
```


### Film

- You should be able to list the people in a given film.

### Person

- You should be able to see which species a person is.
- You should be able to see which home planet a person is from.
- You should be able to determine who the person's senator (another Person) is.
- You should be able to see which films the person is in.
- You should be able to list the citizens of the person's home planet.

### PersonFilm

- This is a join table listing the films people starred in.

### Planet

- You should be able to see the list of citizens (Person) are from this planet.
- You should be able to see the senator for this planet.

### Species

- You should be able to see the people of this species.


## Answers

If you want to see the answers, skip ahead to the back of the book by looking
at the `finished` branch.
