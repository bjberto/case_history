class AddColunBackgroundToCaseHistory < ActiveRecord::Migration
  def change
  	add_column :case_histories, :background_image, :string
  	add_column :case_histories, :background_title, :string
  	add_column :case_histories, :background_mission, :string
  	add_column :case_histories, :background_solution, :string
  	add_column :case_histories, :background_result, :string
  	add_column :case_histories, :background_image_history, :string
  	add_column :case_histories, :image_logo, :string

  end
end
