class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    Actor.all.each do |object|
      object.first_name
    end
  end

end
