contact_list = {
    :juan => "999888777",
    :miguel => "666555444"
}
  
puts "What would you like to do?
-- Type 'add' to add a contact.
-- Type 'update' to update a contact.
-- Type 'display' to display all contacts.
-- Type 'delete' to delete a contact."

operation = gets.chomp.downcase.to_sym
  
case operation
    when :add
        print "Name for the new contact "
        name = gets.chomp.to_sym
        if contact_list[name].nil?
            print "Phone number "
            phone = gets.chomp
            contact_list[name] = phone
        else
        puts "Contact already exists"
        end
    when :update
        print "Name of the contact to update "
        name = gets.chomp.to_sym
        if contact_list[name].nil?
            puts "Contact doesn't exist"
        else
            print "New phone number "
            phone = gets.chomp
            contact_list[name] = phone
      end
    when :display
        contact_list.each do |name, phone|
            puts "#{name}: #{phone}"
        end
    when :delete
        print "Name of the contact to delete "
        name = gets.chomp.to_sym
        if contact_list[name].nil?
            puts "Contact doesn't exist"
        else
            contact_list.delete(name)
        end
    else
      puts "Invalid Operation!"
  end

  puts contact_list