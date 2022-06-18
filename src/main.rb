require 'fileutils'

if ARGV.length != 1
  puts 'Usage: ruby main.rb <path/to/directory>'
  exit
end

path = ARGV[0]

if !File.directory?(path) # check if the path is a directory
  puts 'The path is not a directory'
  exit
end

num_of_same_content = {}

Dir.glob(path + '/**/*').each do |file|
  next if File.directory?(file) # skip the loop if file is a directory

  same = false # set same to false
  num_of_same_content.each_key do |key|
    if FileUtils.cmp(file, key) # same file is found
      num_of_same_content[key] += 1 # add number of occurences
      same = true # set same to true
      break
    end
  end

  if !same
    num_of_same_content[file] = 1 # register the file to the hash for next checks
  end
end

num_of_same_content = num_of_same_content.sort_by { |k, v| v } # sort hash by values (number of occurences)
file, occurences = num_of_same_content.last # get the last file (the most common)

if file == nil # Directory is empty
  puts 'Directory is empty'
else
  file = File.open(file) # read file content
  puts file.read + " " + occurences.to_s # output
  file.close # close file
end