module SummonBot
  class DummyNotifier
    def initialize(_)
    end

    def speak(message)
      ping("[ENV=#{Rails.env}] #{message}")
    end

    def ping(message)
      puts '[warning] Slack notification is disabled.'
      puts message
    end
  end
end
