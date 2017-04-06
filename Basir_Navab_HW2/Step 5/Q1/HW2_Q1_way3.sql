--- I used Postgres+PostGIS 

--Creating q1_w3 table
CREATE TABLE q1_w3 ( 
name VARCHAR(64),
location geography
);
--insert points using geographical coordinates
INSERT INTO q1_w3 (name, location) VALUES 
('Home', 	ST_GeographyFromText('SRID=4326; POINT(-118.272854 34.028573)')),
('F_E_corner', 	ST_GeographyFromText('SRID=4326; POINT(-118.282408 34.018454)')),
('J_F_corner', 	ST_GeographyFromText('SRID=4326; POINT(-118.280257 34.021819)')),
('V_J_corner', 	ST_GeographyFromText('SRID=4326; POINT(-118.291383 34.025343)')),
('E_V_corner', 	ST_GeographyFromText('SRID=4326; POINT(-118.291377 34.018480)')),
('ANN', 	ST_GeographyFromText('SRID=4326; POINT(-118.287121 34.020911)')),
('OHE', 	ST_GeographyFromText('SRID=4326; POINT(-118.289398 34.020889)')),
('SSL', 	ST_GeographyFromText('SRID=4326; POINT(-118.288943 34.019377)')),
('RTH', 	ST_GeographyFromText('SRID=4326; POINT(-118.289899 34.020219)'));


--get the convex hull
SELECT ST_AsText(ST_ConvexHull(ST_Collect(location::geometry))) AS convex_hull
FROM q1_w3;

