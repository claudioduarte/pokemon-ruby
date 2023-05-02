# catch_pokemon.rb
class CatchPokemon
  attr_accessor :sequence

  exit if ARGV.empty?

  def initialize(args)
    @sequence = args[0].upcase.split(//)
    @pokemon_caught = 1
    @x = 0
    @y = 0
    @coordinates = [[@x, @y]]
  end

  def perform
    p 'Não introduziste uma sequência! Tenta Novamente :)' if @sequence.empty?

    catch_pokemon

    p "Parabéns, o Ash apanhou #{@pokemon_caught} Pokémon(s)!" unless @sequence.empty?
  end

  def catch_pokemon
    @sequence.each do |d|
      case d
      when 'N' then @y += 1
      when 'S' then @y -= 1
      when 'E' then @x -= 1
      when 'O' then @x += 1
      end

      @pokemon_caught += 1 unless visited_coordinates(@x, @y)

      @coordinates.push([@x, @y])
    end
  end

  def visited_coordinates(x_axis, y_axis)
    @coordinates.any? { |c| c == [x_axis, y_axis] }
  end
end

CatchPokemon.new(ARGV).perform if $PROGRAM_NAME == __FILE__
