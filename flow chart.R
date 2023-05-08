library(DiagrammeR)

# Create a new graph
graph <- create_graph()

# Add nodes for each analysis step and assign them to the graph object
graph <- add_node(graph, "Start")
graph <- add_node(graph, "Alpha Diversity")
graph <- add_node(graph, "Beta Diversity")
graph <- add_node(graph, "Taxonomy")
graph <- add_node(graph, "Differential\nAbundance")
graph <- add_node(graph, "LEfSe Analysis")
graph <- add_node(graph, "End")

# Assign labels to the nodes
labels <- c("Start", "Alpha Diversity", "Beta Diversity", "Taxonomy", "Differential\nAbundance", "LEfSe Analysis", "End")
graph <- set_node_attrs(graph, "label", labels)

# Add edges between nodes to show the flow of analysis
graph <- add_edge(graph, "Start", "Alpha Diversity")
graph <- add_edge(graph, "Alpha Diversity", "Beta Diversity")
graph <- add_edge(graph, "Beta Diversity", "Taxonomy")
graph <- add_edge(graph, "Taxonomy", "Differential\nAbundance")
graph <- add_edge(graph, "Differential\nAbundance", "LEfSe Analysis")
graph <- add_edge(graph, "LEfSe Analysis", "End")

# Increase node size
graph <- set_node_attrs(graph, "height", rep(0.8, length(labels)))
graph <- set_node_attrs(graph, "fontsize", rep(8, length(labels)))


# Render the graph with a specified layout
render_graph(graph, layout = "circle")
export_graph(graph, file_name = "graph.png", width = 1200, height = 900)


