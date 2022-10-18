class Freebie < ActiveRecord::Base
    belongs_to :company
    belongs_to :dev

    def print_details
        "#{dev.name} owns a #{freebie.item_name} from #{company.name}"
    end

end









# def print_details
#     "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
# end
