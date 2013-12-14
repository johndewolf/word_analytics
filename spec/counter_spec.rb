require 'rspec'
require_relative '../word_counter'

describe WordCounter do
  it 'returns a hash of words counted' do
    expect(WordCounter.new('test for the test').count_words).to eql({"test"=>2, "for"=>1, "the"=>1})
  end

  it 'returns the top word' do
    expect(WordCounter.new('the the best test test test ').highest_values[0][0]).to eql('test')
  end

  it 'returns the second highest word' do
    expect(WordCounter.new('the the best test test test ').highest_values[1][0]).to eql('the')
  end

  it 'returns the third highest word' do
    expect(WordCounter.new('the the best test test test ').highest_values[2][0]).to eql('best')
  end

end
