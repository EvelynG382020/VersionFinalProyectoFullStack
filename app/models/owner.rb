class Owner < ApplicationRecord
    has_many :properties, dependent: :destroy
   
    acts_as_votable

    def total_property
        properties.count
    end

    def self.search_my_owners(x)
        @my_owners = Owner.all
        my_owner_id_array = []
        @my_owners.each do |my_owner|
            if my_owner.name.include? "#{x}"
                my_owner_id_array.push my_owner.id
            end
        end
        self.where(id: my_owner_id_array)
    end
end

