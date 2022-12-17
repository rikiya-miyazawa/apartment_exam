class ApartmentsController < ApplicationController
  before_action :set_apartment, only: [:show, :edit, :update, :destroy, ]

  def index
    @apartments = Apartment.all
  end

  def new
    @apartment = Apartment.new
  end

  def create
    @apartment = Apartment.new(apartment_params)
    if params[:back]
      render :new
    elsif @apartment.save
      redirect_to apartments_path, notice: "物件を登録しました！"
    else
      render :new
    end
  end
  
  def show
  end

  def edit
  end

  def update
    if @apartment.update(apartment_params)
      redirect_to apartments_path, notice: "編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @apartment.destroy
    redirect_to apartments_path, notice: "物件を削除しました！"
  end

  def confirm
    @apartment = Apartment.new(apartment_params)
    render :new if @apartment.invalid?
  end

  private

  def apartment_params
    params.require(:apartment).permit(:apartment_name, :rent, :address, :year_old, :remarks)
  end

  def set_apartment
    @apartment = Apartment.find(params[:id])
  end
end