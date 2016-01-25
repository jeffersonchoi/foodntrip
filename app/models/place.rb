class Place < ActiveRecord::Base
  has_many :userplaces
  has_many :users, through: :userplaces

  def self.get_current_time
    t = Time.now
    case t.hour
      when 6..11
        "breakfast"
      when 11..17
        "lunch"
      when 17..23
        "dinner"
      else
        "restaurants"
    end
  end

end
