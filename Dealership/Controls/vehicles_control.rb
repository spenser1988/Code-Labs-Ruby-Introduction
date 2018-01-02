class VehiclesControl < ApplicationControl

  def index
    @vehicles = Vehicle.active
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicles::Create.new(vehicle_params).call

    if @vehicle.persisted?
      flash[:notice] = 'Vehicle Entry Successful to the Database.'
      redirect_to(new_vehicle_image_path(@vehicle))
    else
      render :new
    end
  end

  def update
    result = Vehicles::Update.new(@vehicle, vehicle_params).call

    result ? render(:show) : render(:edit)
  end

  def destroy
    Vehicles::Delete.new(@vehicle).call
    flash[:notice] = 'Vehicle Entry Removed from the Database.'
    redirect_to root_path
  end

  def archive
    Vehicles::Archive.new(@vehicle).call
    flash[:notice] = 'Vehicle Entry Archived and no longer visible.'
    redirect_to root_path
  end

  private

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    invalid_vehicle_redirect
  end

  def ensure_active_vehicle
    invalid_vehicle_redirect unless @vehicle.active
  end

  def invalid_vehicle_redirect
    flash[:error] = 'Vehicle Cannot be found in the Inventory'
    redirect_to root_path
  end

  def vehicle_params
    params
      .require(:vehicle)
      .permit(:vin, :year, :make, :model, :mileage, :exterior_color, :interior_color, :drivetrain, :engine, :options, :comments, :asking_price, :interior_material, :transmission, :trim, :body_style)
  end
end
