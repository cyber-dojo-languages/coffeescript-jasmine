
lambda { |stdout,stderr,status|
  output = stdout + stderr
  pattern = /(\d+) test(s?), (\d+) assertion(s?), (\d+) failure(s?), (\d+) skipped/
  if match = pattern.match(output)
    match[5] == '0' ? :green : :red
  else
    :amber
  end
}
