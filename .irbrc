require 'irb/completion' 
require 'hirb' 
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 200
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
Hirb.enable
extend Hirb::Console

def gc(id = 3)
  reload!
  GenBug::GrammarChromosome.new(grammar: Grammar.find(id))
end

def sg(id = 3)
  reload!
  GenBug::GrammarChromosome.new(grammar: Grammar.find(id)).to_s_gram
end

def cyc(id = 3)
  reload!
  x = GrammarJobs::Revise.new(id)
  x.cyclic_rules
end

def ugrn(id = 3)
  reload!
  x = GrammarJobs::Revise.new(id)
  x.ungrounded_tokens
end

def urch(id = 3)
  reload!
  x = GrammarJobs::Revise.new(id)
  x.unreachable_tokens
end

def rho(id = 3)
  reload!
  GrammarJobs::BuildRhoMethod.new.perform(grammar_id: id)
end

$LOAD_PATH << '.'
load 'lib/genetic_bug.rb'
require "awesome_print"
AwesomePrint.irb!

