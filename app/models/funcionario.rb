class Funcionario < ApplicationRecord
    belongs_to :user 
    belongs_to :institucion
end
