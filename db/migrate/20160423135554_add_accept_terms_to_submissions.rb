class AddAcceptTermsToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :accept_terms, :boolean
  end
end
