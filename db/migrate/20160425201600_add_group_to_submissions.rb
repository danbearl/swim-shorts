class AddGroupToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :group, :string
  end
end
