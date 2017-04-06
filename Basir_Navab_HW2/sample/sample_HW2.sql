--- I used Postgres+PostGIS 

create table geometries (name varchar, geom geometry);

insert into geometries values
	('point','POINT(0 0)'),
	('linestring', 'LINESTRING(0 0, 1 1, 2 1, 2 2)'),
	('Polygon', 'POLYGON((0 0, 1 0, 1 1, 0 1, 0 0))'),
	('PolygonWithHole', 'POLYGON((0 0, 10 0, 10 10, 0 10, 0 0),(1 1, 1 2, 2 2, 2 1,1 1))'),
	('Collection', 'GEOMETRYCOLLECTION(POINT(2 0), POLYGON((0 0, 1 0 ,1 1,0 1,0 0 )))');

SELECT name, ST_AsText(geom) FROM geometries;