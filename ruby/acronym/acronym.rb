class Acronym

  VERSION = 1

  def self.abbreviate(phrase)
    Acronym.new(phrase).abbrev
  end

  def abbrev
    initials.join
  end

  private

  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def initials
    components.map { |w| w.chars.first.upcase }
  end

  def components
    words.map(&method(:deconstruct)).flatten
  end

  def words
    phrase.split(' ')
  end

  def deconstruct(word)
    deconstruct = word.scan(/[A-Z][a-z]+/)
    deconstruct.empty? ? word.split('-') : deconstruct
  end

end