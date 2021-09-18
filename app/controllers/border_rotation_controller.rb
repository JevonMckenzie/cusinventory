class BorderRotationController < ApplicationController
  def index
    @border_rotation_export = BorderRotationExport.all
    @border_rotation_import = BorderRotationImport.all
  end

  def new
    exports = BorderRotationExport.new
    imports = BorderRotationImport.new
  end
end
