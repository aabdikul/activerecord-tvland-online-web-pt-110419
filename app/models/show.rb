class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    self.actors.each do |object|
      object.first_name + object.last_name
    end
  end

end
