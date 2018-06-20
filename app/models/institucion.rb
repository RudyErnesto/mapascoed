class Institucion < ApplicationRecord
    belongs_to :user 
    validates :nombre,
    presence:{ message:": es necesario un nombre" },
    length:{minimum:2, maximum:20 ,message:"tiene que ser mayor a 1 letra y menor a 20",:allow_blank => TRUE}
end
