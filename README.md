# Pokémon Ruby - Gotta Catch 'Em All!

Ash is catching Pokémon in a world consisting of an infinite two-dimensional grid of houses. In each house there is exactly 1 Pokémon.

Ash starts by catching the Pokémon that are in the house where he starts. Then, he moves to the house immediately North (N), South (S), East (E) or West (O/W) from where he is and catches the Pokémon that is there, and so on.

Attention: if he passes a house where he has already passed (and, therefore, where he has already caught a Pokémon), there is no longer a Pokémon there for him to catch!

## Prerequisites

The setups steps expect following tools installed on the system:

- Ruby 3.2.2
- rbenv (see below how to install)
- Homebrew

## Installation

#### 1. Clone the repository

```bash
git clone https://github.com/claudioduarte/pokemon_ruby.git
```

#### 2. `cd` into the project

```ruby
cd pokemon_ruby
```

#### 3. Execute Ruby script with parameter

```ruby
ruby catch_pokemon.rb 'NSEW'
```

#### 4. Run RSpec Tests

```ruby
rspec spec/catch_pokemon_spec.rb
```
<br>

----
<br>

## Installing Ruby using `rbenv`

```ruby
brew install rbenv
```

Add the following command to your ~/.zshrc file to make rbenv load automatically when you open up the Terminal.

```ruby
eval "$(rbenv init -)" >> ~/.zshrc
```

Install Ruby 3.2.2 with the following command:

```ruby
rbenv install 3.2.2
```

Set the ruby version in the project, rehash and then restart the terminal to apply the changes

```ruby
rbenv local 3.2.2
rbenv rehash
```

When typing `ruby -v`, this should be the version:

```ruby
ruby 3.2.2 (2023-03-30 revision e51014f9c0) [arm64-darwin21]
```

## License & Copyright

Licensed under the [MIT License](LICENSE). ©2023 Cláudio Duarte
