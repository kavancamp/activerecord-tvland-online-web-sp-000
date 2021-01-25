class Show < ActiveRecord::Base
  has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def full_name
        "#{self.first_name} #{self.last_name}"
      end

    def actors_list
    self.actors.collect {|actor| "#{actor.first_name} - #{actor.last_name}"}.join(", ")
  end
end
