require 'spec_helper'

# Acceptance Criteria:
#   As a User
#   I want to click on an individual student
#   So I can see what clinics that student has attended
#   Acceptance Criteria
#   [ ] I can click a link from the student index page that leads me to the show page
#   [ ] On the show page I can see a list of clinics the student is going to
#   [ ] the clinics are links to the clinic show page

feature "User views a student show page" do
  let!(:student) { Student.create(name: "Mikolas Bowelberts") }
  let!(:clinic_1) { Clinic.create(name: "Shmuginamugana", description: "Essential mugnas", speaker: "Professor Phooey") }
  let!(:clinic_2) { Clinic.create(name: "Advanced Metaphysical Un-Object Programming", description: "Ugghh wut?", speaker: "Steven Universe") }
  let!(:clinic_3) { Clinic.create(name: "Big-U Notation", description: "Big O notation but with the letter U", speaker: "Craig Barstow") }
  let!(:signup_1) { Signup.create(student: student, clinic: clinic_1) }
  let!(:signup_2) { Signup.create(student: student, clinic: clinic_2) }

  scenario "user sees a clinics name, description, speaker, and comments" do
    visit '/students'
    click_on student.name

    expect(page).to have_content clinic_1.name
    expect(page).to have_content clinic_2.name
    expect(page).to_not have_content clinic_3.name
  end
end
