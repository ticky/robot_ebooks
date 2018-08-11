$debug = false

def log(*args)
  STDERR.print args.map(&:to_s).join(' ') + "\n"
  STDERR.flush
end

module Ebooks
  GEM_PATH = File.expand_path(File.join(File.dirname(__FILE__), '..'))
  DATA_PATH = File.join(GEM_PATH, 'data')
  SKELETON_PATH = File.join(GEM_PATH, 'skeleton')
  TEST_PATH = File.join(GEM_PATH, 'test')
  TEST_CORPUS_PATH = File.join(TEST_PATH, 'corpus/0xabad1dea.tweets')
  INTERIM = :interim
end

require 'robot_ebooks/nlp'
require 'robot_ebooks/archive'
require 'robot_ebooks/sync'
require 'robot_ebooks/suffix'
require 'robot_ebooks/model'
require 'robot_ebooks/bot'
