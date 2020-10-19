class Recurso < ApplicationRecord
    belongs_to :institucion
    belongs_to :user 
end
