require './catch_pokemon'
require 'pry'

RSpec.describe CatchPokemon do
  let(:uppercase_valid_sequence) { ['NSEONSEO'] }
  let(:lowecase_valid_sequence) { ['nseonseo'] }
  let(:empty_sequence) { [''] }
  let(:invalid_sequence) { ['cD42#'] }
  let(:failure_message) { 'Não introduziste uma sequência! Tenta Novamente :)' }
  let(:success_message) { 'Parabéns, o Ash apanhou 3 Pokémon(s)!' }

  describe 'when valid params' do
    subject { described_class.new(uppercase_valid_sequence).perform }

    it 'returns success message' do
      $stdout = StringIO.new
      subject
      $stdout.rewind
      expect($stdout.gets.strip).to include(success_message)
    end
  end

  describe 'when empty params' do
    subject { described_class.new(empty_sequence).perform }

    it 'returns error message' do
      $stdout = StringIO.new
      subject
      $stdout.rewind
      expect($stdout.gets.strip).to include(failure_message)
    end

    it 'returns nil response' do
      subject
      expect(subject).to eq(nil)
    end
  end

  describe 'when invalid params' do
    subject { described_class.new(invalid_sequence).perform }

    it 'returns success message with 1 Pokémon' do
      subject
      expect(subject).to eq('Parabéns, o Ash apanhou 1 Pokémon(s)!')
    end
  end
end
