require "json"
tasks = File.read("tasks.json")
h = JSON.parse(tasks)
puts h 