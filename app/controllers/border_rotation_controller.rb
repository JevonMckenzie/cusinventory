class BorderRotationController < ApplicationController
  def index
    @border_rotation_export = BorderRotationExport.all
    @border_rotation_import = BorderRotationImport.all
  end
  
  def create
    @border_rotation_export = BorderRotationExport.new(border_rotation_export_params)
    @border_rotation_import = BorderRotationImport.new(border_rotation_import_params)

  end 

  def new
    
  end

  private 
    def border_rotation_export_params
      params.permit(:exporter_name,:vehicle_color,:rot_num,:current_date,:current_time,:goods_description,:license_num,:entry)
    end

    def border_rotation_import_params
      params.permit(:importer_name,:vehicle_color,:rot_num,:current_date,:current_time,:goods_description,:license_num,:entry)
    end
end
