class Tweet < ApplicationRecord
    validates_length_of :description, :maximum => 280, :minimum =>1, :presence => { message: "No puede dejarse vacío" }
    belongs_to :user
end
