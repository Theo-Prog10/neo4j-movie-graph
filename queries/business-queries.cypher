// Quais atores participaram do filme Matrix?
MATCH (a:Actor)-[:ACTED_IN]->(m:Movie {title:"Matrix"})
RETURN a

// Quais filmes Keanu Reeves participou?
MATCH (a:Actor {name:"Keanu Reeves"})-[:ACTED_IN]->(m:Movie)
RETURN m

// Relações entre atores e filmes
MATCH (a:Actor)-[r:ACTED_IN]->(m:Movie)
RETURN a,r,m
