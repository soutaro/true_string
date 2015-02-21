# coding: utf-8

require "true_string/version"

module TrueString
  pairs = [
    %w(true false),
    %w(TRUE FALSE),
    %w(t f),
    %w(T F),
    %w(1 0),
    %w(yes no),
    %w(YES NO),
    %w(y n),
    %w(Y N),
    %w(on off),
    %w(ON OFF),
    %w(○ ×),
    %w(⭕️ ❌),
    %w(✅ ❎),
    %w(👍 👎),
    %w(🆗 🆖),
    %w(❤️ 💔),
    %w(真 偽),
    %w(はい いいえ),
  ]

  TRUTH_TABLE = {}
  pairs.each do |t, f| 
    TRUTH_TABLE[t] = true
    TRUTH_TABLE[f] = false
  end
end

class String
  def truthy?
    !!TrueString::TRUTH_TABLE[self]
  end

  def falsey?
    TrueString::TRUTH_TABLE[self] == false
  end
end
