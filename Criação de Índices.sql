use Oficina;
-- Índice para o Cliente nas Ordens de Serviço:
-- Motivo: Frequentemente buscamos ordens de serviço de um cliente específico, o que envolve a coluna ID_Cliente.
-- Benefício: Acelera as consultas que filtram ordens de serviço por cliente.
CREATE INDEX idx_cliente_ordens ON OrdemDeServico(Cliente_ID);

-- Índice para o Veículo nas Ordens de Serviço:
-- Motivo: A recuperação de todas as ordens associadas a um veículo é uma consulta comum.
-- Benefício: Melhora a performance das consultas por veículos.
CREATE INDEX idx_veiculo_ordens ON OrdemDeServico(Veículo_ID);


-- Índice para Serviços Executados em uma Ordem de Serviço:
-- Motivo: As consultas de serviços executados frequentemente utilizam JOIN entre a tabela de ordens de serviço e a tabela de serviços.
-- Benefício: Acelera a busca dos serviços vinculados a uma ordem específica.
CREATE INDEX idx_ordem_servicos ON OrdemDeServico_Servico(CódigoServiço);

-- Índice para Peças Utilizadas em uma Ordem de Serviço:
-- Motivo: Assim como os serviços, as peças também são recuperadas com um JOIN entre a tabela de ordens e a tabela de peças.
-- Benefício: Melhora a performance ao buscar as peças associadas a uma ordem de serviço.
CREATE INDEX idx_ordem_pecas ON OrdemDeServico_Peca(NúmeroOS);








