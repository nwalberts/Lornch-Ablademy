require 'spec_helper'

# Acceptance Criteria:
#   As a User
#   I want to click an individual clinic
#   So I can see the details of that clinic and its comments
#   And all the students that signed up for that clinic

#   Acceptance Criteria
#   [ ] I can click a link from the index page that leads me to the show page
#   [ ] On the show page I can see details about the clinic and its comments
#   [ ] I should see all of the the students that are attending the clinic
#   [ ] I should not see details / reviews of other clinics

feature "User views a clinics show page" do

  scenario "user sees a clinics name, speaker, description, and reviews" do
    clinic_1 = Clinic.create(name: "Advanced Metaphysical Un-Object Programming", description: "Ugghh wut?", speaker: "Steven Universe")
    clinic_2 = Clinic.create(name: "Big-U Notation", description: "Big O notation but with the letter U", speaker: "Craig Barstow")

    review_1 = Comment.create(clinic: clinic_1, asker: "Connie", body: "But how does one...program exactly?")
    review_2 = Comment.create(clinic: clinic_2, asker: "Ben", body: "You spelled comment wrong")

    student = Student.create(name: "That one guy")
    signup = Presentation.create(student: student, clinic: clinic_1)

    visit '/clinics'
    click_on clinic_1.name

    expect(page).to have_content clinic_1.name
    expect(page).to have_content clinic_1.description
    expect(page).to have_content student.name
    expect(page).to have_content review_1.username
    expect(page).to have_content review_1.body

    expect(page).to_not have_content clinic_2.name
    expect(page).to_not have_content clinic_2.description
    expect(page).to_not have_content review_2.username
    expect(page).to_not have_content review_2.body
  end
end
