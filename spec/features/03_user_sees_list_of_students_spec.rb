require 'spec_helper'

# Acceptance Criteria:
#   As a User
#   I want to see a list of students
#   So I can spy on them
#   Acceptance Criteria
#   [ ] I must see the name of all the students in the database

feature "User views the student index page" do

  scenario "user sees a list of students" do
    student_1 = Student.create(name: "Jalix Arvis")
    student_2 = Student.create(name: "Seabass Bourkenstein")

    visit '/students'

    expect(page).to have_content student_1.name
    expect(page).to have_content student_2.name
  end
end
