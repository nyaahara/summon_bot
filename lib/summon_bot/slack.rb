require 'rails'
require 'slack-notifier'

module SummonBot
  class Slack
    PREFIX = 'SUMMON_BOT_SLACK__'
    class << self
      def method_missing(name)
        bot_names = ENV.keys.select { |k, _| k.include? PREFIX }.map { |k| k.gsub(Regexp.new("^#{PREFIX}"), '').downcase.to_sym }
        fail NoMethodError unless bot_names.include? name
        bot = notifier_class.new(ENV["#{PREFIX}#{name.upcase}"])

        def bot.speak(message, options = {})
          ping("[ENV=#{Rails.env}] #{message}", options)
        end

        bot
      end

      def notifier_class
        # For testing
        @notifier_class || ::Slack::Notifier
      end
    end
  end
end