class AddAdminSubjectIdToAdminPage < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_pages, :admin_subject_id, :integer
  end
end
