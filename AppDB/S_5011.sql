--Colunas comentadas possuem nomes duplicados necessitam tratamento posterior, inclusive para o comments que sobrescreve
--drop table S_5011;

create table S_5011
(
  EVTCS                  integer,
  ID                     varchar2 (36),
  IDEEVENTO              integer,
  INDAPURACAO            numeric (1),
  PERAPUR                varchar2 (7),
  IDEEMPREGADOR          integer,
  TPINSC                 numeric (1),
  NRINSC                 varchar2 (15),
  INFOCS                 integer,
  NATINFO                numeric (1),
  NRRECARQBASE           varchar2 (40),
  INDEXISTINFO           numeric (1),
  OBSERVACAO             varchar2 (255),
  INFOCONTRIB            integer,
  CLASSTRIB              varchar2 (2),
  INFOPJ                 integer,
  INDCOOP                numeric (1),
  INDCONSTR              numeric (1),
  INDAPURALIQFAP         numeric (1),
  INDSUBSTPATR           numeric (1),
  PERCREDCONTRIB         numeric (5, 2),
  INFOATCONC             integer,
  FATORMES               numeric (5, 4),
  FATOR13                numeric (5, 2),
  IDEESTAB               integer,
  --TPINSC                 numeric (1),
  --NRINSC                 varchar2 (15),
  INFOESTAB              integer,
  CNAEPREP               numeric (7),
  ALIQRAT                numeric (1),
  FAP                    numeric (5, 4),
  ALIQRATAJUST           numeric (5, 4),
  INFOCOMPLOBRA          integer,
  INDSUBSTPATROBRA       numeric (1),
  IDELOTACAO             integer,
  CODLOTACAO             varchar2 (30),
  FPAS                   numeric (3),
  CODTERCS               varchar2 (4),
  INFOTERCSUSP           integer,
  CODTERC                varchar2 (4),
  INFOEMPRPARCIAL        integer,
  TPINSCCONTRAT          numeric (1),
  NRINSCCONTRAT          varchar2 (14),
  TPINSCPROP             numeric (1),
  NRINSCPROP             varchar2 (14),
  DADOSOPPORT            integer,
  CNPJOPPORTUARIO        varchar2 (14),
  --ALIQRAT                numeric (1),
  --FAP                    numeric (5, 4),
  --ALIQRATAJUST           numeric (5, 4),
  BASESREMUN             integer,
  INDINCID               numeric (1),
  CODCATEG               numeric (3),
  BASESCP                integer,
  VRBCCP                 numeric (14, 2),
  VRBCCP15               numeric (14, 2),
  VRBCCP20               numeric (14, 2),
  VRBCCP25               numeric (14, 2),
  VRSUSPBCCP             numeric (14, 2),
  VRSUSPBCCP15           numeric (14, 2),
  VRSUSPBCCP20           numeric (14, 2),
  VRSUSPBCCP25           numeric (14, 2),
  VRDESCCP               numeric (14, 2),
  VRCPSEG                numeric (14, 2),
  VRDESCSEST             numeric (14, 2),
  VRCALCSEST             numeric (14, 2),
  VRDESCSENAT            numeric (14, 2),
  VRCALCSENAT            numeric (14, 2),
  VRSALFAM               numeric (14, 2),
  VRSALMAT               numeric (14, 2),
  INFOSUBSTPATROPPORT    integer,
  --CNPJOPPORTUARIO        varchar2 (14),
  PERCREDCONTRIBOPPORT   numeric (5, 2),
  BASESAQUIS             integer,
  INDAQUIS               numeric (1),
  VLRAQUIS               numeric (14, 2),
  VRCPDESCPR             numeric (14, 2),
  VRCPNRET               numeric (14, 2),
  VRRATNRET              numeric (14, 2),
  VRSENARNRET            numeric (14, 2),
  VRCPCALCPR             numeric (14, 2),
  VRRATDESCPR            numeric (14, 2),
  VRRATCALCPR            numeric (14, 2),
  VRSENARDESC            numeric (14, 2),
  VRSENARCALC            numeric (14, 2),
  BASESCOMERC            integer,
  INDCOMERC              numeric (1),
  VRBCCOMPR              numeric (14, 2),
  VRCPSUSP               numeric (14, 2),
  VRRATSUSP              numeric (14, 2),
  VRSENARSUSP            numeric (14, 2),
  BASESAVNPORT           integer,
  FPASSIND               numeric (3),
  --CODTERCS               varchar2 (4),
  VLRREMUN               numeric (14, 2),
  VR13                   numeric (14, 2),
  --VRDESCCP               numeric (14, 2),
  INFOCRESTAB            integer,
  TPCR                   numeric (6),
  VRCR                   numeric (14, 2),
  VRSUSPCR               numeric (14, 2),
  INFOCRCONTRIB          integer,
  --TPCR                   numeric (6),
  --VRCR                   numeric (14, 2),
  VRCRSUSP               numeric (14, 2)
);

comment on table S_5011 is 'Registros do evento S-5011 - Informa��es das contribui��es sociais consolidadas por contribuinte';
comment on column S_5011.EVTCS is
  '[evtCS]<<>>Evento demonstrativo das Contribui��es Sociais devidas � Previd�ncia Social e a Outras Entidades e Fundos e das suas bases de c�lculo.';
comment on column S_5011.ID is '[Id]<<>>Identifica��o �nica do evento.
Valida��o: Deve ser um Id v�lido, conforme descrito na REGRA_VALIDA_ID_EVENTO.';
comment on column S_5011.IDEEVENTO is '[ideEvento]<<>>Identifica��o do evento de retorno';
comment on column S_5011.INDAPURACAO is
  '[indApuracao]<<>>Indicativo de per�odo de apura��o: 1 - Mensal;
2 - Anual (13� sal�rio).
Evento de origem: S-4000 {perSolicit} ou S-1299.  Valida��o: Deve corresponder ao informado pelo empregador no evento de origem (S-4000 ou S-1299).
Valores V�lidos: 1, 2';
comment on column S_5011.PERAPUR is
  '[perApur]<<>>Informar o m�s/ano (formato AAAA-MM) de refer�ncia das informa��es, se {indApuracao} for igual a [1], ou apenas o ano (formato AAAA), se {indApuracao} for igual a [2]
Valida��o: Deve ser um m�s/ano ou ano v�lido, posterior a implementa��o do eSocial.';
comment on column S_5011.IDEEMPREGADOR is '[ideEmpregador]<<>>Informa��es de identifica��o do empregador';
comment on column S_5011.TPINSC is '[tpInsc]<<>>Preencher com o c�digo correspondente ao tipo de inscri��o, conforme tabela 5
Valida��o: Deve ser igual a [1] (CNPJ) ou [2] (CPF)';
comment on column S_5011.NRINSC is
  '[nrInsc]<<>>Informar o n�mero de inscri��o do contribuinte de acordo com o tipo de inscri��o indicado no campo {tpInsc}. Se for um CNPJ deve ser informada apenas a Raiz/Base de oito posi��es, exceto se natureza jur�dica de administra��o p�blica federal ([101-5], [104-0], [107-4], [116-3]), situa��o em que o campo deve ser preenchido com o CNPJ completo com 14 posi��es. Valida��o: Se {tpInsc} for igual a [1], deve ser um n�mero de CNPJ v�lido. Se {tpInsc} for igual a [2], deve ser um CPF v�lido.';
comment on column S_5011.INFOCS is
  '[infoCS]<<>>Informa��es relativas �s Contribui��es Sociais devidas � Previd�ncia Social e a Outras Entidades e Fundos.';
comment on column S_5011.NATINFO is
  '[natInfo]<<>>Natureza da informa��o, conforme op��es a seguir:
1 - Informa��o parcial, ou seja, anterior ao fechamento dos eventos peri�dicos, originada a partir da solicita��o do contribuinte atrav�s do evento S-4000;
2 - Informa��o final, ou seja, posterior ao fechamento dos eventos peri�dicos, originada a partir da solicita��o do contribuinte atrav�s do evento S-4000;
3 - Informa��o final, ou seja, posterior ao fechamento dos eventos peri�dicos, vinculada ao fechamento dos eventos peri�dicos efetuado atrav�s do evento S-1299.
Valores V�lidos: 1, 2, 3.';
comment on column S_5011.NRRECARQBASE is
  '[nrRecArqBase]<<>>Preencher com o n�mero do recibo do arquivo que deu origem ao presente arquivo de retorno ao empregador.
Valida��o: Deve ser um recibo de entrega v�lido, correspondente ao arquivo que deu origem � presente solicita��o:
a) Se {natInfo} = a [1, 2], deve corresponder a um recibo de arquivo correspondente ao leiaute S-4000;
b) Se {natInfo} = [3], deve corresponder a um recibo de arquivo correspondente ao leiaute S-1299.';
comment on column S_5011.INDEXISTINFO is
  '[indExistInfo]<<>>Indicativo de exist�ncia de valores de bases e de contribui��es sociais, conforme op��es a seguir:
1 - H� informa��es de bases e contribui��es sociais;
2 - H� movimento, por�m n�o h� informa��es de bases e contribui��es sociais;
3 - N�o h� movimento na compet�ncia.';
comment on column S_5011.OBSERVACAO is
  '[observacao]<<>>Texto Fixo: As informa��es desse evento s�o resultantes de pedido de consulta, com as seguintes caracter�sticas: a) N�o substitui o fechamento dos eventos peri�dicos (S-1299);
b) Refletem a situa��o do momento de gera��o da consulta. Valida��o: Preencher se {natInfo} = [1,2].';
comment on column S_5011.INFOCONTRIB is
  '[infoContrib]<<>>Informa��es gerais do contribuinte necess�rias � apura��o das contribui��es sociais.';
comment on column S_5011.CLASSTRIB is
  '[classTrib]<<>>Preencher com o c�digo correspondente � classifica��o tribut�ria do contribuinte, conforme tabela 8.
Evento de origem (S-1000).';
comment on column S_5011.INFOPJ is '[infoPJ]<<>>Informa��es complementares, exclusivas da Pessoa Jur�dica.';
comment on column S_5011.INDCOOP is '[indCoop]<<>>Indicativo de Cooperativa: 0 - N�o � cooperativa;
1 - Cooperativa de Trabalho; 2 - Cooperativa de Produ��o; 3 - Outras Cooperativas.
Evento de origem (S-1000) Valores V�lidos: 0, 1, 2, 3.';
comment on column S_5011.INDCONSTR is '[indConstr]<<>>Indicativo de Construtora: 0 - N�o � Construtora;
1 - Empresa Construtora. Evento de origem (S-1000) Valores V�lidos: 0, 1.';
comment on column S_5011.INDAPURALIQFAP is
  '[indApurAliqFap]<<>>Forma de apura��o do FAP: 1 - FAP atribu�do � Empresa;
2 - FAP atribu�do a cada Estabelecimento. Evento de origem (S-1000/S-1005) Valores V�lidos: 1, 2.';
comment on column S_5011.INDSUBSTPATR is '[indSubstPatr]<<>>Indicativo de substitui��o da contribui��o previdenci�ria patronal:
1 - Integralmente substitu�da; 2 - Parcialmente substitu�da.
Origem: {indSubsPatr} de S-1280. Valores V�lidos: 1, 2.';
comment on column S_5011.PERCREDCONTRIB is
  '[percRedContrib]<<>>Percentual de redu��o da contribui��o prevista na lei 12.546/2011.
Se {indSubstPatr} = 1, preencher com 0 (zero);
Se {indSubstPatr} = 2, preencher com o percentual correspondente a raz�o entre a receita de atividades n�o relacionadas nos artigos 7 e 8 da Lei 12.546/2011 e a receita bruta total.
N�o preencher nos demais casos. Evento de origem (S-1280)';
comment on column S_5011.INFOATCONC is
  '[infoAtConc]<<>>Informa��es prestadas por empresa enquadrada no Regime de Tributa��o Simples Nacional com tributa��o previdenci�ria substitu�da e n�o substitu�da.';
comment on column S_5011.FATORMES is
  '[fatorMes]<<>>Informe o fator a ser utilizado para c�lculo da contribui��o patronal do m�s dos trabalhadores envolvidos na execu��o das atividades enquadradas no Anexo IV em conjunto com as dos Anexos I a III e V da Lei Complementar n� 123/2006.
Evento de origem (S-1280)';
comment on column S_5011.FATOR13 is
  '[fator13]<<>>Informe o fator a ser utilizado para c�lculo da contribui��o patronal do d�cimo terceiro dos trabalhadores envolvidos na execu��o das atividades enquadradas no Anexo IV em conjunto com as dos Anexos I a III e V da Lei Complementar n� 123/2006.
Evento de origem (S-1280).';
comment on column S_5011.IDEESTAB is '[ideEstab]<<>>Informa��es de identifica��o do estabelecimento ou obra de constru��o civil.
Regras de Valida��o: REGRA_TABESTAB_VALIDA_VINC_ENTE';
comment on column S_5011.TPINSC is '[tpInsc]<<>>Preencher com o c�digo correspondente ao tipo de inscri��o, conforme tabela 5';
comment on column S_5011.NRINSC is
  '[nrInsc]<<>>N�mero de inscri��o do contribuinte de acordo com o tipo de inscri��o indicado no campo {tpInsc}.
A inscri��o informada segue o evento que deu origem ao presente evento (S-1250, S-1260, S-1270 e S-5001).';
comment on column S_5011.INFOESTAB is
  '[infoEstab]<<>>Informa��es relativas a cada estabelecimento, necess�rias � apura��o das contribui��es sociais.';
comment on column S_5011.CNAEPREP is '[cnaePrep]<<>>Preencher com o c�digo do CNAE 2.1 conforme informado em S-1005.';
comment on column S_5011.ALIQRAT is
  '[aliqRat]<<>>Preencher com a al�quota definida no Decreto 3.048/99 para a atividade (CNAE) preponderante, conforme informado em S- 1005.
Valida��o: Deve ser igual a 1, 2 ou 3.';
comment on column S_5011.FAP is '[fap]<<>>Fator Acident�rio de Preven��o.
Origem: S-1000 ou S-1005, conforme definido no campo
{indApurAliqFap}.';
comment on column S_5011.ALIQRATAJUST is
  '[aliqRatAjust]<<>>Al�quota do RAT ap�s ajuste pelo FAP, conforme definido em S-1005, no campo {aliqRatAjust}.
Valida��o: Deve corresponder ao resultado da multiplica��o dos campos {aliqRat} e {fap}.';
comment on column S_5011.INFOCOMPLOBRA is '[infoComplObra]<<>>Informa��es complementares relativas a obras de constru��o civil';
comment on column S_5011.INDSUBSTPATROBRA is
  '[indSubstPatrObra]<<>>Indicativo de Substitui��o da Contribui��o Patronal de Obra de Constru��o Civil, conforme definido no evento S-1005, campo
{indSubstPatrObra}:
1 - Contribui��o Patronal Substitu�da;
2 - Contribui��o Patronal N�o Substitu�da. Valores V�lidos: 1, 2.';
comment on column S_5011.IDELOTACAO is '[ideLotacao]<<>>Identifica��o da lota��o tribut�ria.';
comment on column S_5011.CODLOTACAO is '[codLotacao]<<>>Informar o c�digo atribu�do pela empresa para a lota��o tribut�ria.
Evento de origem (S-5001)
Valida��o: Deve ser um c�digo existente na tabela de LOTACOES.';
comment on column S_5011.FPAS is
  '[fpas]<<>>Preencher com o c�digo relativo ao FPAS.
Valida��o: Deve ser um c�digo FPAS v�lido, conforme tabela 4, conforme informado pelo contribuinte em S-1020.';
comment on column S_5011.CODTERCS is
  '[codTercs]<<>>Preencher com o c�digo de terceiros, conforme tabela 4. No caso de existencia de conv�nios e decis�es judiciais que resultem em nenhum recolhimento de contribui��o aos Terceiros, informar o c�digo 0000 e preencher o grupo
{infoProcJudTerceiros}.
Valida��o: Conforme informado em S-1020.';
comment on column S_5011.INFOTERCSUSP is
  '[infoTercSusp]<<>>Informa��es de suspens�o de contribui��es destinadas a Outras Entidades e Fundos (Terceiros).';
comment on column S_5011.CODTERC is
  '[codTerc]<<>>Informar o C�digo de Terceiro. Origem: Campo {codTerc} do S-1020.
Valida��o: Deve ser um c�digo de terceiro v�lido e compat�vel com o FPAS/Terceiros informado no registro superior, conforme Tabela 4.';
comment on column S_5011.INFOEMPRPARCIAL is
  '[infoEmprParcial]<<>>Informa��o complementar destinada � identifica��o do contratante e do propriet�rio de obra de constru��o civil contratada sob regime de empreitada parcial ou subempreitada. A informa��o � preenchida exclusivamente para lota��es cujo
{tpLotacao} seja igual a [2].';
comment on column S_5011.TPINSCCONTRAT is '[tpInscContrat]<<>>Tipo de Inscri��o do contratante: 1 - CNPJ;
2 - CPF.
Valores V�lidos: 1, 2.';
comment on column S_5011.NRINSCCONTRAT is
  '[nrInscContrat]<<>>N�mero de Inscri��o (CNPJ/CPF) do Contrante. Valida��o: Deve ser um n�mero de CNPJ ou CPF v�lido, conforme definido em {tpInscContrat}';
comment on column S_5011.TPINSCPROP is
  '[tpInscProp]<<>>Tipo de Inscri��o do propriet�rio do CNO. Valida��o: Deve ser igual a [1] (CNPJ) ou [2] (CPF) Valores V�lidos: 1, 2.';
comment on column S_5011.NRINSCPROP is
  '[nrInscProp]<<>>Preencher com o n�mero de inscri��o (CNPJ/CPF) do propriet�rio do CNO.
Valida��o: Deve ser um CNPJ ou CPF v�lido, conforme indicado em {tpInscProp}, e constar como respons�vel no cadastro do CNO';
comment on column S_5011.DADOSOPPORT is
  '[dadosOpPort]<<>>Detalhamento das informa��es do Operador Portu�rio que est� sendo inclu�do (origem S-1080).';
comment on column S_5011.CNPJOPPORTUARIO is
  '[cnpjOpPortuario]<<>>Preencher com o CNPJ do operador portu�rio  Valida��o: Deve ser um CNPJ v�lido, diferente do CNPJ indicado no registro de abertura';
comment on column S_5011.ALIQRAT is
  '[aliqRat]<<>>Preencher com a al�quota definida no Decreto 3.048/99 para a atividade (CNAE) preponderante. A diverg�ncia s� � permitida se existir o registro complementar com informa��es sobre o processo administrativo/judicial que permite a aplica��o de al�quotas diferentes.
Valida��o: Deve ser igual a 1, 2 ou 3. Se a al�quota informada for diferente da definida no Decreto 3.048/99 para o CNAE informado dever� haver informa��es de processo em
{procAdmJudRat}';
comment on column S_5011.FAP is
  '[fap]<<>>Fator Acident�rio de Preven��o
Valida��o: Deve ser um n�mero maior ou igual a 0,5000 e menor ou igual a 2,0000, conforme definido em S-1080.';
comment on column S_5011.ALIQRATAJUST is
  '[aliqRatAjust]<<>>Al�quota do RAT ap�s ajuste pelo FAP
Valida��o: Deve corresponder ao resultado da multiplica��o dos campos {aliqRat} e {fap}, conforme definido em S-1080.';
comment on column S_5011.BASESREMUN is
  '[basesRemun]<<>>Bases de c�lculo da contribui��o previdenci�ria incidente sobre remunera��es, por categoria.';
comment on column S_5011.INDINCID is
  '[indIncid]<<>>Preencher com o c�digo correspondente ao tipo de incid�ncia para fins de apura��o da contribui��o previdenci�ria 1 - Normal
2 - Ativ. Concomitante 9 - Substitu�da ou Isenta
Valida��o: a) Para empresas da {classTrib} = [01,70,80] todas as bases de c�lculo devem ser totalizadas com {indIncid} igual a [9];
b) Se {indSubsPatr} <> 0:
- Se {indSubstPatr} for igual a [1] (contribui��o totalmente substitu�da), todas bases de c�lculo devem ser totalizadas com
{indIncid} igual a [9];
- Se {indSubstPatr} for igual a [2] (parcialmente substitu�da), todas as bases de c�lculo devem ser totalizadas com {indIncid} igual a [1] (normal).
c) Para empresas com {classTrib} igual a [03], considerar a informa��o prestada no campo {indSimples} do evento S-5001, conforme abaixo:
- Se o {indSimples} for igual a [1] (contrib. Subst. Integralmente) a base de c�lculo do respectivo trabalhador deve ser totalizada com {indIncid} igual a [9];
- Se o {indSimples} for igual a [2] (contrib. n�o Substitu�da) a base de c�lculo do respectivo trabalhador deve ser totalizada com {indIncid} igual a [1] (normal);
- Se o {indSimples} for igual a [3] (ativ. concomitante) a base de c�lculo do respectivo trabalhador deve ser totalizada com
{indIncid} igual a [2].
d) Para empresas com {classTrib} igual a [10] (Sindicato de Avulsos N�o Portu�rios), as bases de c�lculo dos trabalhadores avulsos da categoria [202] devem ser totalizadas com
{indIncid} igual a [9];
e) Para contribuintes com {classTrib} igual a [06,07,08,21], as bases de c�lculo dos trabalhadores devem ser totalizadas conforme abaixo:
- Se o FPAS do estabelecimento ao qual a remunera��o est� vinculada for igual a [604, 825, 833], totalizar com {indIncid} igual a [9], exceto para as categorias de contribuinte individual, que devem ser totalizadas com {indIncid} = [1];
- Caso contr�rio (outro FPAS), as bases de c�lculo devem ser totalizadas com {indIncid} igual a [1];
f) Para {classTrib} igual a [22] (Segurado Especial), as bases de c�lculo dos trabalhadores devem ser totalizadas com {indIncid} igual a [9];
g) Para contribuinte com {classTrib} igual a [99] e com
{indCoop} igual a [1] (cooperativa de trabalho), as remunera��es dos cooperados (Categoria 731 e 734) cuja lota��o esteja classificada com {tpLotacao} igual a [05, 06, 07] devem ser totalizadas com {indIncid} igual a [9];  Nos demais casos, o {indIncid} deve ser igual a [1];
h) Para contribuintes com {classTrib} igual a [11], as bases de c�lculo dos trabalhadores devem ser totalizadas com {indIncid} igual a [9], EXCETO para as categorias de contribuinte individual, que devem ser totalizadas com {indIncid} = [1];
i) Em todos os demais casos n�o relacionadas anteriormente, o
{indIncid} ser� sempre igual a [1].';
comment on column S_5011.CODCATEG is '[codCateg]<<>>Preencher com o c�digo da categoria do trabalhador, conforme definido em S-5001.';
comment on column S_5011.BASESCP is
  '[basesCp]<<>>Valores correspondentes �s bases, contribui��es do segurado e dedu��es da contribui��o previdenci�ria.';
comment on column S_5011.VRBCCP is
  '[vrBcCp]<<>>Base de c�lculo da contribui��o previdenci�ria.
Origem: Campo {Valor}, quando {tpValor} = [11 - Base de c�lculo da Contribui��o Previdenci�ria normal], do grupo
{infoBaseCS} no evento S-5001.';
comment on column S_5011.VRBCCP15 is
  '[vrBcCp15]<<>>Preencher com a base de c�lculo da contribui��o adicional para o financiamento dos benef�cios de aposentadoria especial ap�s 15 anos de contribui��o.
Origem: campo {Valor}, se {tpValor} = [12] - Base de c�lculo da Contribui��o Previdenci�ria adicional para o financiamento dos benef�cios de aposentadoria especial ap�s 15 anos de contribui��o, do grupo {infoBaseCS} no evento S-5001.';
comment on column S_5011.VRBCCP20 is
  '[vrBcCp20]<<>>Preencher com a base de c�lculo da contribui��o adicional para o financiamento dos benef�cios de aposentadoria especial ap�s 20 anos de contribui��o.
Origem: campo {Valor}, quando {tpValor} = [13] - Base de c�lculo da Contribui��o Previdenci�ria adicional para o financiamento dos benef�cios de aposentadoria especial ap�s 20 anos de contribui��o, do grupo {infoBaseCS} no evento S- 5001.';
comment on column S_5011.VRBCCP25 is
  '[vrBcCp25]<<>>Preencher com a base de c�lculo da contribui��o adicional para o financiamento dos benef�cios de aposentadoria especial ap�s 25 anos de contribui��o.
Origem:  campo {Valor}, quando {tpValor} = [14] - Base de c�lculo da Contribui��o Previdenci�ria adicional para o financiamento dos benef�cios de aposentadoria especial ap�s 25 anos de contribui��o, do grupo {infoBaseCS} no evento S- 5001.';
comment on column S_5011.VRSUSPBCCP is
  '[vrSuspBcCp]<<>>Valor da BC com incid�ncia suspensa em decorr�ncia de decis�o judicial.
Origem: campo {Valor} quando {tpValor} = [91] - Incid�ncia suspensa em decorr�ncia de decis�o judicial do grupo
{infoBaseCS} no evento S-5001.';
comment on column S_5011.VRSUSPBCCP15 is
  '[vrSuspBcCp15]<<>>Valor da base de c�lculo da contribui��o previdenci�ria adicional correspondente a exposi��o a agente nocivo que d� ao trabalhador direito a aposentadoria especial aos 15 anos de trabalho, com incid�ncia suspensa em decorr�ncia de decis�o judicial.
Origem: campo {Valor}, quando {tpValor} = [92] - Incid�ncia suspensa em decorr�ncia de decis�o judicial, do grupo
{infoBaseCS} no evento S-5001.';
comment on column S_5011.VRSUSPBCCP20 is
  '[vrSuspBcCp20]<<>>Valor da base de c�lculo da contribui��o previdenci�ria adicional correspondente a exposi��o a agente nocivo que d� ao trabalhador expectativa de aposentadoria especial aos 20 anos de trabalho, com incid�ncia suspensa em decorr�ncia de decis�o judicial.
Origem: campo {Valor}, quando {tpValor} = [93] - Incid�ncia suspensa em decorr�ncia de decis�o judicial, do grupo
{infoBaseCS} no evento S-5001.';
comment on column S_5011.VRSUSPBCCP25 is
  '[vrSuspBcCp25]<<>>Valor da base de c�lculo da contribui��o previdenci�ria adicional correspondente a exposi��o a agente nocivo que d� ao trabalhador direito a aposentadoria especial aos 25 anos de trabalho, com incid�ncia suspensa em decorr�ncia de decis�o judicial.
Origem: campo {Valor}, quando {tpValor} = [94] - Incid�ncia suspensa em decorr�ncia de decis�o judicial, do grupo
{infoBaseCS} no evento S-5001.';
comment on column S_5011.VRDESCCP is
  '[vrDescCP]<<>>Valor total da contribui��o descontada dos segurados.
Origem:  campo {valor}, quando {tpValor} = [21] - Valor total descontado do trabalhador para recolhimento � Previd�ncia Social, do grupo {infoBaseCS} no evento S-5001.';
comment on column S_5011.VRCPSEG is
  '[vrCpSeg]<<>>Valor total calculado relativa � contribui��o dos segurados. Origem: campo {vrCpSeg}, do grupo {infoCpCalc} no evento S-5001, exceto no caso de informa��o de processo judicial quando deve ser utilizado o valor descontado {vrDescSeg}.
Valida��o:';
comment on column S_5011.VRDESCSEST is
  '[vrDescSest]<<>>Valor total descontado do trabalhador para recolhimento ao Sest.
Origem: campo {Valor}, quando {tpValor} = [22] - Valor total descontado do trabalhador para recolhimento ao Sest, do grupo
{infoBaseCS} no evento S-5001.';
comment on column S_5011.VRCALCSEST is
  '[vrCalcSest]<<>>Valor calculado relativo � contribui��o devida pelo trabalhador para recolhimento ao Sest.
Origem: campo {Valor}, quando {codCR} = [1218-02] - Valor calculado do trabalhador para recolhimento ao Sest, do grupo
{calcTerc} no evento S-5001.';
comment on column S_5011.VRDESCSENAT is
  '[vrDescSenat]<<>>Valor total descontado do trabalhador para recolhimento ao Senat.
Origem: campo {Valor}, quando {tpValor} = [23] - Valor total descontado do trabalhador para recolhimento ao Senat, do grupo {infoBaseCS} no evento S-5001.';
comment on column S_5011.VRCALCSENAT is
  '[vrCalcSenat]<<>>Valor calculado relativo � contribui��o devida pelo trabalhador para recolhimento ao Senat.
Origem: campo {Valor}, quando {codCR} = [1221-02] - Valor calculado do trabalhador para recolhimento ao Senat, do grupo
{calcTerc} no evento S-5001.';
comment on column S_5011.VRSALFAM is
  '[vrSalFam]<<>>Valor total do sal�rio-fam�lia para a categoria indicada no registro superior.
Origem: campo {Valor}, quando {tpValor} = [31] - Valor pago ao trabalhador a t�tulo de sal�rio-fam�lia, do grupo
{infoBaseCS} no evento S-5001.';
comment on column S_5011.VRSALMAT is
  '[vrSalMat]<<>>Valor total do sal�rio-maternidade para a categoria indicada. Origem: campo {Valor}, quando {tpValor} = [32] - Valor pago ao trabalhador a t�tulo de sal�rio-maternidade, do grupo
{infoBaseCS} no evento S-5001.';
comment on column S_5011.INFOSUBSTPATROPPORT is
  '[infoSubstPatrOpPort]<<>>Registro preenchido exclusivamente pelo OGMO ({classTrib}=[09]) relativamente a seus Operadores Portu�rios enquadrados nos artigos 7 a 9 da Lei 12.546/2011.';
comment on column S_5011.CNPJOPPORTUARIO is
  '[cnpjOpPortuario]<<>>Preencher com o CNPJ do operador portu�rio. Origem: {cnpjOpPortuario} do S-1280.
Valida��o: Deve ser um CNPJ v�lido, diferente do CNPJ indicado no registro de abertura';
comment on column S_5011.PERCREDCONTRIBOPPORT is
  '[percRedContribOpPort]<<>>Percentual de redu��o da contribui��o devida pelo operador portu�rio.
Origem: {percRedContribOpPort} do S-1280.';
comment on column S_5011.BASESAQUIS is '[basesAquis]<<>>Informa��es de bases de c�lculo relativas a aquisi��o de produ��o rural.
Origem S-1250.';
comment on column S_5011.INDAQUIS is
  '[indAquis]<<>>Indicativo da Aquisi��o:
1 - Aquisi��o da produ��o de produtor rural pessoa f�sica ou segurado especial em geral;
2 - Aquisi��o da produ��o de produtor rural pessoa f�sica ou segurado especial em geral por Entidade do PAA;
3 - Aquisi��o da produ��o de produtor rural pessoa jur�dica por Entidade do PAA.
Evento de origem (S-1250) Valores V�lidos: 1, 2, 3';
comment on column S_5011.VLRAQUIS is
  '[vlrAquis]<<>>Valor total da aquisi��o de produ��o rural de produtor rural. Origem: {vlrTotAquis} do S-1250.';
comment on column S_5011.VRCPDESCPR is
  '[vrCPDescPR]<<>>Preencher com o valor da Contribui��o Previdenci�ria descontada pelo adquirente de produ��o de produtor rural - sub- roga��o.
Origem: Somat�rio {vrCpDescPR} do S-1250.';
comment on column S_5011.VRCPNRET is
  '[vrCPNRet]<<>>Valor da Contribui��o Previdenci�ria que deixou de ser retida pelo declarante em decorr�ncia de decis�o/senten�a judicial.';
comment on column S_5011.VRRATNRET is
  '[vrRatNRet]<<>>Valor da GILRAT, incidente sobre a aquisi��o de produ��o rural de produtor rural, cuja reten��o deixou de ser efetuada em decorr�ncia de decis�o/senten�a judicial.';
comment on column S_5011.VRSENARNRET is
  '[vrSenarNRet]<<>>Valor da contribui��o destinada ao SENAR, incidente sobre a aquisi��o de produ��o rural de produtor rural pessoa f�sica/segurado especial, e que deixou de ser retida em decorr�ncia de decis�o/senten�a judicial.';
comment on column S_5011.VRCPCALCPR is '[vrCPCalcPR]<<>>Valor calculado na contribui��o previdenci�ria do produtor rural.
C�lculo:
a) Para {indAquis} = [1,2]: {vlrAquis} x aliq 2,0%;
b) Para {indAquis} = [3]: {vlrAquis} x 2,5%.';
comment on column S_5011.VRRATDESCPR is
  '[vrRatDescPR]<<>>Valor da contribui��o destinada ao financiamento dos benef�cios concedidos em raz�o do grau de incid�ncia da incapacidade laborativa decorrente dos riscos ambientais do trabalho, incidente sobre a aquisi��o de produ��o rural de produtor rural.
Evento de origem (S-1250)';
comment on column S_5011.VRRATCALCPR is
  '[vrRatCalcPR]<<>>Valor calculado do RAT devido pelo Produtor Rural. C�lculo: {vlrAquis} x aliq 0,1%.';
comment on column S_5011.VRSENARDESC is
  '[vrSenarDesc]<<>>Valor da contribui��o destinada ao SENAR, incidente sobre a aquisi��o de produ��o rural de produtor rural pessoa f�sica/segurado especial.
Origem: {vrSenarDesc} do S-1250.';
comment on column S_5011.VRSENARCALC is '[vrSenarCalc]<<>>Valor calculado da contribui��o devida pelo produtor rural ao Senar.
C�lculo:
a) Para {indAquis} = [1]: {vlrAquis} x aliq 0,2%;
b) Para {indAquis} = [2,3]: Zero.';
comment on column S_5011.BASESCOMERC is
  '[basesComerc]<<>>Informa��es de bases de c�lculo relativas � comercializa��o da produ��o rural da Pessoa F�sica.
Informa��es desse grupo conforme informado pelo contribuinte em S-1260.';
comment on column S_5011.INDCOMERC is
  '[indComerc]<<>>Indicativo de Comercializa��o:
2 - Comercializa��o da Produ��o por Prod. Rural PF/Seg. Especial - efetuada diretamente no varejo a consumidor final ou a outro produtor rural pessoa f�sica/segurado especial;
3 - Comercializa��o da Produ��o por Prod. Rural PF/Seg. Especial - Vendas a PJ ou a Intermedi�rio PF, exceto PAA; 8 - Comercializa��o da Produ��o para Entidade inscrita no PAA;
9 - Comercializa��o da Produ��o no Mercado Externo. Origem: {indComerc} do S-1260.';
comment on column S_5011.VRBCCOMPR is
  '[vrBcComPR]<<>>Valor da Base de C�lculo da comercializa��o da produ��o rural do Produtor Rural PF/Segurado Especial a outra PF no varejo ou a outro Produtor Rural PF/Segurado Especial ou no mercado Externo, conforme {indComerc}.
Origem: {vrTotCom} do S-1260 conforme {indComerc}.';
comment on column S_5011.VRCPSUSP is '[vrCPSusp]<<>>Valor da Contribui��o Previdenci�ria com exigibilidade suspensa.
Origem: {vrCPSusp} do S-1260.';
comment on column S_5011.VRRATSUSP is
  '[vrRatSusp]<<>>Valor da contribui��o para Gilrat com exigibilidade suspensa. Origem: {vrRatSusp} do S-1260.';
comment on column S_5011.VRSENARSUSP is
  '[vrSenarSusp]<<>>Valor da contribui��o para o Senar com exigibilidade suspensa. Origem: {vrSenarSusp} do S-1260.';
comment on column S_5011.BASESAVNPORT is
  '[basesAvNPort]<<>>Informa��es de bases de c�lculo relativas � contrata��o de trabalhadores avulsos n�o portu�rios.
Informa��es desse grupo conforme informado pelo contribuinte em S-1270.';
comment on column S_5011.FPASSIND is
  '[fpasSind]<<>>Preencher com o c�digo FPAS do Sindicato. Origem: {fpasSind} do S-1270.
Valida��o: C�digo de FPAS deve ser preenchido com 515 ou 507, conforme o Sindicato por interm�dio do qual os trabalhadores avulsos foram contratados esteja vinculado a Ind�stria ou ao Com�rcio.';
comment on column S_5011.CODTERCS is
  '[codTercs]<<>>Preencher com o c�digo de terceiros, conforme tabela 4. No caso de existencia de conv�nios e decis�es judiciais que resultem em nenhum recolhimento de contribui��o aos Terceiros, informar o c�digo 0000 e preencher o grupo
{infoProcJudTerceiros}. Origem: {codTercs} do S-1270.
Valida��o: O c�digo de terceiros informado deve ser compat�vel com o c�digo de FPAS informado, conforme tabela
4. A diferen�a s� � permitida se houver processo(s) judicial(is) que ampare a diverg�ncia.';
comment on column S_5011.VLRREMUN is '[vlrRemun]<<>>Valor da Remunera��o dos trabalhadores avulsos n�o portu�rios.
Origem: {vlrRemun} do S-1270.';
comment on column S_5011.VR13 is
  '[vr13]<<>>Valor correspondente ao d�cimo terceiro sal�rio proporcional dos trabalhadores avulsos n�o portu�rios.
Origem: {vr13} do S-1270.';
comment on column S_5011.VRDESCCP is
  '[vrDescCP]<<>>preencher com o valor total da contribui��o descontada dos segurados da categoria indicada.
Origem: {vrDescCP} do S-1270.';
comment on column S_5011.INFOCRESTAB is
  '[infoCREstab]<<>>Informa��es das contribui��es sociais devidas � Previd�ncia Social e Outras Entidades e Fundos, consolidadas por estabelecimento e por c�digo de Receita - CR.';
comment on column S_5011.TPCR is
  '[tpCR]<<>>C�digo de Receita - CR relativo a contribui��es sociais devidas � Previd�ncia Social e a Outras Entidades e Fundos (Terceiros), conforme legisla��o em vigor na compet�ncia.
Valida��o: Deve ser um c�digo v�lido, compat�vel com a classifica��o tribut�ria do contribuinte e com as informa��es prestadas nos demais eventos.';
comment on column S_5011.VRCR is '[vrCR]<<>>Valor correspondente ao C�digo de Receita - CR apurado.
Valida��o: Deve ser apurado de acordo com a legisla��o em vigor na compet�ncia.
Deve ser maior que 0 (zero).';
comment on column S_5011.VRSUSPCR is '[vrSuspCR]<<>>Valor suspenso correspondente ao C�digo de Receita - CR apurado.
Valida��o: Deve ser apurado de acordo com as informa��es de processos judiciais e administrativos.
Deve ser maior que 0 (zero).';
comment on column S_5011.INFOCRCONTRIB is
  '[infoCRContrib]<<>>Informa��es consolidadas das contribui��es sociais devidas � Previd�ncia Social e Outras Entidades e Fundos, por c�digo de Receita - CR.';
comment on column S_5011.TPCR is
  '[tpCR]<<>>C�digo de Receita - CR relativo a contribui��es sociais devidas � Previd�ncia Social e a Outras Entidades e Fundos (Terceiros), conforme legisla��o em vigor na compet�ncia.
Valida��o: Deve ser um c�digo v�lido, compat�vel com a classifica��o tribut�ria do contribuinte e com as informa��es prestadas nos demais eventos.';
comment on column S_5011.VRCR is '[vrCR]<<>>Valor correspondente ao C�digo de Receita - CR apurado.
Valida��o: Deve ser apurado de acordo com a legisla��o em vigor na compet�ncia.
Deve ser maior que 0 (zero).';
comment on column S_5011.VRCRSUSP is
  '[vrCRSusp]<<>>Valor do tributo com exigibilidade suspensa. Se n�o houver informa��o, preencher com zero.';
