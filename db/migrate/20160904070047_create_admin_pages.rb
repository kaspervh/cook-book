class CreateAdminPages < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_pages do |t|
      t.string :headder
      t.string :content

      t.timestamps
    end
  end
end
