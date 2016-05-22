class ReservesController < ApplicationController
  def index
    @reserves = Reserve.all
  end

  def show
    @reserve = Reserve.find(params[:id])
  end

  def new
    @reserve = Reserve.new
  end

  def edit
    @reserve = Reserve.find(params[:id])
  end

  def create
    @reserve = Reserve.new(reserve_params)

    if @reserve.save
      redirect_to @reserve
    else
      render 'new'
    end
  end

  def update
    @reserve = Reserve.find(params[:id])

    if @reserve.update(reserve_params)
      redirect_to @reserve
    else
      render 'edit'
    end
  end

  def destroy
    @reserve = Reserve.find(params[:id])
    @reserve.destroy

    redirect_to reserves_path
  end

  private
  def reserve_params
    params.require(:reserve).permit(:owner_first_name, :owner_last_name, :pet_name, :notes)
  end
end