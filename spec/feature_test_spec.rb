feature "Tech Test Home Page" do
  scenario 'A server is available on http://localhost:4000 to receive requests' do
    visit 'http://localhost:4000'
    expect(page).to have_content 'Key'
  end

  scenario 'posting to set' do
    visit '/'
    fill_in 'key', with: 'my_key'
    fill_in 'value', with: 'my_value'
    click_button 'send'
    expect(page).to have_content "my_value"
  end
end
