# frozen_string_literal: true

module Pages
  # this page describe home page
  class BootcampLanding
    include PageObject

    a :join_button, id: 'join-via-github'

    def has_text?(string)
      text.include?(string)
    end
  end
end
