#hashing

class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words = extract
    words.each_with_object(Hash.new(0)) { |word, count| count[word] += 1 }
  end

  private

  def extract
    @phrase.downcase.split(/[^A-Za-z0-9']/).reject(&:empty?)
  end
end