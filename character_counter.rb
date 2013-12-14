class CharacterCounter

  def initialize(phrase)
    @phrase = phrase
    @characters = phrase.downcase.split''
    @chara_bank = {}
    setup_character_bank
  end

  def setup_character_bank
    unique_chara = @characters.uniq
    unique_chara.map { |chara| @chara_bank[chara] = 0 }
  end

  def count_spaces
    @characters.select{|x| x == ' '}.size
  end

  def count_letters
    @characters.each do |chara|
      unless chara == ' ' || chara.match(/\W/)
        @chara_bank[chara] += 1
      end
    end
    @chara_bank.sort_by{ |k,v| v}.reverse
  end

  def count_symbols
    @characters.each do |chara|
      if chara.match(/\W/) && chara != ' '
        @chara_bank[chara] += 1
      end
    end
    @chara_bank.sort_by{ |k,v| v}.reverse
  end

end
