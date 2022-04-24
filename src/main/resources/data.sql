INSERT INTO oauth_client_details
	(client_id, client_secret, scope, authorized_grant_types,
	web_server_redirect_uri, authorities, access_token_validity,
	refresh_token_validity, additional_information, autoapprove)
VALUES
	('pwd-client-001', '{bcrypt}$2a$10$macSvlCFmWxVHdVGd.vBJu1oDD/BPa5Zo5QOyk2Q61/py.ZT0hrWm', 'any',
	'password,authorization_code,refresh_token', null, null, 36000, 36000, null, true);

INSERT INTO users (username, password, enabled) VALUES ('user', '{bcrypt}$2a$10$T1BAKybv1AQnWgFjlhC6B.Jtdq343GoIwAu9coqzk0PgSYaJ7CWBq', true);
INSERT INTO users (username, password, enabled) VALUES ('admin','{bcrypt}$2a$10$T1BAKybv1AQnWgFjlhC6B.Jtdq343GoIwAu9coqzk0PgSYaJ7CWBq', true);
INSERT INTO authorities (username, authority) values ('user', 'ROLE_USER');
INSERT INTO authorities (username, authority) values ('admin', 'ROLE_USER');
INSERT INTO authorities (username, authority) values ('admin', 'ROLE_ADMIN');