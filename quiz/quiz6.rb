require 'pry'

puts (250..750).to_a.select {|x| x.odd?}.join(', ')
(250..750).to_a.select {|x| x.odd?}.inject(:+)