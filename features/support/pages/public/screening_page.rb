module Pages
  module Public
    class ScreeningPage < BasePage
      text_field :solution_url_field, id: 'developer_test_task_result_link'
      button :submit_screening_result_button, value: 'Submit'

      def submit_screening_result(link)
        self.solution_url_field = link
        submit_screening_result_button
      end
    end
  end
end
