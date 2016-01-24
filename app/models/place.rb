class Place < ActiveRecord::Base
  has_many :userplaces
  has_many :users, through: :userplaces

  # def myhelper(*args)
  #   obj = self
  #   Array(args).each do |arg|
  #     return nil unless self.respond_to? arg
  #     obj = obj.send(arg)
  #   end
  #   return obj
  # end

end
