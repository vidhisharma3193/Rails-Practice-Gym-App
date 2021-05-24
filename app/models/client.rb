class Client < ApplicationRecord
    has_many :memberships
    has_many :gyms, through: :memberships


    # Bonus
    def total_amount
        self.memberships.sum{|membership| membership.charge }
    end
end