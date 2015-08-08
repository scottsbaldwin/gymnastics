class UnevenBars < Equipment
  attr :high_bar, :low_bar

  def has_gymnast?
    gymnast != nil
  end

  def swing
  end

  def mount(gymnast)
    if has_gymnast?
      "A gymnast is already on the uneven bars."
    else
      @gymnast = gymnast
      "#{gymnast.name} is now on the uneven bars."
    end
  end

  def dismount
  end
end
