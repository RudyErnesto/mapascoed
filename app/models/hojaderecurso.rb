class Hojaderecurso < ApplicationRecord
    belongs_to :user 
    belongs_to :location
    has_many :has_recursos
    has_many :institucions, through: :has_recursos
    #after_create :save_categories
    #validates :nombrequipo,
    #presence:{ message:": es necesario un nombre" },
    #length:{minimum:2, maximum:20 ,message:"tiene que ser mayor a 1 letra y menor a 20",:allow_blank => TRUE}
    def categories=(value)
  	@categories = value
  	end


  private
    def save_categories
      @categories.each do | category_id |
        HasRecurso.create(institucion_id: category_id, hojaderecurso_id: self.id)
  	   end
  end

  def busquedacategoria (value)
   return HasRecurso.where(hojaderecurso_id: self.id, institucion_id: value)
  end



  def update_categories
    @categories.each do |category_id|
       nuevo = busquedacategoria(category_id)
        if nuevo.present?
         HasRecurso.where(book_id: self.id, category_id: category_id).delete_all
        else
         HasRecurso.create(category_id: category_id, book_id: self.id)
        end
    end
  end
end
