module Api
  module V1
    class ProductsController < Api::V1::BaseController
      before_action :set_product, only: %i[ show edit update destroy ]

      # GET /products or /products.json
      def index
        @products = Product.all
        if params[:length].present?
          @products = @products.where(type_of: params[:type_of]&.downcase,
            :length.gte => params[:length],
            :width.gte => params[:width],
            :height.gte => params[:height],
            :weight.gte => params[:weight])
            .sort(["length","asc"])
            .sort(["width","asc"])
            .sort(["height","asc"])
            .sort(["weight","asc"])
          end

        success!(::V1::ProductsBlueprint.render_as_hash(@products.to_a))
      end

      # GET /products/1 or /products/1.json
      def show
        success!(::V1::ProductsBlueprint.render_as_hash(@product))
      end

      # POST /products or /products.json
      def create
        @product = Product.new(product_params)

        if @product.save
          success!(::V1::ProductsBlueprint.render_as_hash(@product))
        else
          fail!(@product.errors.full_messages)
        end
      end

      # PATCH/PUT /products/1 or /products/1.json
      def update
        if @product.update(product_params)
          success!(::V1::ProductsBlueprint.render_as_hash(@product))
        else
          fail!(@product.errors.full_messages)
        end
      end

      # DELETE /products/1 or /products/1.json
      def destroy
        if @product.destroy
          success!()
        else
          fail(@product.errors.full_messages)
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_product
          @product = Product.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def product_params
          params.require(:product).permit(:name, :type_of, :length, :width, :height, :weight)
        end
    end
  end
end
