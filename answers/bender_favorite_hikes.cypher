// Find Bender's favorite hikes
MATCH (n:Person {person_name: 'Bender'})-[i:HIKED]->(h:Hike)
RETURN h.hike_name as favorite_hikes, i.times_hiked as times_hiked
ORDER by times_hiked DESC LIMIT 5;