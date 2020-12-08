module PropertiesConcern
  extend ActiveSupport::Concern

  def property_params
    params.require(:property).permit(:name, :rent, :address, :age, :note, stations_attributes: %i(route name minutes_foot property_id id _destroy))
  end

  def set_property
    @property = Property.find(params[:id])
  end
 end
