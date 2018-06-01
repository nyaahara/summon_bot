module SummonBot
  class DummyNotifier
    def initialize(_)
    end

    def speak(message, _options = {})
      ping("[ENV=#{Rails.env}] #{message}")
    end

    def ping(message, _options = {})
      puts '[warning] Slack notification is disabled.'
      puts message
    end
  end
end
