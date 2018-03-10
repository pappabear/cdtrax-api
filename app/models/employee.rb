class Employee < ApplicationRecord

    validates_presence_of :code, :name, :title

end
