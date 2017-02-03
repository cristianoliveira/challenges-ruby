require 'rspec'
require 'set'
require_relative '../set.rb'

describe NeoSet do
  let(:values) { [1,2] }
  let(:neoset) { NeoSet.new(values) }

  it "initializes with given values" do
    common = Set.new(values)
    expect(neoset.to_a).to eql(common.to_a)
  end

  describe "#new" do
    it "creates a set with the given values" do
      neoset = NeoSet.new([1,2,3])
      expect(neoset).to include(1, 2, 3)
      expect(neoset.size).to eql(3)
    end

    it "creates a set without duplicated values " do
      neoset = NeoSet.new([1,1,1,1,2,2,3,3])
      expect(neoset).to include(1, 2, 3)
      expect(neoset.size).to eql(3)
    end
  end

  describe "#add" do
    it "adds new value" do
      neoset.add(3)
      expect(neoset).to include(3)
      expect(neoset.size).to eql(3)
    end

    it "rejects duplicated value" do
      neoset.add(2)
      expect(neoset.size).to eql(2)
    end
  end

  describe "#delete" do
    it "deletes by value" do
      neoset.delete(2)
      expect(neoset).to_not include(2)
      expect(neoset.size).to eql(1)
    end
  end

  describe "#union" do
    it "merges two sets" do
      set_one = NeoSet.new [1,2]
      set_two = NeoSet.new [4,5]

      merged = set_one.union(set_two)

      expect(merged).to include(1, 4)
    end

    it "merges sets without duplicated values" do
      set_one = NeoSet.new [1,2,3]
      set_two = NeoSet.new [4,5,3]

      merged = set_one.union(set_two)

      expect(merged).to include(3)
      expect(merged.size).to eql(5)
    end
  end

  describe "#intersection" do
    it "returns new set with only common items" do
      set_one = NeoSet.new [1,2,3]
      set_two = NeoSet.new [4,5,3,2]

      common = set_one.intersection(set_two)

      expect(common).to be_a(NeoSet)
      expect(common).to include(2, 3)
      expect(common.size).to eql(2)
    end
  end

  describe "#difference" do
    it "returns new set with only different items" do
      set_one = NeoSet.new [1,2,3,4]
      set_two = NeoSet.new [2,3,6]

      common = set_one.difference(set_two)

      expect(common).to be_a(NeoSet)
      expect(common).to_not include(2, 3)
      expect(common).to include(1, 4)
      expect(common.size).to eql(2)
    end
  end

  describe "#subset?" do
    it "is a subset" do
      set_one = NeoSet.new [2,3,6,1]
      set_two = NeoSet.new [1,2]

      expect(set_one).to be_subset(set_two)
    end

    it "is not a subset" do
      set_one = NeoSet.new [2,3,6,1]
      set_two = NeoSet.new [8,9]

      expect(set_one).to_not be_subset(set_two)
    end
  end
end
