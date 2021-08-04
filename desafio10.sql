USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userName VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE likesCount INT;
    SELECT COUNT(*)
    FROM user_history AS UH
    INNER JOIN users AS U ON UH.user_id = U.id
    WHERE U.user_name = userName INTO likesCount;
    RETURN likesCount;
END $$

DELIMITER ;
