# typed: strict

module RuboCop::Performance
  CONFIG = ::T.let(nil, ::T.untyped)
end

module RuboCop::Performance::Version
  STRING = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::BindCall
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::Caller
  MSG_BRACE = ::T.let(nil, ::T.untyped)
  MSG_FIRST = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::CaseWhenSplat
  ARRAY_MSG = ::T.let(nil, ::T.untyped)
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::Casecmp
  CASE_METHODS = ::T.let(nil, ::T.untyped)
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::ChainArrayAllocation
  ALWAYS_RETURNS_NEW_ARRAY = ::T.let(nil, ::T.untyped)
  HAS_MUTATION_ALTERNATIVE = ::T.let(nil, ::T.untyped)
  MSG = ::T.let(nil, ::T.untyped)
  RETURNS_NEW_ARRAY_WHEN_NO_BLOCK = ::T.let(nil, ::T.untyped)
  RETURN_NEW_ARRAY_WHEN_ARGS = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::CompareWithBlock
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::Count
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::DeletePrefix
  MSG = ::T.let(nil, ::T.untyped)
  PREFERRED_METHODS = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::DeleteSuffix
  MSG = ::T.let(nil, ::T.untyped)
  PREFERRED_METHODS = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::Detect
  MSG = ::T.let(nil, ::T.untyped)
  REVERSE_MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::DoubleStartEndWith
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::EndWith
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::FixedSize
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::FlatMap
  FLATTEN_MULTIPLE_LEVELS = ::T.let(nil, ::T.untyped)
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::OpenStruct
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::RangeInclude
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::RedundantBlockCall
  CLOSE_PAREN = ::T.let(nil, ::T.untyped)
  MSG = ::T.let(nil, ::T.untyped)
  OPEN_PAREN = ::T.let(nil, ::T.untyped)
  SPACE = ::T.let(nil, ::T.untyped)
  YIELD = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::RedundantMatch
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::RedundantMerge
  AREF_ASGN = ::T.let(nil, ::T.untyped)
  MSG = ::T.let(nil, ::T.untyped)
  WITH_MODIFIER_CORRECTION = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::RegexpMatch
  MATCH_NODE_PATTERN = ::T.let(nil, ::T.untyped)
  MSG = ::T.let(nil, ::T.untyped)
  TYPES_IMPLEMENTING_MATCH = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::ReverseEach
  MSG = ::T.let(nil, ::T.untyped)
  UNDERSCORE = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::Size
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::StartWith
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::StringReplacement
  BANG = ::T.let(nil, ::T.untyped)
  DELETE = ::T.let(nil, ::T.untyped)
  DETERMINISTIC_REGEX = ::T.let(nil, ::T.untyped)
  MSG = ::T.let(nil, ::T.untyped)
  TR = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::TimesMap
  MESSAGE = ::T.let(nil, ::T.untyped)
  MESSAGE_ONLY_IF = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::UnfreezeString
  MSG = ::T.let(nil, ::T.untyped)
end

class RuboCop::Cop::Performance::UriDefaultParser
  MSG = ::T.let(nil, ::T.untyped)
end
