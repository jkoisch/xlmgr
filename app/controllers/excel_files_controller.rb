class ExcelFilesController < ApplicationController
  
  def index
      @excel_files = ExcelFile.all
   end
   
   def new
      @excel_file = ExcelFile.new
   end
   
   def create
      @excel_file = ExcelFile.new(excel_file_params)
      
      if @excel_file.save
         redirect_to excel_files_path, notice: "The Excel File #{@excel_file.name} has been uploaded."
      else
         render "new"
      end
      
   end
   
   def destroy
      @excel_file = ExcelFile.find(params[:id])
      @excel_file.destroy
      redirect_to excel_files_pathst, notice:  "The Excel File #{@excel_file.name} has been deleted."
   end
   
   private
      def excel_file_params
      params.require(:excel_file).permit(:name, :description, :attachment)
   end
end