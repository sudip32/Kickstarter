class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :profile_hit
      t.references :student

      t.timestamps
    end
    add_index :profiles, :student_id
  end
end
