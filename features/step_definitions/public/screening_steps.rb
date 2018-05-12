When('I submit screening form with {string}') do |solution_url|
  @page.submit_screening_result(solution_url)
end
