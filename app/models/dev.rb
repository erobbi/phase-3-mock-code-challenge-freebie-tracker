require 'pry'

class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one(item_name)
        self.freebies.any? do |k|
            k.item_name == item_name
        end        
        #also could use .exists
    end

    def give_away(dev, object)
        object.update(dev: dev)
        #updates freebie owner to dev that was inputted
    end

end

# binding.pry
# 0