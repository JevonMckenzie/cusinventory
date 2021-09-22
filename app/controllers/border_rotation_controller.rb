class BorderRotationController < ApplicationController
  def index
    @border_rotation_export = BorderRotationExport.all
    @border_rotation_import = BorderRotationImport.all
  end
  
  def create_export
    
    
  end 

  def create
    if params[:export_submit]
      @border_rotation_export = BorderRotationExport.new(border_rotation_export_params)
      @border_rotation_import = nil
      respond_to do |format|
        if @border_rotation_export.save
          flash[:success] = "Export successfully created"
          format.html { render :new }
          else
          flash[:error] = "Export was not created."
        end
      end
    else
      @border_rotation_import = BorderRotationImport.new(border_rotation_import_params)
      @border_rotation_export = nil
      respond_to do |format|
        if @border_rotation_import.save
          flash[:success] = "Export successfully created"
          format.html { render :new }
          else
          flash[:error] = "Export was not created."
        end
      end
    end
  end 

  def new
    @border_rotation_export = BorderRotationExport.new
    @border_rotation_import = BorderRotationImport.new
  end

  private 
    def border_rotation_export_params
      params.require(:border_rotation_export).permit(:exporter_name,:vehicle_color,:rot_num,:current_date,:current_time,:goods_description,:license_num,:entry)
    end

    def border_rotation_import_params
      params.require(:border_rotation_import).permit(:importer_name,:vehicle_color,:rot_num,:current_date,:current_time,:goods_description,:license_num,:entry)
    end
end
