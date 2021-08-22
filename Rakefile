file 'calc.rexx.rb' => 'calc.rexx' do
  sh 'rex calc.rexx'
end

file 'calc.tab.rb' => 'calc.y' do
  sh 'racc calc.y'
end

task build: ['calc.tab.rb', 'calc.rexx.rb']


