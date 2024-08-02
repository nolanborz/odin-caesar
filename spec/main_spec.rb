require_relative '../main'
describe 'Caesar Cipher' do
  describe '#cipher' do
    it 'shifts lowercase letters correctly' do
      expect(cipher('abc', 1)).to eq('bcd')
    end
    it 'shifts later letters correctly' do
      expect(cipher('xyz', 2)).to eq('zab')
    end
    it 'maintains case integrity' do
      expect(cipher('AbC', 1)).to eq('BcD')
    end
    it 'does not change non letters' do
      expect(cipher('ab $', 1)).to eq('bc $')
    end
    it 'works with negative offsets' do
      expect(cipher('lmn', -1)).to eq('klm')
    end
    it 'wraps around from a to z' do
      expect(cipher('abc', -2)).to eq('yza')
    end
  end

end