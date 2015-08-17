class BeerSong

  def sing
    verses(99, 0)
  end

  def verses(start, ending)
    (ending..start).to_a.reverse.map { |n| verse(n) }.join("\n") + "\n"
  end

  def verse(bottles)
    if bottles == 0
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    elsif bottles == 1
      "%s bottle of beer on the wall, %s bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n" % [bottles, bottles]
    elsif bottles == 2
      "%s bottles of beer on the wall, %s bottles of beer.\nTake one down and pass it around, %s bottle of beer on the wall.\n" % [bottles, bottles, bottles - 1]
    else
      "%s bottles of beer on the wall, %s bottles of beer.\nTake one down and pass it around, %s bottles of beer on the wall.\n" % [bottles, bottles, bottles - 1]
    end
  end
end