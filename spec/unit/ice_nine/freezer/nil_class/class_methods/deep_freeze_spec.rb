# encoding: utf-8

require 'spec_helper'
require 'ice_nine/freezer/no_freeze'

describe IceNine::Freezer::NilClass, '.deep_freeze' do
  subject { object.deep_freeze(value) }

  let(:object) { described_class }

  context 'with a nil object' do
    let(:value) { nil }

    it { should be(value) }

    it 'does not freeze the object' do
      expect { subject }.should_not change(value, :frozen?).from(false)
    end
  end
end
