feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    sign_in_and_plays
    expect(page).to have_content 'Dave vs. Mittens'
  end
end