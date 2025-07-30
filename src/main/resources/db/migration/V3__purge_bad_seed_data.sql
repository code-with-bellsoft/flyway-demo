-- Forward fix: remove test data inserted by V2

DELETE FROM implant_session WHERE id = 1;
DELETE FROM cyberware       WHERE id = 1;
DELETE FROM civilian        WHERE id = 1;