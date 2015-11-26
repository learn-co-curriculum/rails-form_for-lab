require 'rails_helper'

feature 'Route to view' do
  scenario 'has an index page' do
    visit students_path

    expect(page.status_code).to eq(200)
  end
end

feature 'Multiple students are shown' do
  scenario 'on the index page' do
    Student.create!(first_name: "Daenerys", last_name: "Targaryen")
    Student.create!(first_name: "Lindsey", last_name: "Stirling")

    visit students_path

    expect(page).to have_content(/Daenerys|Lindsey/)
  end
end