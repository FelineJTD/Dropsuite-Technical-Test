require 'fileutils'

path = '../test/DropsuiteTest/**/*'

num_of_same_content = {}

Dir.glob(path).each do |file|
  next if File.directory?(file) # skip the loop if the file is a directory
  # puts file

  same = false
  num_of_same_content.each_key do |key|
    if FileUtils.cmp(file, key)
      num_of_same_content[key] += 1
      same = true
      break
    end
  end

  if !same
    num_of_same_content[file] = 1
  end
end

num_of_same_content.values.sort
file, occurences = num_of_same_content.first
puts file
puts occurences