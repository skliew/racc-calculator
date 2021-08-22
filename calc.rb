require_relative './calc.tab.rb'

parser = CalcParser.new
while true
  print '>>> '; $stdout.flush
  str = $stdin.gets.strip
  break if /q/i =~ str
  begin
    p parser.scan_str(str)
  rescue ParseError
    puts 'parse error'
  end
end
