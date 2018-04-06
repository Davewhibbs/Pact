// Destroy the soul fragment object and increment soulFrag

//only pick them up if you aren't dead

if state != states.death{
	instance_destroy(other);
	
	if (soulFrags + 1 <= max_soulFrags) {
		soulFrags++;	
	}
}