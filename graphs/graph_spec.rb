require 'rspec'

describe 'A graph' do

  before :each do
    @graph = Graph.new()
  end

  it "initially has 0 vertices and 0 edges" do
    @graph.vertex_count().should eq(0)
    @graph.edges_count().should eq(0)
  end

  it "after adding an edge has 2 vertices and 1 edge" do
    @graph.add_edge(:u, :v)
    @graph.vertex_count().should eq(2)
    @graph.edges_count().should eq(1)
  end

  it "after adding an edge (u, v), v is neighbour of u" do
    @graph.add_edge(:u, :v)
    @graph.neighbours(:u).should include(:v)
  end

  it "after adding an 2 edges with same source has 3 vertices and 2 edge" do
    @graph.add_edge(:u, :v)
    @graph.add_edge(:u, :w)
    @graph.vertex_count().should eq(3)
    @graph.edges_count().should eq(2)
  end

  it "after adding multiple edges with same source determines neighbours" do
    @graph.add_edge(:u, :v)
    @graph.add_edge(:u, :w)
    @graph.neighbours(:u).should include(:v)
    @graph.neighbours(:u).should include(:w)
  end
end