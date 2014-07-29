class AddColunBackground1ToCaseHistory < ActiveRecord::Migration
  def change
  	add_column :case_histories, :background1, :string
  end
end
