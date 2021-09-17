class BorderRotationController < ApplicationController
  def index
    @border_rotation_export = BorderRotationExport.all
    @border_rotation_import = BorderRotationImport.all
  end

  def create
  end

  def new
  end
end
