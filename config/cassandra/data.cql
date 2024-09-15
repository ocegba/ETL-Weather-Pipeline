-- Create a keyspace
CREATE KEYSPACE IF NOT EXISTS weather_data WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '1'};

-- Create a table
USE weather_data;

CREATE TABLE IF NOT EXISTS weather_info (
    id UUID PRIMARY KEY,
    city_name text,
    country_code text,
    temperature float,
    pressure int,
    humidity int,
    wind_speed float,
    wind_direction int,
    description text,
    timestamp timestamp
);