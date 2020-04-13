    def bool_to_word bool
        if bool
            return 'Yes'
        else
            return 'No'
        end
    end

    puts bool_to_word(false)