When('I submit filled profile') do
  @page.fill_and_submit_form({
    first_name_field: 'John',
    last_name_field: 'Smith',
    location_field: 'Russia',
    timezone_field: 'Hawaii',
    cv_url_field: 'https://github.com'
  })
end
