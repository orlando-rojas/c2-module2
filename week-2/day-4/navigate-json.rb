require "json"

json = '
{
  "squadName": "Super hero squad",
  "homeTown": "Metro City",
  "formed": 2016,
  "secretBase": "Super tower",
  "active": true,
  "members": [
    {
      "name": "Molecule Man",
      "age": 29,
      "secretIdentity": "Dan Jukes",
      "powers": [
        "Radiation resistance",
        "Turning tiny",
        "Radiation blast"
      ]
    },
    {
      "name": "Madame Uppercut",
      "age": 39,
      "secretIdentity": "Jane Wilson",
      "powers": [
        "Million tonne punch",
        "Damage resistance",
        "Superhuman reflexes"
      ]
    }
  ]
}
'

squad = JSON.parse(json)

puts "Our squad is called #{squad['squadName']}"
puts "We are from #{squad['homeTown']}"
puts "Our team started back in #{squad['formed']}"
puts "Our members are:"
squad["members"].each do |member|
    puts "- #{member["name"]}"
    puts "\t- Age: #{member["age"]}"
    print "\t- Superpowers: "
    member["powers"].each_with_index do |x,y|
        print x
        print "." if y == member["powers"].length-1
        print " and " if y== member["powers"].length-2
        print ", " if (y != member["powers"].length-1) && (y != member["powers"].length-2)
    end
    print "\n"
end