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

comment on table S_5001 is 'Registros do evento S-5001 - Informa��es das contribui��es sociais por trabalhador';
comment on column S_5001.EVTBASESTRAB is '[evtBasesTrab]<<>>Evento Bases por Trabalhador';
comment on column S_5001.ID is '[Id]<<>>Identifica��o �nica do evento.
Valida��o: Deve ser um Id v�lido, conforme descrito na REGRA_VALIDA_ID_EVENTO.';
comment on column S_5001.IDEEVENTO is '[ideEvento]<<>>Identifica��o do evento de retorno';
comment on column S_5001.NRRECARQBASE is
  '[nrRecArqBase]<<>>Preencher com o n�mero do recibo do arquivo que deu origem ao presente arquivo de retorno ao empregador.
Valida��o: Deve ser um recibo de entrega v�lido correspondente um arquivo no leiaute S-4000.';
comment on column S_5001.INDAPURACAO is '[indApuracao]<<>>Indicativo de per�odo de apura��o: 1 - Mensal;
2 - Anual (13� sal�rio).
Valores V�lidos: 1, 2';
comment on column S_5001.PERAPUR is
  '[perApur]<<>>Informar o m�s/ano (formato AAAA-MM) de refer�ncia das informa��es, se {indApuracao} for igual a [1], ou apenas o ano (formato AAAA), se {indApuracao} for igual a [2].
Evento de origem (S-4000) campo {perSolicit}.  Valida��o: Deve ser um m�s/ano ou ano v�lido, posterior a implementa��o do eSocial.';
comment on column S_5001.IDEEMPREGADOR is '[ideEmpregador]<<>>Informa��es de identifica��o do empregador';
comment on column S_5001.TPINSC is '[tpInsc]<<>>Preencher com o c�digo correspondente ao tipo de inscri��o, conforme tabela 5
Valida��o: Deve ser igual a [1] (CNPJ) ou [2] (CPF)';
comment on column S_5001.NRINSC is
  '[nrInsc]<<>>Informar o n�mero de inscri��o do contribuinte de acordo com o tipo de inscri��o indicado no campo {tpInsc}. Se for um CNPJ deve ser informada apenas a Raiz/Base de oito posi��es, exceto se natureza jur�dica de administra��o p�blica federal ([101-5], [104-0], [107-4], [116-3]), situa��o em que o campo deve ser preenchido com o CNPJ completo com 14 posi��es. Valida��o: Se {tpInsc} for igual a [1], deve ser um n�mero de CNPJ v�lido. Se {tpInsc} for igual a [2], deve ser um CPF v�lido.';
comment on column S_5001.IDETRABALHADOR is
  '[ideTrabalhador]<<>>Registro que apresenta a identifica��o b�sica do trabalhador ao qual se refere o evento de remunera��o.';
comment on column S_5001.CPFTRAB is '[cpfTrab]<<>>Preencher com o n�mero do CPF do trabalhador. Evento de origem (S-4000)';
comment on column S_5001.PROCJUDTRAB is
  '[procJudTrab]<<>>Informa��es sobre processos judiciais do trabalhador com decis�o favor�vel quanto � n�o incid�ncia de contribui��o previdenci�ria.';
comment on column S_5001.NRPROCJUD is '[nrProcJud]<<>>Informar o n�mero do processo judicial.
Valida��o: O processo deve existir na tabela de processos.';
comment on column S_5001.INFOCPCALC is
  '[infoCpCalc]<<>>C�lculo da contribui��o previdenci�ria do segurado, incidente sobre a Remunera��o do Per�odo de Apura��o e de Per�odos Anteriores informada nos eventos S-1200, S-2299 e S-2399.';
comment on column S_5001.TPCR is
  '[tpCR]<<>>C�digo de Receita (CR) da contribui��o descontada do trabalhador. Preencher de acordo com a seguinte tabela: 1082-01 - Contribui��o previdenci�ria (CP) descontada do segurado empregado/avulso, al�quotas 8%, 9% ou 11%; 1082-02 - CP descontada do segurado empregado rural curto prazo, al�quota de 8%, lei 11718/2008;
1082-03 - CP descontada do segurado empregado dom�stico ou segurado especial, al�quota de 8%, 9% ou 11%;
1082-04 - CP descontada do segurado especial curto prazo, al�quota de 8%, lei 11718/2008; 1082-21 - CP descontada do segurado empregado/avulso 13� sal�rio, al�quotas 8%, 9% ou 11%. (codIncCP=12);
1082-22 - CP descontada do segurado empregado rural curto prazo 13� sal�rio, al�quota de 8%, lei 11718/2008 (codIncCP=12);
1082-23 - CP descontada do segurado empregado dom�stico ou segurado especial 13� sal�rio, al�quota de 8%, 9% ou
11% ;(codIncCP=12);
1082-24 - CP descontada do segurado especial curto prazo 13� sal�rio, al�quota de 8%, lei 11718/2008 (codIncCP=12);
1099-01 - CP descontada do contribuinte individual, al�quota de 11%;
1099-02 - CP descontada do contribuinte individual, al�quota de 20%.
Valida��o: Se indApuracao = [2], tpCR = 1082-21, 1082,22,
1082-23, 1082-24.';
comment on column S_5001.VRCPSEG is
  '[vrCpSeg]<<>>Valor da contribui��o do segurado, devida � Previd�ncia Social, calculada segundo as regras da legisla��o em vigor, por CR. Valida��o: 1. Se {indMV} do S-1200 = [3], {vlrCPseg} = 0, portanto n�o h� CR;
2. Se {indMV} do S-1200 = [1,2], efetuar o somat�rio das ocorr�ncias do campo {vlrRemunOE} e o somat�rio de {valor} qdo {tpValor}=[11,12,13,14] do grupo {infoBaseCS}, resultando em [TotalRemun]:
a) se [TotalRemun] ultrapassar o limite m�ximo do Sal�rio de Contribui��o, aplicar a al�quota conforme a categoria do segurado sobre a diferen�a entre o referido limite m�ximo e o somat�rio das ocorr�ncias do campo {vlrRemunOE};
b) se [TotalRemun] for inferior ao limite m�ximo do Sal�rio de Contribui��o, aplicar a al�quota referente a [TotalRemun], conforme a categoria do segurado, sobre a remunera��o paga pelo declarante (somat�rio de {valor} qdo
{tpValor}=[11,12,13nd,14], do grupo {infoBaseCS}).
3. Se n�o informado o grupo {infoMV} do S-1200:
a) se o trabalhador presta servi�o para a empresa declarante em apenas uma categoria {codCateg}, efetuar o somat�rio de
{valor} qdo {tpValor}=[11,12,13,14], do grupo {infoBaseCS} e aplicar a al�quota conforme a categoria.
b) se o trabalhador presta servi�o para a empresa declarante em mais de uma categoria {codCateg}:
I. efetuar o somat�rio de {valor} qdo {tpValor}=[11,12,13,14], do grupo {infoBaseCS} para todas as categorias de segurado empregado e aplicar a al�quota correta conforme faixa salarial observado o limite m�ximo do sal�rio de contribui��o;
II. Caso o somat�rio do item I n�o tenha atingido o limite m�ximo do sal�rio de contribui��o, efetuar o somat�rio de
{valor} qdo {tpValor}=[11,12,13,14], do grupo {infoBaseCS} para todas as categorias diferentes de segurado empregado e aplicar a al�quota correta conforme a categoria, observado o limite m�ximo do sal�rio de contribui��o.
OBS.:
a) No caso de {indapur}=[1], o c�lculo deve ser efetuado separadamente para {ind13}= [0]  e {ind13}=[1]. A soma de ambos c�lculos deve correspondente ao valor {vrCpSeg}.
b) O c�lculo da contribui��o a ser descontada de Contribuinte Individual (codCateg=731 ou 734), pela Cooperativa de Trabalho, deve ser feito aplicando-se a al�quota de 20%, independentemente de a lota��o ser do tipo 05, 06 ou 07.';
comment on column S_5001.VRDESCSEG is '[vrDescSeg]<<>>Valor efetivamente descontado do segurado, correspondente a
{tpValor} = [21], do correspondente {tpCR}.';
comment on column S_5001.INFOCP is
  '[infoCp]<<>>Informa��es sobre bases de c�lculo, descontos e dedu��es de contribui��es sociais devidas � Previd�ncia Social e a Outras Entidades e Fundos, referentes � Remunera��o do Per�odo de Apura��o e de Per�odos Anteriores informados nos eventos S- 1200, S-2299 e S-2399.';
comment on column S_5001.IDEESTABLOT is
  '[ideEstabLot]<<>>Identifica��o do estabelecimento ou obra de constru��o civil e da lota��o tribut�ria.
As informa��es desse grupo foram prestadas pelo contribuinte nos eventos S-1200, S-2299 e S-2399.';
comment on column S_5001.TPINSC is
  '[tpInsc]<<>>Preencher com o c�digo correspondente ao tipo de inscri��o, conforme tabela 5.
Evento de origem (S-1200, S-2299 ou S-2399)
Valida��o: Para empregador PJ, preencher com [1,4]. Para empregador PF, preencher com [3,4], exceto empregador dom�stico que deve ser preenchido com [2].
Valores V�lidos: 1, 2, 3, 4.';
comment on column S_5001.NRINSC is
  '[nrInsc]<<>>Informar o n�mero de inscri��o do contribuinte de acordo com o tipo de inscri��o indicado no campo {tpInsc}. Para o empregador dom�stico, informar o CPF. Evento de origem (S-1200, S-2299 ou S-2399).
Valida��o: Deve estar coerente com o indicado em {tpInsc} e constar no evento S-1200 correspondente.';
comment on column S_5001.CODLOTACAO is
  '[codLotacao]<<>>Informar o c�digo atribu�do pela empresa para a lota��o tribut�ria.
Evento de origem (S-1200, S-2299, S-2399). Valida��o: Deve estar coerente com o informado pelo contribuinte no evento S-1200.';
comment on column S_5001.INFOCATEGINCID is
  '[infoCategIncid]<<>>Informa��es relativas � matr�cula e categoria do trabalhador e tipos de incid�ncias.';
comment on column S_5001.MATRICULA is
  '[matricula]<<>>Matr�cula atribu�da ao trabalhador pela empresa ou, no caso de servidor p�blico, a matr�cula constante no Sistema de Administra��o de Recursos Humanos do �rg�o.
Evento de origem (S-1200/S-2299).
Valida��o: Deve corresponder � matr�cula constante no evento S-1200/S-1299, caso tenha sido informada, sendo nesse caso, informa��o obrigat�ria.
N�o preencher nos demais casos.';
comment on column S_5001.CODCATEG is '[codCateg]<<>>Preencher com o c�digo da categoria do trabalhador, conforme Tabela 1.
Evento de origem (S-1200/ S-2299/S-2399).
Valida��o: Deve estar coerente com a informa��o prestada pelo empregador no evento S-1200.';
comment on column S_5001.INDSIMPLES is
  '[indSimples]<<>>Indicador de Contribui��o Substitu�da:
1 - Contribui��o Substitu�da Integralmente; 2 - Contribui��o n�o substitu�da;
3 - Contribui��o n�o substitu�da concomitante com contribui��o substitu�da.
Evento de origem (S-1200/ S-2299/S-2399).
Valida��o: O preenchimento do campo � obrigat�rio apenas no caso das empresas enquadradas no regime de tributa��o Simples Nacional, com tributa��o previdenci�ria substitu�da e n�o substitu�da, ({classTrib} do evento S-1000 -Informa��es do Empregador = [03]). Para os demais empregadores, n�o deve  ser informado.
Valores V�lidos: 1, 2, 3.';
comment on column S_5001.INFOBASECS is
  '[infoBaseCS]<<>>Informa��es sobre bases de c�lculo, descontos e dedu��es de contribui��es sociais devidas � Previd�ncia Social e a Outras Entidades e Fundos.
Evento de origem (S-1200, S-2299 e S-2399).';
comment on column S_5001.IND13 is '[ind13]<<>>Indicativo de 13� sal�rio: 0 - Mensal;
1 - 13� sal�rio -  {codIncCP} = [12,22,32,92,94].
Valida��o: Se {indApuracao} = [2], preencher com [1].';
comment on column S_5001.TPVALOR is
  '[tpValor]<<>>Tipo de valor que influi na apura��o da contribui��o devida: 11 - Base de c�lculo da Contribui��o Previdenci�ria normal; 12 - Base de c�lculo da Contribui��o Previdenci�ria adicional para o financiamento dos benef�cios de aposentadoria especial ap�s 15 anos de contribui��o;
13 - Base de c�lculo da Contribui��o Previdenci�ria adicional para o financiamento dos benef�cios de aposentadoria especial ap�s 20 anos de contribui��o;
14 - Base de c�lculo da Contribui��o Previdenci�ria adicional para o financiamento dos benef�cios de aposentadoria especial ap�s 25 anos de contribui��o;
21 - Valor total descontado do trabalhador para recolhimento � Previd�ncia Social;
22 - Valor descontado do trabalhador para recolhimento ao Sest;
23 - Valor descontado do trabalhador para recolhimento ao Senat;
31 - Valor pago ao trabalhador a t�tulo de sal�rio-fam�lia;
32 - Valor pago ao trabalhador a t�tulo de sal�rio-maternidade; 91 - Incid�ncia suspensa em decorr�ncia de decis�o judicial - Base de c�lculo (BC) da Contribui��o Previdenci�ria (CP) Normal;
92 - Incid. suspensa em decorr�ncia de decis�o judicial - BC CP Aposentadoria Especial aos 15 anos de trabalho;
93 - Incid. suspensa em decorr�ncia de decis�o judicial - BC CP Aposentadoria Especial aos 20 anos de trabalho;
94 - Incid. suspensa em decorr�ncia de decis�o judicial - BC CP Aposentadoria Especial aos 25 anos de trabalho.
Valida��o: Vide acima, nas instru��es para preenchimento. Valores V�lidos: Observar valores acima.';
comment on column S_5001.VALOR is
  '[valor]<<>>Valor da base de c�lculo, dedu��o ou desconto da contribui��o social devida � Previd�ncia Social ou a Outras Entidades e Fundos, conforme definido no campo {tpValor}. Valida��o: Deve ser maior que 0 (zero).
Deve corresponder ao somat�rio dos valores informados no campo {vrRubr} em S-1200, nos grupos {remunPerApur} e
{remunPerAnt}, e tamb�m em S-2299 e S-2399. Para tanto, somar os valores das rubricas cujo {tpRubr} em {S-1010} seja igual a [1,3] e subtrair os valores das rubricas cujo {tpRubr} em
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
* Caso {codIncCP} da rubrica em S-1010 seja igual a [91, 92, 93, 94] e {indSusp} do respectivo processo em S-1070 seja diferente de [90] (decis�o definitiva), o valor tamb�m dever� ser computado na composi��o das bases do {tpValor} = [11,12,13,14].';
comment on column S_5001.CALCTERC is '[calcTerc]<<>>C�lculo das contribui��es sociais devidas a Outras Entidades e Fundos.';
comment on column S_5001.TPCR is
  '[tpCR]<<>>C�digo de Receita (CR) da contribui��o descontada do trabalhador. Preencher de acordo com a seguinte tabela:
1218-02 - Contribui��o ao SEST, descontada do transportador aut�nomo, � al�quota de 1,5%;
1221-02 - Contribui��o ao SENAT, descontada do transportador aut�nomo, � al�quota de 1,0%.
Valida��o: Deve ser um c�digo indicado nas instru��es de preenchimento.';
comment on column S_5001.VRCSSEGTERC is
  '[vrCsSegTerc]<<>>Valor da contribui��o social devida a Outras Entidades ou Fundos, calculada segundo a legisla��o em vigor, por CR. Valida��o: 1218-02 - Somat�rio de {valor} qdo
{tpValor}=[11,12,13,14], do grupo {infoBaseCS} multiplicado pela al�quota de 1,5%, se categoria {codCateg} = [711]- Transportador Aut�nomo;
1221-02. Somat�rio de {valor} qdo {tpValor}=[11,12,13,14], do grupo {infoBaseCS} multiplicado pela al�quota de 1,0% se categoria {codCateg} = [711]-Transportador Aut�nomo.';
comment on column S_5001.VRDESCTERC is '[vrDescTerc]<<>>Valor efetivamente descontado do segurado,correspondente a
{tpValor} = [22,23], do correspondente {tpCR}.';
