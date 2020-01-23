module PeopleHelper
  def email_frequencies(people)
    chars = Hash.new(0) # sets default value for any key to 0

    people.each do |p|
      str = p['email_address']
      chars = str.each_char.each_with_object(chars) do |char, result|
        result[char] += 1
      end
    end

    chars.sort_by { |_k, v| v }.reverse
  end

  def options_for_threshold(selected_value)
    selected = selected_value.blank? ? '0.88' : selected_value
    options = ['0.80', '0.85', '0.88', '0.90', '0.92', '0.93',
               '0.94', '0.95', '0.96', '0.97', '0.98', '0.99']
    options_for_select(options, selected)
  end
end
