class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie(dev, item, value)
        Freebie.create(item_name: item, value: value, dev: dev, company_id: self.id)
    end

    def self.oldest_company
        self.order(:founding_year).first
        # or .limit(1) return an array with 1 result [0] to eliminate the array
    end

end
