﻿SELECT ST_AsText(ST_ConvexHull(
	ST_Collect(
		ST_GeomFromText('MULTIPOINT(	-118.289899 34.020219,
						-118.288943 34.019377,
						-118.289398 34.020889,
						-118.287121 34.020911,
						-118.291377 34.018480,
						-118.291383 34.025343,
						-118.280257 34.021819,
						-118.282408 34.018454,
						-118.272854 34.028573)')
			)) );