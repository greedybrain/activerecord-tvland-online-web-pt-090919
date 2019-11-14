class Actor < ActiveRecord::Base

    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles 
        roles = Actor.all.collect do |actor|
            "#{actor.characters[0].name} - #{actor.shows[0].name}"
        end
        roles
    end

end