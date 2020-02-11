class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    Actor.each do |object|
      name = object.first_name
    end
    name
  end

end
