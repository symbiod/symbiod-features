module Pages
  class BasePage
    include PageObject

    def has_text?(string)
      text.include?(string)
    end
  end
end
