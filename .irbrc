require 'irb/completion' 
require 'hirb' 
Hirb.enable
extend Hirb::Console
$LOAD_PATH <<'.'
load 'lib/genetic_bug.rb'
require "awesome_print"
AwesomePrint.irb!
