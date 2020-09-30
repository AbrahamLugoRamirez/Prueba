class Tweet < ApplicationRecord
     validates_length_of :description, :maximum => 1, :presence => { message: "No puede dejarse vacío" }
    

end
