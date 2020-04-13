class Candidate 

    attr_reader :years_of_experience, :github_points, :languages_worked_with, :applied_recently, :age

    def initialize(years_of_experience,github_points,languages_worked_with, applied_recently, age)
        @years_of_experience = years_of_experience
        @github_points = github_points
        @languages_worked_with = languages_worked_with
        @applied_recently = applied_recently
        @age = age
    end

end

diego = Candidate.new(4,293,['C', 'Ruby', 'Python', 'Clojure'],false,26)

def is_an_experienced_ruby_programmer candidate
    if ( (candidate.years_of_experience >= 2 || candidate.github_points >= 500) && (candidate.languages_worked_with.include? 'Ruby') && !(candidate.age < 15 || candidate.applied_recently) )
        return true
    else
        return false
    end
end

puts is_an_experienced_ruby_programmer(diego)
