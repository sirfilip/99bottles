class Bottles
  def verse(n)
    "#{row_one(n)}\n#{row_two(n)}\n"
  end

  def verses(start, finish)
    start.downto(finish).inject("") do |acc, n|
      acc << "#{verse(n)}\n"
    end.chomp
  end

  def song
    verses(99, 0)
  end

  private

  def bottles(n)
    if n == 1
      "bottle"
    elsif n > 1
      "bottles"
    elsif n == 0
      "bottles"
    end
  end

  def num(n)
    if n == 0
      "no more"
    else
      n.to_s
    end
  end

  def one(n)
    if n == 1
      "it"
    else
      "one"
    end
  end

  def row_one(n)
    if n > 0
      "#{num(n)} #{bottles(n)} of beer on the wall, #{num(n)} #{bottles(n)} of beer."
    else
      "No more bottles of beer on the wall, no more bottles of beer."
    end
  end

  def row_two(n)
    if n > 0
      "Take #{one(n)} down and pass it around, #{num(n-1)} #{bottles(n-1)} of beer on the wall."
    else
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    end
  end
end
