class CalcParser
macro
  BLANK         \s+
  DIGIT         \d+
rule
  {BLANK}
  {DIGIT}\.{DIGIT} { [:NUMBER, text.to_f] }
  {DIGIT}          { [:NUMBER, text.to_i] }
  \+               { [:ADD, nil] }
  -                { [:SUB, nil] }
  \*               { [:MUL, nil] }
  \/               { [:DIV, nil] }
  .|\n             { [text, text] }
inner
end
