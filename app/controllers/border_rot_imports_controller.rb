class BorderRotImportsController < ApplicationController
  before_action :set_border_rot_import, only: %i[ show edit update destroy ]

  # GET /border_rot_imports or /border_rot_imports.json
  def index
    @border_rot_imports = BorderRotImport.all
  end

  # GET /border_rot_imports/1 or /border_rot_imports/1.json
  def show
  end

  # GET /border_rot_imports/new
  def new
    @border_rot_import = BorderRotImport.new
  end

  # GET /border_rot_imports/1/edit
  def edit
    
  end

  # POST /border_rot_imports or /border_rot_imports.json
  def create
    @border_rot_import = BorderRotImport.new(border_rot_import_params)

    respond_to do |format|
      if @border_rot_import.save
        format.html { redirect_to @border_rot_import, notice: "Border rot import was successfully created." }
        format.json { render :show, status: :created, location: @border_rot_import }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @border_rot_import.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /border_rot_imports/1 or /border_rot_imports/1.json
  def update
    respond_to do |format|
      if @border_rot_import.update(border_rot_import_params)
        format.html { redirect_to @border_rot_import, notice: "Border rot import was successfully updated." }
        format.json { render :show, status: :ok, location: @border_rot_import }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @border_rot_import.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /border_rot_imports/1 or /border_rot_imports/1.json
  def destroy
    @border_rot_import.destroy
    respond_to do |format|
      format.html { redirect_to border_rot_imports_url, notice: "Border rot import was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_border_rot_import
      @border_rot_import = BorderRotImport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def border_rot_import_params
      params.fetch(:border_rot_import, {})
    end
end
