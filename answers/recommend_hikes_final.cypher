// Recommend hikes to Bender: final
MATCH (bender:Person {person_name: 'Bender'})-	[i:HIKED]->(h:Hike)
WITH bender, i, h as bender_fav_hikes, 	i.times_hiked as times_hiked
ORDER by times_hiked DESC LIMIT 5

MATCH (p:Person)-[j:HIKED]->(bender_fav_hikes)
WHERE p.person_name <> 'Bender'
WITH p,j,collect(bender_fav_hikes.hike_name) as names

MATCH (p)-[k:HIKED]->(other:Hike)
WHERE NOT other.hike_name IN names

RETURN DISTINCT k.times_hiked as popularity, other.hike_name as hike_rec
ORDER BY popularity DESC
LIMIT 10;