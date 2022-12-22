class ApartmentsController < ApplicationController
  before_action :set_apartment, only: %i(show edit update destroy)

  def index
    @apartments = Apartment.all
  end

  def new
    @apartment = Apartment.new
    2.times {@apartment.stations.build}
  end

  def create
    @apartment = Apartment.new(apartment_params)
    if @apartment.save
      redirect_to apartments_path, notice: "物件を登録しました！"
    else
      render :new
    end
  end
  
  def show
    @stations = @apartment.stations
  end

  def edit
    @stations = @apartment.stations.count
    @apartment.stations.build #新しく最寄り駅を追加する記述
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
    redirect_to action: 'index'
  end

  private

  def apartment_params
    params.require(:apartment).permit(:apartment_name, :rent, :address, :year_old, :remarks, 
                                      stations_attributes: %i(id train_line station_name minutes_walk)) 
  end

  def set_apartment
    @apartment = Apartment.find(params[:id])
  end
end
