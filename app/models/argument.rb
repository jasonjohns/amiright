class Argument < ApplicationRecord
  validates :topic, presence: true,
                    length: { minimum: 5}
end
