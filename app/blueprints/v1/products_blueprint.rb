module V1
  class ProductsBlueprint < Blueprinter::Base

    identifier(:_id)
  
    fields :name, :type_of, :length, :width, :height, :weight

  end
end