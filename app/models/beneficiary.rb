class Beneficiary < ApplicationRecord

    belongs_to :charity

    validates :need, :phone_number, presence: true
end

