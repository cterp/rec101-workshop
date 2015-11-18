// Create simple person graph
CREATE (p1:Person { person_name: 'Alice' })
CREATE (p2:Person { person_name: 'Bob'})
CREATE (p3:Person { person_name: 'Charlotte'})
CREATE (p4:Person { person_name: 'Dennis'})
CREATE (p1)-[:KNOWS]->(p4)
CREATE (p4)-[:KNOWS]->(p3)
CREATE (p3)-[:KNOWS]->(p2)
CREATE (p1)-[:KNOWS]->(p3);