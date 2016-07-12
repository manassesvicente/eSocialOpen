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

comment on table S_2399 is 'Registros do evento S-2399 - Trabalhador Sem V�nculo - T�rmino';
comment on column S_2399.EVTTSVTERMINO is
  '[evtTSVTermino]<<>>Evento Trabalhador Sem V�nculo de Emprego - T�rmino Regras de Valida��o: REGRA_EXISTE_INFO_EMPREGADOR REGRA_EXISTE_EVENTO_TSV_INICIO REGRA_VALIDA_EMPREGADOR REGRA_GERAL_VALIDA_DADOS_TABCONTRIB';
comment on column S_2399.ID is '[Id]<<>>Identifica��o �nica do evento.
Valida��o: Deve ser um Id v�lido, conforme descrito na REGRA_VALIDA_ID_EVENTO.';
comment on column S_2399.IDEEVENTO is '[ideEvento]<<>>Informa��es de Identifica��o do Evento';
comment on column S_2399.INDRETIF is '[indRetif]<<>>Informe [1] para arquivo original ou [2] para arquivo de retifica��o.
Valores V�lidos: 1, 2.';
comment on column S_2399.NRRECIBO is
  '[nrRecibo]<<>>Preencher com o n�mero do recibo do arquivo a ser retificado. Valida��o: O preenchimento � obrigat�rio se {indRetif} = [2]. Deve ser um recibo de entrega v�lido, correspondente ao arquivo que est� sendo retificado.';
comment on column S_2399.TPAMB is '[tpAmb]<<>>Identifica��o do ambiente: 1 - Produ��o;
2 - Pr�-produ��o - dados reais;
3 - Pr�-produ��o - dados fict�cios. Valores V�lidos: 1, 2, 3.';
comment on column S_2399.PROCEMI is '[procEmi]<<>>Processo de emiss�o do evento:
1- Emiss�o com aplicativo do empregador. Valores V�lidos: 1';
comment on column S_2399.VERPROC is
  '[verProc]<<>>Vers�o do processo de emiss�o do evento.  Informar a vers�o do aplicativo emissor do evento.';
comment on column S_2399.IDEEMPREGADOR is '[ideEmpregador]<<>>Informa��es de identifica��o do empregador';
comment on column S_2399.TPINSC is
  '[tpInsc]<<>>Preencher com o c�digo correspondente ao tipo de inscri��o, conforme tabela 5 - Valida��o: Deve ser igual a [1] (CNPJ) ou [2] (CPF)';
comment on column S_2399.NRINSC is
  '[nrInsc]<<>>Informar o n�mero de inscri��o do contribuinte de acordo com o tipo de inscri��o indicado no campo {tpInsc}. Se for um CNPJ deve ser informada apenas a Raiz/Base de oito posi��es, exceto se natureza jur�dica de administra��o p�blica federal ([101-5], [104-0], [107-4], [116-3]), situa��o em que o campo deve ser preenchido com o CNPJ completo com 14 posi��es. Valida��o: Se {tpInsc} for igual a [1], deve ser um n�mero de CNPJ v�lido. Se {tpInsc} for igual a [2], deve ser um CPF v�lido.';
comment on column S_2399.IDETRABSEMVINCULO is '[ideTrabSemVinculo]<<>>Identifica��o do Trabalhador Sem V�nculo';
comment on column S_2399.CPFTRAB is '[cpfTrab]<<>>Preencher com o n�mero do CPF do trabalhador. Valida��o: Deve ser um CPF v�lido.';
comment on column S_2399.NISTRAB is
  '[nisTrab]<<>>Preencher com o n�mero de inscri��o do segurado - NIS, o qual pode ser o PIS, PASEP ou NIT.
Valida��o: Deve ser um NIS v�lido e pertencente ao trabalhador. O preenchimento � obrigat�rio, exceto no caso de estagi�rio.';
comment on column S_2399.CODCATEG is '[codCateg]<<>>Preencher com o c�digo da categoria do trabalhador, conforme Tabela 1
Valida��o: Deve existir na Tabela de Categorias de Trabalhadores (tabela 1)';
comment on column S_2399.INFOTSVTERMINO is '[infoTSVTermino]<<>>Trabalhador Sem V�nculo de Emprego - T�rmino';
comment on column S_2399.DTTERM is '[dtTerm]<<>>Data do T�rmino
Valida��o: Deve ser posterior a data de in�cio do contrato informada no evento de in�cio respectivo.';
comment on column S_2399.MTVDESLIGTSV is
  '[mtvDesligTSV]<<>>Motivo do desligamento do Diretor N�o Empregado, conforme op��es abaixo:
01 - Exonera��o do Diretor N�o Empregado sem justa causa, por delibera��o da assembl�ia, dos s�cios cotistas ou da autoridade competente;
02 - T�rmino de Mandato do Diretor N�o Empregado que n�o tenha sido reconduzido ao cargo;
03 - Exonera��o a pedido de Diretor N�o Empregado
04 - Exonera��o do Diretor N�o Empregado por culpa rec�proca ou for�a maior
05 - Morte do Diretor N�o Empregado
06 - Exonera��o do Diretor N�o Empregado por fal�ncia, encerramento ou supress�o de parte da empresa;
99 - Outros.
Valida��o: Preenchimento obrigat�rio se {codCateg} = [721,771]. N�o preencher nas demais situa��es.
Valores V�lidos: 01, 02, 03, 04, 05, 06, 99.';
comment on column S_2399.VERBASRESC is
  '[verbasResc]<<>>Registro onde s�o prestadas as informa��es relativas �s verbas rescis�rias do trabalhador, se houver.';
comment on column S_2399.RECPGTOS is
  '[recPgtos]<<>>Identifica��o dos demonstrativos de pagamentos a serem efetuados ao trabalhador
O somat�rio dos valores informados em {vlrPgto} deve corresponder ao somat�rio dos valores dos vencimentos ({tpRubr} = [1]) deduzidos do somat�rio dos descontos ({tpRubr} = [2]).';
comment on column S_2399.IDERECPGTO is
  '[ideRecPgto]<<>>Identificador atribu�do pelo empregador para o demonstrativo de pagamento das verbas rescis�rias.
Valida��o: Deve ser um identificador �nico para cada um dos demonstrativos de pagamento gerados no presente arquivo de rescis�o contratual.';
comment on column S_2399.VLRPGTO is '[vlrPgto]<<>>Valor do pagamento a ser efetuado.';
comment on column S_2399.IDEESTABLOT is
  '[ideEstabLot]<<>>Identifica��o do Estabelecimento/Lota��o no qual o trabalhador possui remunera��o no per�odo de apura��o. O estabelecimento identificado no registro pode ser: o n�mero do CNPJ do estabelecimento da pr�pria empresa (matriz/filial), o n�mero da obra (pr�pria) no CNO, ou o n�mero do CAEPF (no caso de pessoa f�sica obrigada a inscri��o no cadastro de atividades espec�ficas da pessoa f�sica). No caso espec�fico do trabalhador dom�stico, o estabelecimento deve ser o pr�prio CPF do empregador.';
comment on column S_2399.TPINSC is
  '[tpInsc]<<>>Preencher com o c�digo correspondente ao tipo de inscri��o, conforme tabela 5
Valida��o: Se {classTrib} igual a [21,22], exceto empregador dom�stico, deve ser igual [3,4]. Se empregador dom�stico deve ser igual a [2]. Nos demais casos ({classTrib} <> [21,22]) deve ser igual a [1,4].
Valores V�lidos: 1, 2, 3, 4.';
comment on column S_2399.NRINSC is
  '[nrInsc]<<>>Informar o n�mero de inscri��o do contribuinte de acordo com o tipo de inscri��o indicado no campo {tpInsc}.
Valida��o: A inscri��o informada deve ser compat�vel com
{tpInsc}. Se {tpInsc} igual a [1, 3, 4] deve constar na tabela S-1005';
comment on column S_2399.CODLOTACAO is '[codLotacao]<<>>Informar o c�digo atribu�do pela empresa para a lota��o tribut�ria.
Valida��o: Deve ser um c�digo existente na Tabela de Lota��es Tribut�rias (S-1020).';
comment on column S_2399.DETVERBAS is
  '[detVerbas]<<>>Registro onde s�o prestadas as informa��es relativas �s verbas rescis�rias do trabalhador, se houver.';
comment on column S_2399.CODRUBR is
  '[codRubr]<<>>Informar o c�digo atribu�do pela empresa e que identifica a rubrica em sua folha de  pagamento.
Valida��o: O c�digo informado deve existir na tabela S-1010 - Tabela de Rubricas, vigente na data da compet�ncia. O
{codIncCP} da tabela de rubricas n�o pode indicar [23, 24, 61].';
comment on column S_2399.IDETABRUBR is
  '[ideTabRubr]<<>>Preencher com o identificador da tabela de rubricas, conforme informado em S-1010 para a rubrica definida em {codRubr}. Valida��o: O preenchimento do campo � exclusivo e obrigat�rio apenas quando {multTabRubricas} for igual a [S].';
comment on column S_2399.QTDRUBR is
  '[qtdRubr]<<>>Informar a quantidade de refer�ncia para apura��o (em horas, cotas, meses, percentual, etc.).';
comment on column S_2399.VRUNIT is '[vrUnit]<<>>Preencher com o valor unit�rio da rubrica.';
comment on column S_2399.VRRUBR is '[vrRubr]<<>>Valor total da rubrica
Valida��o: Deve ser maior que zero.';
comment on column S_2399.INFOAGNOCIVO is
  '[infoAgNocivo]<<>>Registro preenchido exclusivamente em rela��o a remunera��o de trabalhador avulso e cooperado filiado a cooperativa de produ��o, permitindo o detalhamento do grau de exposi��o do trabalhador aos agentes nocivos que ensejam a cobran�a da contribui��o adicional para financiamento dos benef�cios de aposentadoria especial.';
comment on column S_2399.GRAUEXP is
  '[grauExp]<<>>Preencher com o c�digo que representa o grau de exposi��o a agentes nocivos, conforme tabela 2.
Valores V�lidos: 1, 2, 3, 4.';
comment on column S_2399.INFOSIMPLES is '[infoSimples]<<>>Informa��o relativa a empresas enquadradas no Regime de Tributa��o Simples';
comment on column S_2399.INDSIMPLES is '[indSimples]<<>>Indicador de Contribui��o Substitu�da:
1 - Contribui��o Substitu�da Integralmente; 2 - Contribui��o n�o substitu�da;
3 - Contribui��o n�o substitu�da concomitante com contribui��o substitu�da.
Valida��o:
Valores V�lidos: 1, 2, 3.';
comment on column S_2399.QUARENTENA is '[quarentena]<<>>Informa��es sobre a "quarentena" remunerada de trabalhador desligado.  O registro deve ser preenchido apenas no caso do trabalhador que recebe remunera��o ap�s o desligamento por estar impossibilitado de exercer atividade remunerada.';
comment on column S_2399.DTFIMQUAR is '[dtFimQuar]<<>>Preencher com a data final da quarentena a que est� sujeito o trabalhador
Valida��o: Deve ser uma data posterior a data de t�rmino do contrato.';
