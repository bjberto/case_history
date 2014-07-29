class CreateCaseHistories < ActiveRecord::Migration
  def change
    create_table :case_histories do |t|
      t.string :company_name
      t.datetime :start_at
      t.datetime :end_at
      t.string :title
      t.string :mission_title
      t.text :mission_description
      t.string :solution_title
      t.text :solution_description
      t.string :result_title
      t.text :result_description

      t.timestamps
    end
  end
end
