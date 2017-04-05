--Creating HwPoints table
CREATE TABLE q2 
   ( 
	id SERIAL PRIMARY KEY,
	from_home_to VARCHAR(64),
	dis VARCHAR(64)
   );
--------
INSERT INTO q2 (from_home_to, dis) VALUES
('RTH 109', ST_Distance(
	    ST_GeometryFromText('Point(-118.272854 34.028573)'),  -- home
	    ST_GeometryFromText('Point(-118.289899 34.020219)'))  -- RTH 109
),
('SSL', ST_Distance(
	    ST_GeometryFromText('Point(-118.272854 34.028573)'),  -- home
	    ST_GeometryFromText('Point(-118.288943 34.019377)'))  -- SSL
),
('OHE', ST_Distance(
	    ST_GeometryFromText('Point(-118.272854 34.028573)'),  -- home
	    ST_GeometryFromText('Point(-118.289398 34.020889)'))  -- OHE
),
('ANN', ST_Distance(
	    ST_GeometryFromText('Point(-118.272854 34.028573)'),  -- home
	    ST_GeometryFromText('Point(-118.287121 34.020911)'))  -- ANN
),
('Exposition/Vermont corner ', ST_Distance(
	    ST_GeometryFromText('Point(-118.272854 34.028573)'),  -- home
	    ST_GeometryFromText('Point(-118.291377 34.018480)'))  -- Exposition/Vermont corner 
),
('Vermont/Jefferson corner ', ST_Distance(
	    ST_GeometryFromText('Point(-118.272854 34.028573)'),  -- home
	    ST_GeometryFromText('Point(-118.291383 34.025343)'))  -- Vermont/Jefferson corner
),
('Jefferson/Figueroa corner ', ST_Distance(
	    ST_GeometryFromText('Point(-118.272854 34.028573)'),  -- home
	    ST_GeometryFromText('Point(-118.280257 34.021819 )'))  -- Jefferson/Figueroa corner
),
('Figueroa/Exposition corner ', ST_Distance(
	    ST_GeometryFromText('Point(-118.272854 34.028573)'),  -- home
	    ST_GeometryFromText('Point(-118.282408 34.018454 )'))  -- Figueroa/Exposition corner
);
----------
select id, from_home_to,dis
from q2
ORDER BY dis
limit 3
