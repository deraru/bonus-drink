require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  describe 'BonusDrink.total_count_for' do
    subject { BonusDrink.total_count_for(amount) }
    context 'when buy 0' do
      let(:amount) { 0 }
      specify { expect(subject).to eq 0 }
    end
    context 'when buy 1' do
      let(:amount) { 1 }
      specify { expect(subject).to eq 1 }
    end
    context 'when buy 3' do
      let(:amount) { 3 }
      specify { expect(subject).to eq 4 }
    end
    context 'when buy 11' do
      let(:amount) { 11 }
      specify { expect(subject).to eq 16 }
    end
    context 'when buy 100' do
      let(:amount) { 100 }
      specify { expect(subject).to eq 149 }
    end
  end
  describe 'BonusDrink.bonus_count_for' do
    subject { BonusDrink.send(:bonus_count_for, amount) }
    context 'when buy 0' do
      let(:amount) { 0 }
      specify { expect(subject).to eq 0 }
    end
    context 'when buy 1' do
      let(:amount) { 1 }
      specify { expect(subject).to eq 0 }
    end
    context 'when buy 3' do
      let(:amount) { 3 }
      specify { expect(subject).to eq 1 }
    end
    context 'when buy 11' do
      let(:amount) { 11 }
      specify { expect(subject).to eq 5 }
    end
    context 'when buy 100' do
      let(:amount) { 100 }
      specify { expect(subject).to eq 49 }
    end
  end
end
