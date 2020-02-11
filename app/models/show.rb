class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    array = []
    self.actors.each do |object|
      array << object.first_name + " " + object.last_name
    end
    array
  end

end
