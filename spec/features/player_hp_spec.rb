feature 'Displaying Player HP' do
  scenario 'Checking Player 2s HP' do
    sign_in_and_plays
    expect(page).to have_content 'Mittens: 60HP'
  end
end