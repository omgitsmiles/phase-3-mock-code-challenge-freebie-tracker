class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item)
     self.freebies.any?{ |freebie| freebie.item_name.downcase == item.downcase }
        # self.freebies.find { |freebie| freebie.item_name == item} + define in var w cond true/false
    end

    def give_away(dev, freebie)
        # if freebies dev id equals the devs id, dev should own that freebie
        if freebie.dev_id == self.id
            # reassign the freebie to the arg dev by their id
            freebie.dev_id = dev.id
            # save to persist 
            freebie.save
        end
    end
end
