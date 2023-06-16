class Book < ApplicationRecord
    validates :description, presence: true, length: {minimum: 10}
    validates :price, presence: true, numericality: { greater_than: 0 }
    validates :name, presence: true
end
