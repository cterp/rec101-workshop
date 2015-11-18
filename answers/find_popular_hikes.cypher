// Find universally popular hikes
MATCH (:Person)-[i:HIKED]->(h:Hike)
RETURN h.hike_name, sum(i.times_hiked) as popularity
ORDER BY popularity DESC LIMIT 10;