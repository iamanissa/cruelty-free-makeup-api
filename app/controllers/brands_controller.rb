class BrandsController < ApplicationController
  include Pagy::Backend

  def index
    @q = Brand.ransack(params[:q])
    @pagy, @brands = pagy(@q.result(distinct: true), items: 10)
  end

  def show
    @brand = Brand.find(params[:id])
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)

    if @brand.save
      redirect_to @brand
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @brand = Brand.find(params[:id])
  end

  def update
    @brand = Brand.find(params[:id])

    if @brand.update(brand_params)
      redirect_to @brand
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @brand = Brand.find(params[:id])
    @brand.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def brand_params
    params.require(:brand).permit(:name, :url, :cruelty_free, :peta, :leaping_bunny)
  end
end
