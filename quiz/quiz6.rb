require 'pry'

(250..750).to_a.select {|x| x.odd?}
(250..750).to_a.select {|x| x.odd?}.inject(:+)