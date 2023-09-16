class Order < ApplicationRecord
  belongs_to :user
  validates :product_count, presence: true
  validates :delivery_status, presence: true, inclusion: {in: ["En Attente", "En cours de livraison", "Livrée"  ]}
end
