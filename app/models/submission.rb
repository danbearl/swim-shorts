class Submission < ActiveRecord::Base
  validates :title, :link, :password, :description, :name, :team_name, :email, :genre, :runtime, :group, presence: true
  validates :acept_terms, acceptance: true

  def rubric
    "Link: #{self.link}\n"\
    "Password: #{self.password}\n\n"\
    "Age Group: #{self.group}\n\n"\
    "Video Title: #{self.title}\n"\
    "Team Name: #{self.team_name}\n\n"\
    "For the following section, please award 1 to 5 points for each item.\n"\
    "\t1. Very poor, ineffective\n"\
    "\t2. Poor, ineffective\n"\
    "\t3. Average, neutral, not applicable\n"\
    "\t4. Good, effective\n"\
    "\t5. Very good, effective\n\n\n"\
    "Story\n"\
    "Is the story original?\n"\
    "Did the team use the theme creatively?\n"\
    "Are the plot and characters well written?\n"\
    "Is the video entertaining?\n\n"\
    "Subtotal:\n\n"\
    "Production\n"\
    "Was the camerawork effective?\n"\
    "How well was the audio recorded?\n"\
    "How well was the audio mixed?\n"\
    "Were the scenes lit well?\n"\
    "Was the video edited well?\n"\
    "Were the actors effective?\n"\
    "How did you feel about the directing?\n\n"\
    "Subtotal:\n\n"\
    "Additional comments or points you would like to award:\n\n"\
    "Total Score:\n"
  end
end
