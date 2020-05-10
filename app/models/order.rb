class Order < ApplicationRecord
    belongs_to :delivery
    after_create :order_number

    def order_number
        self.order_number = self.id + 100
        self.save
    end
end
