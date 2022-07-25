class Student < ApplicationRecord
    belongs_to :instuctor

    validates :name, presence: true
    validates :major, presence: true
    validates :age, length: { min: 18 }

end
