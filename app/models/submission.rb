class Submission < ActiveRecord::Base
  validates :title, :link, :password, :description, :name:, :team_name, :email, :genre, :runtime, presence: true
  validates :acept_terms, acceptance: true
end
