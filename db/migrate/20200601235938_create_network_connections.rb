class CreateNetworkConnections < ActiveRecord::Migration[6.0]
  def change
    create_table :network_connections do |t|
      t.string :name
      t.string :company
      t.string :contact_type
      t.string :email
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
