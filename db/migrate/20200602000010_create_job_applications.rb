class CreateJobApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :job_applications do |t|
      t.string :company
      t.string :role
      t.boolean :heard_back
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
