--- I used Postgres+PostGIS 

--Creating Q1_W1 table
CREATE TABLE q1_w1 ( 
id SERIAL PRIMARY KEY,
name VARCHAR(64),
location GEOMETRY(POINT));

--insert points using geographical coordinates
INSERT INTO q1_w1 (name, location) VALUES
('Home', ST_SetSRID(ST_MakePoint(-118.272854, 34.028573), 0)),
('F_E_corner', ST_SetSRID(ST_MakePoint(-118.282408, 34.018454), 0)),
('J_F_corner', ST_SetSRID(ST_MakePoint(-118.280257, 34.021819), 0)),
('V_J_corner', ST_SetSRID(ST_MakePoint(-118.291383, 34.025343), 0)),
('E_V_corner', ST_SetSRID(ST_MakePoint(-118.291377, 34.018480), 0)),
('ANN', ST_SetSRID(ST_MakePoint(-118.287121, 34.020911), 0)),
('OHE', ST_SetSRID(ST_MakePoint(-118.289398, 34.020889), 0)),
('SSL', ST_SetSRID(ST_MakePoint(-118.288943, 34.019377), 0)),
('RTH', ST_SetSRID(ST_MakePoint(-118.289899, 34.020219), 0));


--get the convex hull
SELECT ST_ConvexHull(ST_Collect(location)) AS convex_hull
FROM q1_w1;

