// Destroy the soul fragment object and increment soulFrag

instance_destroy(other);

if (soulFrags + 1 <= max_soulFrags) {
	soulFrags++;	
}