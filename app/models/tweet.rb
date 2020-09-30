class Tweet < ApplicationRecord
     validates_length_of :description, :maximum => 200, :minimum =>1, :presence => { message: "No puede dejarse vacío" }
    

end
