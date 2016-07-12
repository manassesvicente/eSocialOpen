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
comment on column S_5002.ID is '[Id]<<>>Identificação única do evento.
Validação: Deve ser um Id válido, conforme descrito na REGRA_VALIDA_ID_EVENTO.';
comment on column S_5002.IDEEVENTO is
  '[ideEvento]<<>>Identificação do evento de retorno                                                                     ';
comment on column S_5002.NRRECARQBASE is
  '[nrRecArqBase]<<>>Preencher com o número do recibo do arquivo que deu origem ao presente arquivo de retorno ao empregador.
Validação: Deve ser um recibo de entrega válido correspondente um arquivo no leiaute S-4000.';
comment on column S_5002.PERAPUR is
  '[perApur]<<>>Informar o mês/ano (formato AAAA-MM) de referência das informações. Validação: Deve corresponder ao informado pelo empregador no evento de origem (S-4000, campo {perSolicit}).';
comment on column S_5002.IDEEMPREGADOR is
  '[ideEmpregador]<<>>Informações de identificação do empregador                                                    ';
comment on column S_5002.TPINSC is '[tpInsc]<<>>Preencher com o código correspondente ao tipo de inscrição, conforme tabela 5
Validação: Deve ser igual a [1] (CNPJ) ou [2] (CPF)';
comment on column S_5002.NRINSC is
  '[nrInsc]<<>>Informar o número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}. Se for um CNPJ deve ser informada apenas a Raiz/Base de oito posições, exceto se natureza jurídica de administração pública federal ([101-5], [104-0], [107-4], [116-3]), situação em que o campo deve ser preenchido com o CNPJ completo com 14 posições.
Validação: Se {tpInsc} for igual a [1], deve ser um número de CNPJ válido. Se {tpInsc} for igual a [2], deve ser um CPF válido.';
comment on column S_5002.IDETRABALHADOR is
  '[ideTrabalhador]<<>>Registro que apresenta a identificação básica do trabalhador ao qual se refere o evento de remuneração.';
comment on column S_5002.CPFTRAB is
  '[cpfTrab]<<>>Preencher com o número do CPF do trabalhador. Origem: S-4000.
Validação: Deve ser um CPF constante no arquivo gerado pelo empregador no evento correspondente: S-1200, S-1202, S-2299 ou S-2399.';
comment on column S_5002.INFOIRRF is
  '[infoIrrf]<<>>Informações relativas ao Imposto de Renda Retido na Fonte do Trabalhador e suas bases de cálculo.
Origem S-1200, S-1202, S-2299, S-2399.';
comment on column S_5002.CODCATEG is
  '[codCateg]<<>>Preencher com o código da categoria do trabalhador, conforme Tabela 1. Origem: {codCateg} em S-1200, S-2399. No caso de desligamento de empregado (S-2299), buscar {codCateg} em S-2100/S-2200.';
comment on column S_5002.BASESIRRF is
  '[basesIrrf]<<>>Bases, deduções, isenções e retenções do IRRF                                                ';
comment on column S_5002.TPVALOR is
  '[tpValor]<<>>Tipo de valor relativo aos rendimentos pagos e ao IRRF retido.
Validação: Deve corresponder ao {codIncIRRF} em S-1010 das rubricas utilizadas na composição das remunerações informadas nos eventos S-1200, S-1202, S-2299 e S-2399, conforme segue:
Rendimentos tributáveis - base de cálculo do IRRF: 11 - Remuneração Mensal;
12 - 13o Salário; 13 - Férias;
14 - PLR;
15 - Rendimentos Recebidos Acumuladamente - RRA;
Retenções do IRRF efetuadas sobre: 31 - Remuneração Mensal;
32 - 13o Salário; 33 - Férias;
34 - PLR;
35 - RRA;
Deduções da base de cálculo do IRRF:
41 - Previdência Social Oficial - PSO - Remuner. Mensal; 42 - PSO - 13° salário;
43 - PSO - Férias; 44 - PSO - RRA;
46 - Previdência Privada - salário mensal; 47 - Previdência Privada - 13° salário;
51 - Pensão Alimentícia - Remuneração Mensal; 52 - Pensão Alimentícia - 13° salário;
53 - Pensão Alimentícia - Férias; 54 - Pensão Alimentícia - PLR; 55 - Pensão Alimentícia - RRA;
56 - Dependente - Remuneração Mensal; 57 - Dependente - 13° salário;
58 - Dependente - Férias;
61 - Fundo de Aposentadoria Programada Individual - FAPI - Remuneração Mensal; 62 - Fundo de Aposentadoria Programada Individual - FAPI - 13° salário; 63 - Fundação de Previdência Complementar do Servidor Público Federal - Funpresp - Remuneração Mensal;
64 - Fundação de Previdência Complementar do Servidor Público Federal - Funpresp - 13° salário;
Isenções do IRRF:
70 - Parcela Isenta 65 anos - Remuneração Mensal; 71 - Parcela Isenta 65 anos - 13° salário;
72 - Diárias;
73 - Ajuda de Custo;
74 - Indenização e rescisão de contrato, inclusive a título de PDV e acidentes de trabalho;
75 - Abono pecuniário;
76 - Pensão, aposentadoria ou reforma por moléstia grave ou acidente em serviço - Remuneração Mensal;
77 - Pensão, aposentadoria ou reforma por moléstia grave ou acidente em serviço - 13° salário;
78 - Valores pagos a titular ou sócio de microempresa ou empresa de pequeno porte, exceto pró-labore e alugueis;
79 - Outras isenções (identificar o nome da rubrica em S-1010);
Demandas Judiciais: 81 - Depósito Judicial;
82 - Compensação Judicial do ano calendário; 83 - Compensação Judicial de anos anteriores;
Incidência Suspensa decorrente de decisão judicial, relativas a base de cálculo do IRRF sobre:
91 - Remuneração Mensal; 92 - 13o Salário;
93 - Férias;
94 - PLR;
95 - RRA.
Validação: Deve ser um código válido, conforme opções acima. Valores Válidos:';
comment on column S_5002.VALOR is
  '[valor]<<>>Valor da base de cálculo, retenção, dedução ou isenção do Imposto de Renda Retido na Fonte, conforme definido no campo {tpValor}.
Validação: Deve ser maior que zero.
Deve corresponder ao somatório do campo {vrRubr} em S-1200 e S-1202, nos grupos {remunPerApur} e {remunPerAnt}, e em S-2299 e S-2399, das rubricas cujo {tpRubr} seja igual a [1,3] menos as rubricas cujo {tpRubr} seja igual a [2,4], cujo pagamento tenha sido realizado no mês indicado em
{perApur}, conforme informado em S-1210, campo {dtPgto}. Os valores devem ser agrupados de acordo com {codIncIRRF} em S-1010.';
comment on column S_5002.IRRF is '[irrf]<<>>Informações relativas ao Imposto de Renda Retido na Fonte                            ';
comment on column S_5002.TPCR is
  '[tpCR]<<>>Código de Receita - CR relativo ao Imposto de Renda Retido na Fonte sobre rendimentos do trabalho, conforme legislação em vigor na competência: 0561-07 - IRRF Mensal, 13° salário e Férias sobre Trabalho Assalariado no país ou ausente no exterior a serviço do país, exceto se contratado por Empregador Doméstico ou por Segurado Especial sujeito a recolhimento unificado;
0561-08 - IRRF Mensal, 13° salário e Férias sobre Trabalho Assalariado no país ou ausente no exterior a serviço do país, Empregado Doméstico ou Trabalhador contratado por Segurado Especial sujeito a recolhimento unificado;
0561-09 - IRRF 13° salário na rescisão de contrato de trabalho relativo a empregador sujeito a recolhimento unificado.
0588-06 - IRRF sobre Rendimento do trabalho sem vínculo empregatício; 0610- 01 - IRRF sobre Rendimentos relativos a prestação de serviços de transporte rodoviário internacional de carga, pagos a transportador autônomo PF residente no Paraguai;
3280-06 - IRRF sobre Serviços Prestados por associados de cooperativas de trabalho;
3562-01 - IRRF sobre Participação dos trabalhadores em Lucros ou Resultados (PLR).
Origem S-1210, para definição do mês de ocorrência dos fatos geradores e os respectivos demonstrativos de pagamento constantes dos eventos S-1200, S-1202, S-2299 e S-2399.
Validação: Deve ser um código válido, conforme opções acima.';
comment on column S_5002.VRIRRFDESC is
  '[vrIrrfDesc]<<>>Valor efetivamente descontado relativo ao Imposto de Renda Retido na Fonte sobre rendimentos do trabalho;
0561-07: Se {codCateg} = [101,103,105,106,201,202,301,302,303,305,306,309,401,410] e {classTrib}
<> [22], efetuar o somatório do valor das rubricas cujo {codIncIRRF} = [31,32,33];
0561-08: Se {codCateg} = [104] ou ({codCateg} = [101,102] e {classTrib}
= [22]), efetuar o somatório do valor das rubricas cujo {codIncIRRF} = [31,32,33], exceto {codIncIRRF} = [32] oriundas do evento S-2299;  0561-09: Se {codCateg} = [104] ou ({codCateg} = [101,102] e {classTrib}
= [22]), efetuar o somatório do valor das rubricas cujo {codIncIRRF} = [32]
oriundas do evento S-2299;
0588-06: Se {codCateg} = [701, 711, 721, 722, 723, 738, 741, 751, 761,
771, 781], efetuar o somatório do valor das rubricas cujo {codIncIRRF} =
[31];
0610- 01: Se {codCateg} = [734] e {paisResid} do Trabalhador = [586]
efetuar o somatório do valor das rubricas cujo {codIncIRRF} = [31];
3280-06: Se {indCoop} = [1] e (({codCateg} = [731]) ou ({codCateg} =
[734] e {paisResid} do Trabalhador <> [586])), efetuar o somatório do valor
das rubricas cujo {codIncIRRF} = [31];
3562-01: Efetuar o somatório do valor das rubricas cujo {codIncIRRF} =
[34].
Origem S-1210, para definição do mês de ocorrência dos fatos geradores e
os respectivos demonstrativos de pagamento constantes dos eventos S-1200,
S-1202, S-2299 e S-2399, correlacionados com o evento S-1010 - Tabela de
Rubricas.';
