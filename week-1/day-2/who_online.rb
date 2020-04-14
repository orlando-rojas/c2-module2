def who_is_online(friends)
    statuses = {}
    friends.each do |friend|
        if (friend["status"] == "online" && friend["last_activity"] > 10) then
            statuses["away"] = (statuses["away"] ||= []) << friend["username"]
        else 
            statuses[friend["status"]] = (statuses[friend["status"]] ||= []) << friend["username"]
        end
    end
    statuses
end

#----------------TEST----------------
f = [{"username"=> "David", "status"=> "online", "last_activity"=> 10},
    {"username"=> "Lucy", "status"=> "offline", "last_activity"=> 22},
    {"username"=> "Bob", "status"=> "online", "last_activity"=> 104}]

puts who_is_online(f)