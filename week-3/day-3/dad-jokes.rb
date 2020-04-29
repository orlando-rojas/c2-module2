require 'http'
puts HTTP.headers("accept" => 'text/plain').get 'https://icanhazdadjoke.com/'