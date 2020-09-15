require 'spec_helper'

RSpec.describe SummonBot::Slack, type: :model do
  describe '.get_notifier' do
    subject { described_class.public_send(bot_name) }
    before do
      ENV['SUMMON_BOT_SLACK__MARIO'] = 'url1'
    end

    context 'when message is bot name defined environment variables' do
      let(:bot_name) { :mario }
      it { expect(subject).to respond_to :speak }
      it 'notification message with RAILS_ENV name' do
        object = subject
        expect(object).to receive(:ping).with('[ENV=test] notification test', {})
        object.speak('notification test')
      end
      it 'notification message with option' do
        object = subject
        expect(object).to receive(:ping).with('[ENV=test] notification test', {link_names: 1})
        object.speak('notification test', {link_names: 1})
      end
    end

    context 'when message is bot name not defined environment variables' do
      let(:bot_name) { :unknown_bot_name }
      it 'raises SummonBot::EnvNotFoundError' do
        expect { subject }.to raise_error(
          SummonBot::EnvNotFoundError,
          "Not found ENV: SUMMON_BOT_SLACK__UNKNOWN_BOT_NAME. Please check/set ENV."
        )
      end
    end
  end
end