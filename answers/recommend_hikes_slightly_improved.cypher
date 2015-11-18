// Recommend hikes to Bender: some improvements
MATCH (bender:Person {person_name: 'Bender'})-	[i:HIKED]->(h:Hike)
WITH bender, i, h as bender_fav_hikes, 	i.times_hiked as times_hiked
ORDER by times_hiked DESC LIMIT 5

MATCH (p:Person)-[j:HIKED]->(bender_fav_hikes)
WHERE p.person_name <> 'Bender'
WITH p,j,collect(DISTINCT bender_fav_hikes.hike_name) as names

MATCH (p)-[k:HIKED]->(other:Hike)-[:IN_REGION]-(region:Region)
WHERE NOT other.hike_name IN names
AND region.region_name <> 'Issaquah Alps'
AND toInt(other.elevation_gain) > 3500

RETURN sum(k.times_hiked) as popularity, other.hike_name as hike_rec, region.region_name as region
ORDER BY popularity DESC
LIMIT 10;