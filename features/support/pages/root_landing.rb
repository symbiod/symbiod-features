# frozen_string_literal: true

module Pages
  # this page describe home page
  class RootLanding
    include PageObject

    a :bootcamp_button, id: 'join-bootcamp'

    def has_text?(string)
      text.include?(string)
    end
  end
end
