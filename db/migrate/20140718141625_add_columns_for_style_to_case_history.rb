class AddColumnsForStyleToCaseHistory < ActiveRecord::Migration
  def change
    add_column :case_histories, :title_text_color, :string
    add_column :case_histories, :mission_text_color, :string
    add_column :case_histories, :solution_text_color, :string
    add_column :case_histories, :result_text_color, :srting
  end
end
