class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :title
      t.string :link
      t.string :password
      t.text :description
      t.string :name
      t.string :team_name
      t.string :email
      t.string :genre
      t.string :runtime

      t.timestamps null: false
    end
  end
end
