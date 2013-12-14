class WordCounter
  def initialize(phrase)
    @phrase = phrase
    @word_bank = {}
    setup_wordbank
  end

  def setup_wordbank
    @words = @phrase.downcase.split' '
    unique_words = @words.uniq
    unique_words.map { |word| @word_bank[word] = 0}
  end

  def count_words
    @words.each do |word|
      @word_bank[word] += 1
    end
    @word_bank
  end

  def highest_values
    count_words
    @word_bank.sort_by{ |k,v| v}.reverse
  end

end



