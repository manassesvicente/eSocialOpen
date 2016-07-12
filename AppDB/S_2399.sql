--Colunas comentadas possuem nomes duplicados necessitam tratamento posterior, inclusive para o comments que sobrescreve
--drop table S_2399;

create table S_2399
(
  EVTTSVTERMINO       integer,
  ID                  varchar2 (36),
  IDEEVENTO           integer,
  INDRETIF            numeric (1),
  NRRECIBO            varchar2 (40),
  TPAMB               numeric (1),
  PROCEMI             numeric (1),
  VERPROC             varchar2 (20),
  IDEEMPREGADOR       integer,
  TPINSC              numeric (1),
  NRINSC              varchar2 (15),
  IDETRABSEMVINCULO   integer,
  CPFTRAB             varchar2 (11),
  NISTRAB             varchar2 (11),
  CODCATEG            numeric (3),
  INFOTSVTERMINO      integer,
  DTTERM              date,
  MTVDESLIGTSV        varchar2 (2),
  VERBASRESC          integer,
  RECPGTOS            integer,
  IDERECPGTO          numeric (6),
  VLRPGTO             numeric (14, 2),
  IDEESTABLOT         integer,
  --TPINSC              numeric (1),
  --NRINSC              varchar2 (15),
  CODLOTACAO          varchar2 (30),
  DETVERBAS           integer,
  CODRUBR             varchar2 (30),
  IDETABRUBR          varchar2 (8),
  QTDRUBR             numeric (6, 2),
  VRUNIT              numeric (14, 2),
  VRRUBR              numeric (14, 2),
  INFOAGNOCIVO        integer,
  GRAUEXP             numeric (1),
  INFOSIMPLES         integer,
  INDSIMPLES          numeric (1),
  QUARENTENA          integer,
  DTFIMQUAR           date
);

comment on table S_2399 is 'Registros do evento S-2399 - Trabalhador Sem Vínculo - Término';
comment on column S_2399.EVTTSVTERMINO is
  '[evtTSVTermino]<<>>Evento Trabalhador Sem Vínculo de Emprego - Término Regras de Validação: REGRA_EXISTE_INFO_EMPREGADOR REGRA_EXISTE_EVENTO_TSV_INICIO REGRA_VALIDA_EMPREGADOR REGRA_GERAL_VALIDA_DADOS_TABCONTRIB';
comment on column S_2399.ID is '[Id]<<>>Identificação única do evento.
Validação: Deve ser um Id válido, conforme descrito na REGRA_VALIDA_ID_EVENTO.';
comment on column S_2399.IDEEVENTO is '[ideEvento]<<>>Informações de Identificação do Evento';
comment on column S_2399.INDRETIF is '[indRetif]<<>>Informe [1] para arquivo original ou [2] para arquivo de retificação.
Valores Válidos: 1, 2.';
comment on column S_2399.NRRECIBO is
  '[nrRecibo]<<>>Preencher com o número do recibo do arquivo a ser retificado. Validação: O preenchimento é obrigatório se {indRetif} = [2]. Deve ser um recibo de entrega válido, correspondente ao arquivo que está sendo retificado.';
comment on column S_2399.TPAMB is '[tpAmb]<<>>Identificação do ambiente: 1 - Produção;
2 - Pré-produção - dados reais;
3 - Pré-produção - dados fictícios. Valores Válidos: 1, 2, 3.';
comment on column S_2399.PROCEMI is '[procEmi]<<>>Processo de emissão do evento:
1- Emissão com aplicativo do empregador. Valores Válidos: 1';
comment on column S_2399.VERPROC is
  '[verProc]<<>>Versão do processo de emissão do evento.  Informar a versão do aplicativo emissor do evento.';
comment on column S_2399.IDEEMPREGADOR is '[ideEmpregador]<<>>Informações de identificação do empregador';
comment on column S_2399.TPINSC is
  '[tpInsc]<<>>Preencher com o código correspondente ao tipo de inscrição, conforme tabela 5 - Validação: Deve ser igual a [1] (CNPJ) ou [2] (CPF)';
comment on column S_2399.NRINSC is
  '[nrInsc]<<>>Informar o número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}. Se for um CNPJ deve ser informada apenas a Raiz/Base de oito posições, exceto se natureza jurídica de administração pública federal ([101-5], [104-0], [107-4], [116-3]), situação em que o campo deve ser preenchido com o CNPJ completo com 14 posições. Validação: Se {tpInsc} for igual a [1], deve ser um número de CNPJ válido. Se {tpInsc} for igual a [2], deve ser um CPF válido.';
comment on column S_2399.IDETRABSEMVINCULO is '[ideTrabSemVinculo]<<>>Identificação do Trabalhador Sem Vínculo';
comment on column S_2399.CPFTRAB is '[cpfTrab]<<>>Preencher com o número do CPF do trabalhador. Validação: Deve ser um CPF válido.';
comment on column S_2399.NISTRAB is
  '[nisTrab]<<>>Preencher com o número de inscrição do segurado - NIS, o qual pode ser o PIS, PASEP ou NIT.
Validação: Deve ser um NIS válido e pertencente ao trabalhador. O preenchimento é obrigatório, exceto no caso de estagiário.';
comment on column S_2399.CODCATEG is '[codCateg]<<>>Preencher com o código da categoria do trabalhador, conforme Tabela 1
Validação: Deve existir na Tabela de Categorias de Trabalhadores (tabela 1)';
comment on column S_2399.INFOTSVTERMINO is '[infoTSVTermino]<<>>Trabalhador Sem Vínculo de Emprego - Término';
comment on column S_2399.DTTERM is '[dtTerm]<<>>Data do Término
Validação: Deve ser posterior a data de início do contrato informada no evento de início respectivo.';
comment on column S_2399.MTVDESLIGTSV is
  '[mtvDesligTSV]<<>>Motivo do desligamento do Diretor Não Empregado, conforme opções abaixo:
01 - Exoneração do Diretor Não Empregado sem justa causa, por deliberação da assembléia, dos sócios cotistas ou da autoridade competente;
02 - Término de Mandato do Diretor Não Empregado que não tenha sido reconduzido ao cargo;
03 - Exoneração a pedido de Diretor Não Empregado
04 - Exoneração do Diretor Não Empregado por culpa recíproca ou força maior
05 - Morte do Diretor Não Empregado
06 - Exoneração do Diretor Não Empregado por falência, encerramento ou supressão de parte da empresa;
99 - Outros.
Validação: Preenchimento obrigatório se {codCateg} = [721,771]. Não preencher nas demais situações.
Valores Válidos: 01, 02, 03, 04, 05, 06, 99.';
comment on column S_2399.VERBASRESC is
  '[verbasResc]<<>>Registro onde são prestadas as informações relativas às verbas rescisórias do trabalhador, se houver.';
comment on column S_2399.RECPGTOS is
  '[recPgtos]<<>>Identificação dos demonstrativos de pagamentos a serem efetuados ao trabalhador
O somatório dos valores informados em {vlrPgto} deve corresponder ao somatório dos valores dos vencimentos ({tpRubr} = [1]) deduzidos do somatório dos descontos ({tpRubr} = [2]).';
comment on column S_2399.IDERECPGTO is
  '[ideRecPgto]<<>>Identificador atribuído pelo empregador para o demonstrativo de pagamento das verbas rescisórias.
Validação: Deve ser um identificador único para cada um dos demonstrativos de pagamento gerados no presente arquivo de rescisão contratual.';
comment on column S_2399.VLRPGTO is '[vlrPgto]<<>>Valor do pagamento a ser efetuado.';
comment on column S_2399.IDEESTABLOT is
  '[ideEstabLot]<<>>Identificação do Estabelecimento/Lotação no qual o trabalhador possui remuneração no período de apuração. O estabelecimento identificado no registro pode ser: o número do CNPJ do estabelecimento da própria empresa (matriz/filial), o número da obra (própria) no CNO, ou o número do CAEPF (no caso de pessoa física obrigada a inscrição no cadastro de atividades específicas da pessoa física). No caso específico do trabalhador doméstico, o estabelecimento deve ser o próprio CPF do empregador.';
comment on column S_2399.TPINSC is
  '[tpInsc]<<>>Preencher com o código correspondente ao tipo de inscrição, conforme tabela 5
Validação: Se {classTrib} igual a [21,22], exceto empregador doméstico, deve ser igual [3,4]. Se empregador doméstico deve ser igual a [2]. Nos demais casos ({classTrib} <> [21,22]) deve ser igual a [1,4].
Valores Válidos: 1, 2, 3, 4.';
comment on column S_2399.NRINSC is
  '[nrInsc]<<>>Informar o número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}.
Validação: A inscrição informada deve ser compatível com
{tpInsc}. Se {tpInsc} igual a [1, 3, 4] deve constar na tabela S-1005';
comment on column S_2399.CODLOTACAO is '[codLotacao]<<>>Informar o código atribuído pela empresa para a lotação tributária.
Validação: Deve ser um código existente na Tabela de Lotações Tributárias (S-1020).';
comment on column S_2399.DETVERBAS is
  '[detVerbas]<<>>Registro onde são prestadas as informações relativas às verbas rescisórias do trabalhador, se houver.';
comment on column S_2399.CODRUBR is
  '[codRubr]<<>>Informar o código atribuído pela empresa e que identifica a rubrica em sua folha de  pagamento.
Validação: O código informado deve existir na tabela S-1010 - Tabela de Rubricas, vigente na data da competência. O
{codIncCP} da tabela de rubricas não pode indicar [23, 24, 61].';
comment on column S_2399.IDETABRUBR is
  '[ideTabRubr]<<>>Preencher com o identificador da tabela de rubricas, conforme informado em S-1010 para a rubrica definida em {codRubr}. Validação: O preenchimento do campo é exclusivo e obrigatório apenas quando {multTabRubricas} for igual a [S].';
comment on column S_2399.QTDRUBR is
  '[qtdRubr]<<>>Informar a quantidade de referência para apuração (em horas, cotas, meses, percentual, etc.).';
comment on column S_2399.VRUNIT is '[vrUnit]<<>>Preencher com o valor unitário da rubrica.';
comment on column S_2399.VRRUBR is '[vrRubr]<<>>Valor total da rubrica
Validação: Deve ser maior que zero.';
comment on column S_2399.INFOAGNOCIVO is
  '[infoAgNocivo]<<>>Registro preenchido exclusivamente em relação a remuneração de trabalhador avulso e cooperado filiado a cooperativa de produção, permitindo o detalhamento do grau de exposição do trabalhador aos agentes nocivos que ensejam a cobrança da contribuição adicional para financiamento dos benefícios de aposentadoria especial.';
comment on column S_2399.GRAUEXP is
  '[grauExp]<<>>Preencher com o código que representa o grau de exposição a agentes nocivos, conforme tabela 2.
Valores Válidos: 1, 2, 3, 4.';
comment on column S_2399.INFOSIMPLES is '[infoSimples]<<>>Informação relativa a empresas enquadradas no Regime de Tributação Simples';
comment on column S_2399.INDSIMPLES is '[indSimples]<<>>Indicador de Contribuição Substituída:
1 - Contribuição Substituída Integralmente; 2 - Contribuição não substituída;
3 - Contribuição não substituída concomitante com contribuição substituída.
Validação:
Valores Válidos: 1, 2, 3.';
comment on column S_2399.QUARENTENA is '[quarentena]<<>>Informações sobre a "quarentena" remunerada de trabalhador desligado.  O registro deve ser preenchido apenas no caso do trabalhador que recebe remuneração após o desligamento por estar impossibilitado de exercer atividade remunerada.';
comment on column S_2399.DTFIMQUAR is '[dtFimQuar]<<>>Preencher com a data final da quarentena a que está sujeito o trabalhador
Validação: Deve ser uma data posterior a data de término do contrato.';
