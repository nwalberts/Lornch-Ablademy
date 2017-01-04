require 'spec_helper'

# Acceptance Criteria:
#   As a User
#   I want to see a list of clinics for a student
#   So I can decide whether I want to attend that clinic
#   Acceptance Criteria
#   [ ] I must see the title of all the clinics in the database
#   [ ] I should not see a description of the clinic

feature "User views the clinics index page" do

  scenario "user sees a list of clinics" do
    clinic_1 = Clinic.create(title: "Advanced Metaphysical Un-Object Programming", description: "Ugghh wut?", speaker: "Steven Universe")
    clinic_2 = Clinic.create(title: "Big-U Notation", description: "Big O notation but with the letter U", speaker: "Craig Barstow")

    visit '/'

    expect(page).to have_content clinic_1.title
    expect(page).to have_content clinic_2.title

    expect(page).to_not have_content clinic_1.description
    expect(page).to_not have_content clinic_2.description
  end
end
