DELIMITER $$

CREATE PROCEDURE ManipulaOrdemServico(
    IN p_opcao INT,                 -- Variável de controle que determina a ação
    IN p_id_os INT,                 -- ID da Ordem de Serviço
    IN p_data_emissao DATE,         -- Data de emissão (para inserção e atualização)
    IN p_data_conclusao DATE,       -- Data de conclusão (para inserção e atualização)
    IN p_status VARCHAR(50),        -- Status da ordem (para inserção e atualização)
    IN p_valor DECIMAL(10, 2)       -- Valor total (para inserção e atualização)
)
BEGIN
    -- Estrutura condicional baseada na variável de controle
    CASE
        -- Opção 1: Selecionar os dados de uma Ordem de Serviço
        WHEN p_opcao = 1 THEN
            SELECT * 
            FROM Ordem_de_Servico
            WHERE ID_OS = p_id_os;
        
        -- Opção 2: Atualizar uma Ordem de Serviço existente
        WHEN p_opcao = 2 THEN
            UPDATE OrdemDeServico
            SET DataEmissão = p_data_emissao,
                DataPrevistaConclusão = p_data_conclusao,
                StatusServico = p_status,
                ValorTotal = p_valor
            WHERE ID_OS = p_id_os;
        
        -- Opção 3: Deletar uma Ordem de Serviço
        WHEN p_opcao = 3 THEN
            DELETE FROM OrdemDeServico
            WHERE ID_OS = p_id_os;
        
        -- Opção 4: Inserir uma nova Ordem de Serviço
        WHEN p_opcao = 4 THEN
            INSERT INTO OrdemDeServico (DataEmissão, DataPrevistaConclusão, StatusServico, ValorTotal)
            VALUES (p_data_emissao, p_data_conclusao, p_status, p_valor);
        
        ELSE
            -- Caso uma opção inválida seja passada
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Opção inválida!';
    END CASE;
END$$

DELIMITER ;
