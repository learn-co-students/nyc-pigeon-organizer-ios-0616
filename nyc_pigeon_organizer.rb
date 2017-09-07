pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}


def nyc_pigeon_organizer(data)
  # write your code here!
  result = {}
  data.each do |first, second|
    # puts "#{first} is #{second}"
    # puts "new hash is  #{result}"
    # puts "first is   #{first}"
    # puts "second is   #{second}"
    # puts "result is  #{result}"
    second.each do |third, name|
      name.each do |name|
        result[name] ||= {}
        result[name][first] ||= []
        result[name][first] << third.to_s
        # puts result
        # puts name
      end
      # puts "#{third} is #{name}"
      # puts result
    end
  end
result
end

# nyc_pigeon_organizer(pigeon_data)
