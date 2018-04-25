class AssessmentArea < ApplicationRecord

    belongs_to :bank
    has_many :activity
    
    validates_presence_of :code, :description
    
end
