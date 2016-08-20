class CreateAboutContents < ActiveRecord::Migration[5.0]
  def change
    create_table :about_contents do |t|
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
