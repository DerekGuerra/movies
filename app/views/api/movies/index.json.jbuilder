json.array! @movies.each do |movie|
  json.title movie.title
  json.runtime movie.runtime
end