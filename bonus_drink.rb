class BonusDrink
  class << self
    def total_count_for(amount)
      bonus = bonus_count_for(amount)
      total = amount + bonus
      total
    end

    private

    def bonus_count_for(amount)
      bonus = amount / 3
      remain = amount % 3
      rebonusable = bonus + remain
      if rebonusable >= 3
        bonus + bonus_count_for(rebonusable)
      else
        bonus
      end
    end
  end
end
