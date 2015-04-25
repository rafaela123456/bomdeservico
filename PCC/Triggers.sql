DELIMITER |
	CREATE TRIGGER trg_delete_contratante BEFORE DELETE ON contratante FOR EACH ROW
	BEGIN
		delete from servico 			 where contratante_email = old.email;
		delete from telefone_contratante where contratante_email = old.email;
	END;
|
DELIMITER ;

DELIMITER |
	CREATE TRIGGER trg_delete_contratado BEFORE DELETE ON contratado FOR EACH ROW
	BEGIN
		delete from servico 			where contratado_nome_usuario = old.nome_usuario;
		delete from telefone_contratado where contratado_nome_usuario = old.nome_usuario;
	END;
|
DELIMITER ;