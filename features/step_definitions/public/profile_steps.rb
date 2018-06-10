When('I submit filled profile') do
  @page.fill_and_submit_form({
    first_name_field: 'John',
    last_name_field: 'Smith',
    location_field: 'Russia',
    timezone_field: 'Hawaii',
    cv_url_field: 'https://github.com'
  })
end

When('I accept the policy') do
  @page = @page.submit_accepted_policy
end

Given('system has skills') do
  FactoryBot.create(:skill)
end
