class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    actors = self.actors
    arr = []
    for actor in actors do
        arr.append(actor.full_name)
    end
    arr
  end
end