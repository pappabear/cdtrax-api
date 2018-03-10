class AssessmentArea < ApplicationRecord

    validates_presence_of :code, :description
    
end
