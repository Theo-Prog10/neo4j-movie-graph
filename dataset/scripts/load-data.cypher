LOAD CSV WITH HEADERS FROM 'file:///movies.csv' AS row

MERGE (a:Actor {name: row.actor})
MERGE (m:Movie {title: row.movie, year: toInteger(row.year)})
MERGE (a)-[:ACTED_IN {role: row.role}]->(m)
