feature 'Attacking' do
  # scenario 'attacking player 2' do
  #   sign_in_and_plays
  #   click_button 'Attack'
  #   expect(page).to have_content 'Dave attacked Mittens'
  # end

  scenario 'reducing player 2 hp' do
    sign_in_and_plays
    click_button 'Attack'
    expect(page).to have_content 'Mittens: 50HP'
  end
end