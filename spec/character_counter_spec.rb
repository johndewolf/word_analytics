require_relative '../character_counter'

describe CharacterCounter do

  it 'returns the number of spaces' do
    expect(CharacterCounter.new('tesisty test yall').count_spaces).to eql(2)
  end

  it 'returns a hash of characters counted' do
    expect(CharacterCounter.new('tesisty test yall').count_letters).to be_a(Array)
  end

  it 'returns the highest value' do
    expect(CharacterCounter.new('tesisty test yall').count_letters[0][0]).to eql('t')
  end

  it 'counts symbols' do
    expect(CharacterCounter.new('Like my $ l@ke my r@t').count_symbols[0][0]).to eql('@')
  end
end
