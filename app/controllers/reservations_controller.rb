class ReservationsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_reservation, only: [:show, :update, :destroy, :cancel]

  # GET /reservations
  # GET /reservations.json
  def index
    @reservations = Reservation.all
  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
  end

  # GET /reservations/new
  def new
    @restaurant = Restaurant.find_by_slug(params[:restaurant_id])
    @reservation = Reservation.new
  end

  # GET /reservations/1/edit
  def edit
    @restaurant = Restaurant.find_by_slug(params[:restaurant_id])
    @reservation = Reservation.find(params[:id])
  end

  # POST /reservations
  # POST /reservations.json
  def create
    @restaurant = Restaurant.find_by_slug(params[:restaurant_id])
    @reservation = @restaurant.reservations.new(reservation_params)
    @reservation.added_by = current_user.id

    if @reservation.save!
      redirect_to restaurant_path(@restaurant), notice: 'Reservation was successfully created.'
    else
      render action: 'new'
    end

    #redirect_to restaurant_path(@restaurant)

    # respond_to do |format|
    #   if @reservation.save
    #     format.html { redirect_to @reservation, notice: 'Reservation was successfully created.' }
    #     format.json { render action: 'show', status: :created, location: @reservation }
    #   else
    #     format.html { render action: 'new' }
    #     format.json { render json: @reservation.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /reservations/1
  # PATCH/PUT /reservations/1.json
  def update
    @restaurant = Restaurant.find_by_slug(params[:restaurant_id])
    respond_to do |format|
      if @reservation.update(reservation_params)
        format.html { redirect_to @restaurant, notice: 'Reservation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_path(params[:restaurant_id]) }
      format.json { head :no_content }
    end
  end

  def cancel
    @reservation.update(:canceled_at => Time.now, :canceled_by => current_user.id)
    redirect_to restaurant_path(params[:restaurant_id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:starts_at, :ends_at, :person_count, :email, :name, :phone, :special_wishes, :added_by, :updated_by, :canceled_by, :canceled_at)
    end
end
