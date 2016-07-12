create table S_5002
(
  EVTIRRFBENEF     integer,
  ID               varchar2 (36),
  IDEEVENTO        integer,
  NRRECARQBASE     varchar2 (40),
  PERAPUR          varchar2 (7),
  IDEEMPREGADOR    integer,
  TPINSC           numeric (1),
  NRINSC           varchar2 (15),
  IDETRABALHADOR   integer,
  CPFTRAB          varchar2 (11),
  INFOIRRF         integer,
  CODCATEG         numeric (3),
  BASESIRRF        integer,
  TPVALOR          numeric (2),
  VALOR            numeric (14, 2),
  IRRF             integer,
  TPCR             numeric (6),
  VRIRRFDESC       numeric (14, 2)
  );

comment on table S_5002 is 'Registros do evento S-5002 - Imposto de Renda Retido na Fonte';
comment on column S_5002.EVTIRRFBENEF is
  '[evtIrrfBenef]<<>>Imposto de Renda Retido do Trabalhador';
comment on column S_5002.ID is '[Id]<<>>Identifica��o �nica do evento.
Valida��o: Deve ser um Id v�lido, conforme descrito na REGRA_VALIDA_ID_EVENTO.';
comment on column S_5002.IDEEVENTO is
  '[ideEvento]<<>>Identifica��o do evento de retorno                                                                     ';
comment on column S_5002.NRRECARQBASE is
  '[nrRecArqBase]<<>>Preencher com o n�mero do recibo do arquivo que deu origem ao presente arquivo de retorno ao empregador.
Valida��o: Deve ser um recibo de entrega v�lido correspondente um arquivo no leiaute S-4000.';
comment on column S_5002.PERAPUR is
  '[perApur]<<>>Informar o m�s/ano (formato AAAA-MM) de refer�ncia das informa��es. Valida��o: Deve corresponder ao informado pelo empregador no evento de origem (S-4000, campo {perSolicit}).';
comment on column S_5002.IDEEMPREGADOR is
  '[ideEmpregador]<<>>Informa��es de identifica��o do empregador                                                    ';
comment on column S_5002.TPINSC is '[tpInsc]<<>>Preencher com o c�digo correspondente ao tipo de inscri��o, conforme tabela 5
Valida��o: Deve ser igual a [1] (CNPJ) ou [2] (CPF)';
comment on column S_5002.NRINSC is
  '[nrInsc]<<>>Informar o n�mero de inscri��o do contribuinte de acordo com o tipo de inscri��o indicado no campo {tpInsc}. Se for um CNPJ deve ser informada apenas a Raiz/Base de oito posi��es, exceto se natureza jur�dica de administra��o p�blica federal ([101-5], [104-0], [107-4], [116-3]), situa��o em que o campo deve ser preenchido com o CNPJ completo com 14 posi��es.
Valida��o: Se {tpInsc} for igual a [1], deve ser um n�mero de CNPJ v�lido. Se {tpInsc} for igual a [2], deve ser um CPF v�lido.';
comment on column S_5002.IDETRABALHADOR is
  '[ideTrabalhador]<<>>Registro que apresenta a identifica��o b�sica do trabalhador ao qual se refere o evento de remunera��o.';
comment on column S_5002.CPFTRAB is
  '[cpfTrab]<<>>Preencher com o n�mero do CPF do trabalhador. Origem: S-4000.
Valida��o: Deve ser um CPF constante no arquivo gerado pelo empregador no evento correspondente: S-1200, S-1202, S-2299 ou S-2399.';
comment on column S_5002.INFOIRRF is
  '[infoIrrf]<<>>Informa��es relativas ao Imposto de Renda Retido na Fonte do Trabalhador e suas bases de c�lculo.
Origem S-1200, S-1202, S-2299, S-2399.';
comment on column S_5002.CODCATEG is
  '[codCateg]<<>>Preencher com o c�digo da categoria do trabalhador, conforme Tabela 1. Origem: {codCateg} em S-1200, S-2399. No caso de desligamento de empregado (S-2299), buscar {codCateg} em S-2100/S-2200.';
comment on column S_5002.BASESIRRF is
  '[basesIrrf]<<>>Bases, dedu��es, isen��es e reten��es do IRRF                                                ';
comment on column S_5002.TPVALOR is
  '[tpValor]<<>>Tipo de valor relativo aos rendimentos pagos e ao IRRF retido.
Valida��o: Deve corresponder ao {codIncIRRF} em S-1010 das rubricas utilizadas na composi��o das remunera��es informadas nos eventos S-1200, S-1202, S-2299 e S-2399, conforme segue:
Rendimentos tribut�veis - base de c�lculo do IRRF: 11 - Remunera��o Mensal;
12 - 13o Sal�rio; 13 - F�rias;
14 - PLR;
15 - Rendimentos Recebidos Acumuladamente - RRA;
Reten��es do IRRF efetuadas sobre: 31 - Remunera��o Mensal;
32 - 13o Sal�rio; 33 - F�rias;
34 - PLR;
35 - RRA;
Dedu��es da base de c�lculo do IRRF:
41 - Previd�ncia Social Oficial - PSO - Remuner. Mensal; 42 - PSO - 13� sal�rio;
43 - PSO - F�rias; 44 - PSO - RRA;
46 - Previd�ncia Privada - sal�rio mensal; 47 - Previd�ncia Privada - 13� sal�rio;
51 - Pens�o Aliment�cia - Remunera��o Mensal; 52 - Pens�o Aliment�cia - 13� sal�rio;
53 - Pens�o Aliment�cia - F�rias; 54 - Pens�o Aliment�cia - PLR; 55 - Pens�o Aliment�cia - RRA;
56 - Dependente - Remunera��o Mensal; 57 - Dependente - 13� sal�rio;
58 - Dependente - F�rias;
61 - Fundo de Aposentadoria Programada Individual - FAPI - Remunera��o Mensal; 62 - Fundo de Aposentadoria Programada Individual - FAPI - 13� sal�rio; 63 - Funda��o de Previd�ncia Complementar do Servidor P�blico Federal - Funpresp - Remunera��o Mensal;
64 - Funda��o de Previd�ncia Complementar do Servidor P�blico Federal - Funpresp - 13� sal�rio;
Isen��es do IRRF:
70 - Parcela Isenta 65 anos - Remunera��o Mensal; 71 - Parcela Isenta 65 anos - 13� sal�rio;
72 - Di�rias;
73 - Ajuda de Custo;
74 - Indeniza��o e rescis�o de contrato, inclusive a t�tulo de PDV e acidentes de trabalho;
75 - Abono pecuni�rio;
76 - Pens�o, aposentadoria ou reforma por mol�stia grave ou acidente em servi�o - Remunera��o Mensal;
77 - Pens�o, aposentadoria ou reforma por mol�stia grave ou acidente em servi�o - 13� sal�rio;
78 - Valores pagos a titular ou s�cio de microempresa ou empresa de pequeno porte, exceto pr�-labore e alugueis;
79 - Outras isen��es (identificar o nome da rubrica em S-1010);
Demandas Judiciais: 81 - Dep�sito Judicial;
82 - Compensa��o Judicial do ano calend�rio; 83 - Compensa��o Judicial de anos anteriores;
Incid�ncia Suspensa decorrente de decis�o judicial, relativas a base de c�lculo do IRRF sobre:
91 - Remunera��o Mensal; 92 - 13o Sal�rio;
93 - F�rias;
94 - PLR;
95 - RRA.
Valida��o: Deve ser um c�digo v�lido, conforme op��es acima. Valores V�lidos:';
comment on column S_5002.VALOR is
  '[valor]<<>>Valor da base de c�lculo, reten��o, dedu��o ou isen��o do Imposto de Renda Retido na Fonte, conforme definido no campo {tpValor}.
Valida��o: Deve ser maior que zero.
Deve corresponder ao somat�rio do campo {vrRubr} em S-1200 e S-1202, nos grupos {remunPerApur} e {remunPerAnt}, e em S-2299 e S-2399, das rubricas cujo {tpRubr} seja igual a [1,3] menos as rubricas cujo {tpRubr} seja igual a [2,4], cujo pagamento tenha sido realizado no m�s indicado em
{perApur}, conforme informado em S-1210, campo {dtPgto}. Os valores devem ser agrupados de acordo com {codIncIRRF} em S-1010.';
comment on column S_5002.IRRF is '[irrf]<<>>Informa��es relativas ao Imposto de Renda Retido na Fonte                            ';
comment on column S_5002.TPCR is
  '[tpCR]<<>>C�digo de Receita - CR relativo ao Imposto de Renda Retido na Fonte sobre rendimentos do trabalho, conforme legisla��o em vigor na compet�ncia: 0561-07 - IRRF Mensal, 13� sal�rio e F�rias sobre Trabalho Assalariado no pa�s ou ausente no exterior a servi�o do pa�s, exceto se contratado por Empregador Dom�stico ou por Segurado Especial sujeito a recolhimento unificado;
0561-08 - IRRF Mensal, 13� sal�rio e F�rias sobre Trabalho Assalariado no pa�s ou ausente no exterior a servi�o do pa�s, Empregado Dom�stico ou Trabalhador contratado por Segurado Especial sujeito a recolhimento unificado;
0561-09 - IRRF 13� sal�rio na rescis�o de contrato de trabalho relativo a empregador sujeito a recolhimento unificado.
0588-06 - IRRF sobre Rendimento do trabalho sem v�nculo empregat�cio; 0610- 01 - IRRF sobre Rendimentos relativos a presta��o de servi�os de transporte rodovi�rio internacional de carga, pagos a transportador aut�nomo PF residente no Paraguai;
3280-06 - IRRF sobre Servi�os Prestados por associados de cooperativas de trabalho;
3562-01 - IRRF sobre Participa��o dos trabalhadores em Lucros ou Resultados (PLR).
Origem S-1210, para defini��o do m�s de ocorr�ncia dos fatos geradores e os respectivos demonstrativos de pagamento constantes dos eventos S-1200, S-1202, S-2299 e S-2399.
Valida��o: Deve ser um c�digo v�lido, conforme op��es acima.';
comment on column S_5002.VRIRRFDESC is
  '[vrIrrfDesc]<<>>Valor efetivamente descontado relativo ao Imposto de Renda Retido na Fonte sobre rendimentos do trabalho;
0561-07: Se {codCateg} = [101,103,105,106,201,202,301,302,303,305,306,309,401,410] e {classTrib}
<> [22], efetuar o somat�rio do valor das rubricas cujo {codIncIRRF} = [31,32,33];
0561-08: Se {codCateg} = [104] ou ({codCateg} = [101,102] e {classTrib}
= [22]), efetuar o somat�rio do valor das rubricas cujo {codIncIRRF} = [31,32,33], exceto {codIncIRRF} = [32] oriundas do evento S-2299;  0561-09: Se {codCateg} = [104] ou ({codCateg} = [101,102] e {classTrib}
= [22]), efetuar o somat�rio do valor das rubricas cujo {codIncIRRF} = [32]
oriundas do evento S-2299;
0588-06: Se {codCateg} = [701, 711, 721, 722, 723, 738, 741, 751, 761,
771, 781], efetuar o somat�rio do valor das rubricas cujo {codIncIRRF} =
[31];
0610- 01: Se {codCateg} = [734] e {paisResid} do Trabalhador = [586]
efetuar o somat�rio do valor das rubricas cujo {codIncIRRF} = [31];
3280-06: Se {indCoop} = [1] e (({codCateg} = [731]) ou ({codCateg} =
[734] e {paisResid} do Trabalhador <> [586])), efetuar o somat�rio do valor
das rubricas cujo {codIncIRRF} = [31];
3562-01: Efetuar o somat�rio do valor das rubricas cujo {codIncIRRF} =
[34].
Origem S-1210, para defini��o do m�s de ocorr�ncia dos fatos geradores e
os respectivos demonstrativos de pagamento constantes dos eventos S-1200,
S-1202, S-2299 e S-2399, correlacionados com o evento S-1010 - Tabela de
Rubricas.';
