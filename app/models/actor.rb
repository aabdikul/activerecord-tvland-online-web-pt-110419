class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    self.characters.each do |object|
      character_name = object.name
    end
    self.shows.each do |object|
      character_show = object.name
    end
    character_name + "-" + character_show
  end

end
