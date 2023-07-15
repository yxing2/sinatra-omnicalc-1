require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:hello)
end

get("/square/new") do
  erb(:square_new)
end

get("/square/results") do
  @the_num = params.fetch("user_number").to_f
  @the_result = @the_num ** 2
  erb(:square_results)
end

get("/square_root/new") do
  erb(:square_root_new)
end

get("/square_root/results") do
  @the_num = params.fetch("square_root_number").to_f
  @the_result = @the_num ** 0.5
  erb(:square_root_results)
end

get("/random/new") do
  erb(:random_new)
end

get("/random/results") do
  @the_min = params.fetch("minimum").to_f
  @the_max = params.fetch("maximum").to_f
  @the_result = rand * (@the_max - @the_min) + @the_min
  erb(:random_results)
end
