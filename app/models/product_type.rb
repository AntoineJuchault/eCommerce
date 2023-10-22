class ProductType < ApplicationRecord
    has_many :products

    validates :type_id, presence: :true 

end
