class Contact
    attr_accessor :name, :phone
    def initialize(name, phone)
        @name = name.to_sym
        @phone = phone
    end
end

class ContactBook

    attr_accessor :contact_list

    def initialize()
        @contact_list = {
            :juan => "123",
            :miguel => "456"
        }
    end

    def add(contact)
        if(!contact.is_a? Contact)
            return puts 'Invalid Contact'
        end

        if @contact_list[contact.name].nil?
            @contact_list[contact.name] = contact.phone
        else
            puts 'Contact already exists'
        end
    end

    def update(contact, newphone)
        if(!contact.is_a? Contact)
            return puts 'Invalid Contact'
        end

        if @contact_list[contact.name].nil?
            puts "Contact doesn't exist"
        else
            @contact_list[contact.name] = newphone
        end
    end

    def display
        puts '----------------'
        @contact_list.each do |x,y|
            puts "#{x}: #{y}"
        end
        puts '----------------'
    end

    def delete(contact)
        if(!contact.is_a? Contact)
            return puts 'Invalid Contact'
        end

        if(@contact_list[contact.name].nil?)
            puts "Contact doesn't exist"
        else
            @contact_list.delete(contact.name)
        end
    end
end

antony = Contact.new("Antony","991317392")
book = ContactBook.new

book.display
book.add(antony)
book.display
book.update(antony, 789)
book.display
book.delete(antony)
book.display