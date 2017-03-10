After do |scenario|
  if scenario.passed?
    puts "passed: #{scenario.methods}"
  end
end

Before do |scenario|
  if scenario.passed?
    puts "Starting: #{scenario.feature.name}"
      puts "Starting: #{scenario.name}"
  end
end

Around do |scenario, block|
  puts scenario.keyword
  block.call
end
