class Graph
  def initialize
    @adjacent = {}
  end

  def add_edge(u, v)
    @adjacent[u] = [] if !@adjacent[u]
    @adjacent.push(v)
  end
end