class CalcParser

prechigh
left MUL DIV
left ADD SUB
preclow
options no_result_var
token NUMBER ADD SUB MUL DIV

rule
  exp : NUMBER { val[0] }
      | exp ADD exp { val[0] + val[2] }
      | exp SUB exp { val[0] - val[2] }
      | exp MUL exp { val[0] * val[2] }
      | exp DIV exp { val[0] / val[2] }
end

---- header
#
---- inner
require_relative './calc.rexx'
