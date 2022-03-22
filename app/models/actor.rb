class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    arr = []
    characters = self.characters
    for character in characters do
        arr.append("#{character.name} - #{character.show.name}")
    end
    arr
  end

end