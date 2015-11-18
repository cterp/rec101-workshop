// Find hikes with > 4000 feet of elevation gain
MATCH (h:Hike)
WHERE toInt(h.elevation_gain) > 4000 
RETURN h.hike_name, h.elevation_gain;