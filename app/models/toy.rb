class Toy < ApplicationRecord
    belongs_to :user
    belongs_to :manufacturer
end
