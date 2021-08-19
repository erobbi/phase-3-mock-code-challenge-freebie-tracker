class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebie


    def give_freebie(dev, item_name, value)
        binding.pry
        Freebie.create(item_name: item_name, value: value, dev_id: dev, company_id:self.id)
    end

    def self.oldest_company
        Company.all.order(:founding_year).first
    end

end

# TO DO:    migrations (done)
#           object association methods (done)
#               Freebie
            # Company
            #   Company#freebies
            #      returns a collection of all the freebies for the Company
            #   Company#devs
            #      returns a collection of all the devs who collected freebies from the Company
            # Dev
            #   Dev#freebies
            #      returns a collection of all the freebies that the Dev has collected
            #   Dev#companies
            #      returns a collection of all the companies that the Dev has collected freebies from