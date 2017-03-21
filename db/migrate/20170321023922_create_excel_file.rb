class CreateExcelFile < ActiveRecord::Migration
  def change
    create_table :excel_files do |t|
      t.string                  :name
      t.string                  :description  
      t.string                  :attachment
      
      t.timestamps
    end
  end
end
