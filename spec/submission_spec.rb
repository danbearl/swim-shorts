require 'rails_helper'

RSpec.describe Submission, type: :model do
  it "generates its own rubric" do
    sub = Submission.create!(
      name: "Bob",
      title: "A Film",
      link: "http://vimeo.com",
      password: "radical",
      description: "foo",
      team_name: "bar",
      email:"foo@example.com",
      genre: "horror",
      runtime: "5",
      group: "College",
      accept_terms: true
    )

    rubric = sub.rubric

    expect(rubric).to include("Video Title: A Film")
    expect(rubric).to include("Age Group: College")
  end
end
