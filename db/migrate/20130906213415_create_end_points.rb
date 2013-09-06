class CreateEndPoints < ActiveRecord::Migration
  def change
    create_table :end_points do |t|
      t.string :full_path
      t.text :response_body

      t.timestamps
    end
  end
end
