--Colunas comentadas possuem nomes duplicados necessitam tratamento posterior, inclusive para o comments que sobrescreve
--drop table S_5001;

create table S_5001
(
  EVTBASESTRAB     integer,
  ID               varchar2 (36),
  IDEEVENTO        integer,
  NRRECARQBASE     varchar2 (40),
  INDAPURACAO      numeric (1),
  PERAPUR          varchar2 (7),
  IDEEMPREGADOR    integer,
  TPINSC           numeric (1),
  NRINSC           varchar2 (15),
  IDETRABALHADOR   integer,
  CPFTRAB          varchar2 (11),
  PROCJUDTRAB      integer,
  NRPROCJUD        varchar2 (20),
  INFOCPCALC       integer,
  TPCR             numeric (6),
  VRCPSEG          numeric (14, 2),
  VRDESCSEG        numeric (14, 2),
  INFOCP           integer,
  IDEESTABLOT      integer,
  --TPINSC           numeric (1),
  --NRINSC           varchar2 (15),
  CODLOTACAO       varchar2 (30),
  INFOCATEGINCID   integer,
  MATRICULA        varchar2 (30),
  CODCATEG         numeric (3),
  INDSIMPLES       numeric (1),
  INFOBASECS       integer,
  IND13            numeric (1),
  TPVALOR          numeric (2),
  VALOR            numeric (14, 2),
  CALCTERC         integer,
  --TPCR             numeric (6),
  VRCSSEGTERC      numeric (14, 2),
  VRDESCTERC       numeric (14, 2)
);

comment on table S_5001 is 'Registros do evento S-5001 - Informações das contribuições sociais por trabalhador';
comment on column S_5001.EVTBASESTRAB is '[evtBasesTrab]<<>>Evento Bases por Trabalhador';
comment on column S_5001.ID is '[Id]<<>>Identificação única do evento.
Validação: Deve ser um Id válido, conforme descrito na REGRA_VALIDA_ID_EVENTO.';
comment on column S_5001.IDEEVENTO is '[ideEvento]<<>>Identificação do evento de retorno';
comment on column S_5001.NRRECARQBASE is
  '[nrRecArqBase]<<>>Preencher com o número do recibo do arquivo que deu origem ao presente arquivo de retorno ao empregador.
Validação: Deve ser um recibo de entrega válido correspondente um arquivo no leiaute S-4000.';
comment on column S_5001.INDAPURACAO is '[indApuracao]<<>>Indicativo de período de apuração: 1 - Mensal;
2 - Anual (13° salário).
Valores Válidos: 1, 2';
comment on column S_5001.PERAPUR is
  '[perApur]<<>>Informar o mês/ano (formato AAAA-MM) de referência das informações, se {indApuracao} for igual a [1], ou apenas o ano (formato AAAA), se {indApuracao} for igual a [2].
Evento de origem (S-4000) campo {perSolicit}.  Validação: Deve ser um mês/ano ou ano válido, posterior a implementação do eSocial.';
comment on column S_5001.IDEEMPREGADOR is '[ideEmpregador]<<>>Informações de identificação do empregador';
comment on column S_5001.TPINSC is '[tpInsc]<<>>Preencher com o código correspondente ao tipo de inscrição, conforme tabela 5
Validação: Deve ser igual a [1] (CNPJ) ou [2] (CPF)';
comment on column S_5001.NRINSC is
  '[nrInsc]<<>>Informar o número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}. Se for um CNPJ deve ser informada apenas a Raiz/Base de oito posições, exceto se natureza jurídica de administração pública federal ([101-5], [104-0], [107-4], [116-3]), situação em que o campo deve ser preenchido com o CNPJ completo com 14 posições. Validação: Se {tpInsc} for igual a [1], deve ser um número de CNPJ válido. Se {tpInsc} for igual a [2], deve ser um CPF válido.';
comment on column S_5001.IDETRABALHADOR is
  '[ideTrabalhador]<<>>Registro que apresenta a identificação básica do trabalhador ao qual se refere o evento de remuneração.';
comment on column S_5001.CPFTRAB is '[cpfTrab]<<>>Preencher com o número do CPF do trabalhador. Evento de origem (S-4000)';
comment on column S_5001.PROCJUDTRAB is
  '[procJudTrab]<<>>Informações sobre processos judiciais do trabalhador com decisão favorável quanto à não incidência de contribuição previdenciária.';
comment on column S_5001.NRPROCJUD is '[nrProcJud]<<>>Informar o número do processo judicial.
Validação: O processo deve existir na tabela de processos.';
comment on column S_5001.INFOCPCALC is
  '[infoCpCalc]<<>>Cálculo da contribuição previdenciária do segurado, incidente sobre a Remuneração do Período de Apuração e de Períodos Anteriores informada nos eventos S-1200, S-2299 e S-2399.';
comment on column S_5001.TPCR is
  '[tpCR]<<>>Código de Receita (CR) da contribuição descontada do trabalhador. Preencher de acordo com a seguinte tabela: 1082-01 - Contribuição previdenciária (CP) descontada do segurado empregado/avulso, alíquotas 8%, 9% ou 11%; 1082-02 - CP descontada do segurado empregado rural curto prazo, alíquota de 8%, lei 11718/2008;
1082-03 - CP descontada do segurado empregado doméstico ou segurado especial, alíquota de 8%, 9% ou 11%;
1082-04 - CP descontada do segurado especial curto prazo, alíquota de 8%, lei 11718/2008; 1082-21 - CP descontada do segurado empregado/avulso 13° salário, alíquotas 8%, 9% ou 11%. (codIncCP=12);
1082-22 - CP descontada do segurado empregado rural curto prazo 13° salário, alíquota de 8%, lei 11718/2008 (codIncCP=12);
1082-23 - CP descontada do segurado empregado doméstico ou segurado especial 13° salário, alíquota de 8%, 9% ou
11% ;(codIncCP=12);
1082-24 - CP descontada do segurado especial curto prazo 13° salário, alíquota de 8%, lei 11718/2008 (codIncCP=12);
1099-01 - CP descontada do contribuinte individual, alíquota de 11%;
1099-02 - CP descontada do contribuinte individual, alíquota de 20%.
Validação: Se indApuracao = [2], tpCR = 1082-21, 1082,22,
1082-23, 1082-24.';
comment on column S_5001.VRCPSEG is
  '[vrCpSeg]<<>>Valor da contribuição do segurado, devida à Previdência Social, calculada segundo as regras da legislação em vigor, por CR. Validação: 1. Se {indMV} do S-1200 = [3], {vlrCPseg} = 0, portanto não há CR;
2. Se {indMV} do S-1200 = [1,2], efetuar o somatório das ocorrências do campo {vlrRemunOE} e o somatório de {valor} qdo {tpValor}=[11,12,13,14] do grupo {infoBaseCS}, resultando em [TotalRemun]:
a) se [TotalRemun] ultrapassar o limite máximo do Salário de Contribuição, aplicar a alíquota conforme a categoria do segurado sobre a diferença entre o referido limite máximo e o somatório das ocorrências do campo {vlrRemunOE};
b) se [TotalRemun] for inferior ao limite máximo do Salário de Contribuição, aplicar a alíquota referente a [TotalRemun], conforme a categoria do segurado, sobre a remuneração paga pelo declarante (somatório de {valor} qdo
{tpValor}=[11,12,13nd,14], do grupo {infoBaseCS}).
3. Se não informado o grupo {infoMV} do S-1200:
a) se o trabalhador presta serviço para a empresa declarante em apenas uma categoria {codCateg}, efetuar o somatório de
{valor} qdo {tpValor}=[11,12,13,14], do grupo {infoBaseCS} e aplicar a alíquota conforme a categoria.
b) se o trabalhador presta serviço para a empresa declarante em mais de uma categoria {codCateg}:
I. efetuar o somatório de {valor} qdo {tpValor}=[11,12,13,14], do grupo {infoBaseCS} para todas as categorias de segurado empregado e aplicar a alíquota correta conforme faixa salarial observado o limite máximo do salário de contribuição;
II. Caso o somatório do item I não tenha atingido o limite máximo do salário de contribuição, efetuar o somatório de
{valor} qdo {tpValor}=[11,12,13,14], do grupo {infoBaseCS} para todas as categorias diferentes de segurado empregado e aplicar a alíquota correta conforme a categoria, observado o limite máximo do salário de contribuição.
OBS.:
a) No caso de {indapur}=[1], o cálculo deve ser efetuado separadamente para {ind13}= [0]  e {ind13}=[1]. A soma de ambos cálculos deve correspondente ao valor {vrCpSeg}.
b) O cálculo da contribuição a ser descontada de Contribuinte Individual (codCateg=731 ou 734), pela Cooperativa de Trabalho, deve ser feito aplicando-se a alíquota de 20%, independentemente de a lotação ser do tipo 05, 06 ou 07.';
comment on column S_5001.VRDESCSEG is '[vrDescSeg]<<>>Valor efetivamente descontado do segurado, correspondente a
{tpValor} = [21], do correspondente {tpCR}.';
comment on column S_5001.INFOCP is
  '[infoCp]<<>>Informações sobre bases de cálculo, descontos e deduções de contribuições sociais devidas à Previdência Social e a Outras Entidades e Fundos, referentes à Remuneração do Período de Apuração e de Períodos Anteriores informados nos eventos S- 1200, S-2299 e S-2399.';
comment on column S_5001.IDEESTABLOT is
  '[ideEstabLot]<<>>Identificação do estabelecimento ou obra de construção civil e da lotação tributária.
As informações desse grupo foram prestadas pelo contribuinte nos eventos S-1200, S-2299 e S-2399.';
comment on column S_5001.TPINSC is
  '[tpInsc]<<>>Preencher com o código correspondente ao tipo de inscrição, conforme tabela 5.
Evento de origem (S-1200, S-2299 ou S-2399)
Validação: Para empregador PJ, preencher com [1,4]. Para empregador PF, preencher com [3,4], exceto empregador doméstico que deve ser preenchido com [2].
Valores Válidos: 1, 2, 3, 4.';
comment on column S_5001.NRINSC is
  '[nrInsc]<<>>Informar o número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}. Para o empregador doméstico, informar o CPF. Evento de origem (S-1200, S-2299 ou S-2399).
Validação: Deve estar coerente com o indicado em {tpInsc} e constar no evento S-1200 correspondente.';
comment on column S_5001.CODLOTACAO is
  '[codLotacao]<<>>Informar o código atribuído pela empresa para a lotação tributária.
Evento de origem (S-1200, S-2299, S-2399). Validação: Deve estar coerente com o informado pelo contribuinte no evento S-1200.';
comment on column S_5001.INFOCATEGINCID is
  '[infoCategIncid]<<>>Informações relativas à matrícula e categoria do trabalhador e tipos de incidências.';
comment on column S_5001.MATRICULA is
  '[matricula]<<>>Matrícula atribuída ao trabalhador pela empresa ou, no caso de servidor público, a matrícula constante no Sistema de Administração de Recursos Humanos do órgão.
Evento de origem (S-1200/S-2299).
Validação: Deve corresponder à matrícula constante no evento S-1200/S-1299, caso tenha sido informada, sendo nesse caso, informação obrigatória.
Não preencher nos demais casos.';
comment on column S_5001.CODCATEG is '[codCateg]<<>>Preencher com o código da categoria do trabalhador, conforme Tabela 1.
Evento de origem (S-1200/ S-2299/S-2399).
Validação: Deve estar coerente com a informação prestada pelo empregador no evento S-1200.';
comment on column S_5001.INDSIMPLES is
  '[indSimples]<<>>Indicador de Contribuição Substituída:
1 - Contribuição Substituída Integralmente; 2 - Contribuição não substituída;
3 - Contribuição não substituída concomitante com contribuição substituída.
Evento de origem (S-1200/ S-2299/S-2399).
Validação: O preenchimento do campo é obrigatório apenas no caso das empresas enquadradas no regime de tributação Simples Nacional, com tributação previdenciária substituída e não substituída, ({classTrib} do evento S-1000 -Informações do Empregador = [03]). Para os demais empregadores, não deve  ser informado.
Valores Válidos: 1, 2, 3.';
comment on column S_5001.INFOBASECS is
  '[infoBaseCS]<<>>Informações sobre bases de cálculo, descontos e deduções de contribuições sociais devidas à Previdência Social e a Outras Entidades e Fundos.
Evento de origem (S-1200, S-2299 e S-2399).';
comment on column S_5001.IND13 is '[ind13]<<>>Indicativo de 13° salário: 0 - Mensal;
1 - 13° salário -  {codIncCP} = [12,22,32,92,94].
Validação: Se {indApuracao} = [2], preencher com [1].';
comment on column S_5001.TPVALOR is
  '[tpValor]<<>>Tipo de valor que influi na apuração da contribuição devida: 11 - Base de cálculo da Contribuição Previdenciária normal; 12 - Base de cálculo da Contribuição Previdenciária adicional para o financiamento dos benefícios de aposentadoria especial após 15 anos de contribuição;
13 - Base de cálculo da Contribuição Previdenciária adicional para o financiamento dos benefícios de aposentadoria especial após 20 anos de contribuição;
14 - Base de cálculo da Contribuição Previdenciária adicional para o financiamento dos benefícios de aposentadoria especial após 25 anos de contribuição;
21 - Valor total descontado do trabalhador para recolhimento à Previdência Social;
22 - Valor descontado do trabalhador para recolhimento ao Sest;
23 - Valor descontado do trabalhador para recolhimento ao Senat;
31 - Valor pago ao trabalhador a título de salário-família;
32 - Valor pago ao trabalhador a título de salário-maternidade; 91 - Incidência suspensa em decorrência de decisão judicial - Base de cálculo (BC) da Contribuição Previdenciária (CP) Normal;
92 - Incid. suspensa em decorrência de decisão judicial - BC CP Aposentadoria Especial aos 15 anos de trabalho;
93 - Incid. suspensa em decorrência de decisão judicial - BC CP Aposentadoria Especial aos 20 anos de trabalho;
94 - Incid. suspensa em decorrência de decisão judicial - BC CP Aposentadoria Especial aos 25 anos de trabalho.
Validação: Vide acima, nas instruções para preenchimento. Valores Válidos: Observar valores acima.';
comment on column S_5001.VALOR is
  '[valor]<<>>Valor da base de cálculo, dedução ou desconto da contribuição social devida à Previdência Social ou a Outras Entidades e Fundos, conforme definido no campo {tpValor}. Validação: Deve ser maior que 0 (zero).
Deve corresponder ao somatório dos valores informados no campo {vrRubr} em S-1200, nos grupos {remunPerApur} e
{remunPerAnt}, e também em S-2299 e S-2399. Para tanto, somar os valores das rubricas cujo {tpRubr} em {S-1010} seja igual a [1,3] e subtrair os valores das rubricas cujo {tpRubr} em
{S-1010} seja igual a [2,4], observando a tabela de relacionamento abaixo:
{tpValor} = 11*, {codIncCP} = [11,12,21,22] e [grauExp] = 1;
{tpValor} = 12*, {codIncCP} = [11,12,21,22] e [grauExp] = 2;
{tpValor} = 13*, {codIncCP} = [11,12,21,22] e [grauExp] = 3;
{tpValor} = 14*, {codIncCP} = [11,12,21,22] e [grauExp] = 4;
{tpValor} = 21, {codIncCP} = [31, 32];
{tpValor} = 22, {codIncCP} = [34];
{tpValor} = 23, {codIncCP} = [35];
{tpValor} = 31, {codIncCP} = [51];
{tpValor} = 32, {codIncCP} = [21, 22];
{tpValor} = 91, {codIncCP} = [91, 92, 93, 94] e
{grauExp}=[1];
{tpValor} = 92, {codIncCP} = [91, 92, 93, 94] e
{grauExp}=[2];
{tpValor} = 93, {codIncCP} = [91, 92, 93, 94] e
{grauExp}=[3];
{tpValor} = 94, {codIncCP} = [91, 92, 93, 94] e
{grauExp}=[4].
* Caso {codIncCP} da rubrica em S-1010 seja igual a [91, 92, 93, 94] e {indSusp} do respectivo processo em S-1070 seja diferente de [90] (decisão definitiva), o valor também deverá ser computado na composição das bases do {tpValor} = [11,12,13,14].';
comment on column S_5001.CALCTERC is '[calcTerc]<<>>Cálculo das contribuições sociais devidas a Outras Entidades e Fundos.';
comment on column S_5001.TPCR is
  '[tpCR]<<>>Código de Receita (CR) da contribuição descontada do trabalhador. Preencher de acordo com a seguinte tabela:
1218-02 - Contribuição ao SEST, descontada do transportador autônomo, à alíquota de 1,5%;
1221-02 - Contribuição ao SENAT, descontada do transportador autônomo, à alíquota de 1,0%.
Validação: Deve ser um código indicado nas instruções de preenchimento.';
comment on column S_5001.VRCSSEGTERC is
  '[vrCsSegTerc]<<>>Valor da contribuição social devida a Outras Entidades ou Fundos, calculada segundo a legislação em vigor, por CR. Validação: 1218-02 - Somatório de {valor} qdo
{tpValor}=[11,12,13,14], do grupo {infoBaseCS} multiplicado pela alíquota de 1,5%, se categoria {codCateg} = [711]- Transportador Autônomo;
1221-02. Somatório de {valor} qdo {tpValor}=[11,12,13,14], do grupo {infoBaseCS} multiplicado pela alíquota de 1,0% se categoria {codCateg} = [711]-Transportador Autônomo.';
comment on column S_5001.VRDESCTERC is '[vrDescTerc]<<>>Valor efetivamente descontado do segurado,correspondente a
{tpValor} = [22,23], do correspondente {tpCR}.';
