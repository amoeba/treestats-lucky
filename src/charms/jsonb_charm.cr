require "json"

struct JSON::Any
  module Lucky
    alias ColumnType = JSON::Any
    include LuckyRecord::Type

    def self.from_db!(value : JSON::Any)
      value
    end

    def self.parse(value : String)
      SuccessfulCast(JSON::Any).new JSON.parse(value)
    rescue ArgumentError
      FailedCast.new
    end

    def self.parse(value : JSON::Any)
      SuccessfulCast(JSON::Any).new value
    end

    def self.to_db(value : JSON::Any)
      value.to_s
    end

    class Criteria(T, V) < LuckyRecord::Criteria(T, V)
    end
  end

  def blank?
    # TODO
    false
  end
end
