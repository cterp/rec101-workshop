// Find hikes on Olympic Peninsula
MATCH (h:Hike)-[:IN_REGION]->(r:Region)
WHERE r.region_name ='Olympic Peninsula'
RETURN h.hike_name;