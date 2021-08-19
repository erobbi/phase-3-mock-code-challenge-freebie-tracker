require 'pry'

class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one(item_name)
        self.freebies.any? do |k|
            k.item_name == item_name
        end        
    end

    def give_away(dev_id, item)
        object = Freebie.find_by item_name: item
        object.update(dev_id: dev_id)
        #updates freebie owner to dev that was inputted
        #not quite working
    end

end

# binding.pry
# 0