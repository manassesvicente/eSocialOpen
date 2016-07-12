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

comment on table S_5011 is 'Registros do evento S-5011 - Informações das contribuições sociais consolidadas por contribuinte';
comment on column S_5011.EVTCS is
  '[evtCS]<<>>Evento demonstrativo das Contribuições Sociais devidas à Previdência Social e a Outras Entidades e Fundos e das suas bases de cálculo.';
comment on column S_5011.ID is '[Id]<<>>Identificação única do evento.
Validação: Deve ser um Id válido, conforme descrito na REGRA_VALIDA_ID_EVENTO.';
comment on column S_5011.IDEEVENTO is '[ideEvento]<<>>Identificação do evento de retorno';
comment on column S_5011.INDAPURACAO is
  '[indApuracao]<<>>Indicativo de período de apuração: 1 - Mensal;
2 - Anual (13° salário).
Evento de origem: S-4000 {perSolicit} ou S-1299.  Validação: Deve corresponder ao informado pelo empregador no evento de origem (S-4000 ou S-1299).
Valores Válidos: 1, 2';
comment on column S_5011.PERAPUR is
  '[perApur]<<>>Informar o mês/ano (formato AAAA-MM) de referência das informações, se {indApuracao} for igual a [1], ou apenas o ano (formato AAAA), se {indApuracao} for igual a [2]
Validação: Deve ser um mês/ano ou ano válido, posterior a implementação do eSocial.';
comment on column S_5011.IDEEMPREGADOR is '[ideEmpregador]<<>>Informações de identificação do empregador';
comment on column S_5011.TPINSC is '[tpInsc]<<>>Preencher com o código correspondente ao tipo de inscrição, conforme tabela 5
Validação: Deve ser igual a [1] (CNPJ) ou [2] (CPF)';
comment on column S_5011.NRINSC is
  '[nrInsc]<<>>Informar o número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}. Se for um CNPJ deve ser informada apenas a Raiz/Base de oito posições, exceto se natureza jurídica de administração pública federal ([101-5], [104-0], [107-4], [116-3]), situação em que o campo deve ser preenchido com o CNPJ completo com 14 posições. Validação: Se {tpInsc} for igual a [1], deve ser um número de CNPJ válido. Se {tpInsc} for igual a [2], deve ser um CPF válido.';
comment on column S_5011.INFOCS is
  '[infoCS]<<>>Informações relativas às Contribuições Sociais devidas à Previdência Social e a Outras Entidades e Fundos.';
comment on column S_5011.NATINFO is
  '[natInfo]<<>>Natureza da informação, conforme opções a seguir:
1 - Informação parcial, ou seja, anterior ao fechamento dos eventos periódicos, originada a partir da solicitação do contribuinte através do evento S-4000;
2 - Informação final, ou seja, posterior ao fechamento dos eventos periódicos, originada a partir da solicitação do contribuinte através do evento S-4000;
3 - Informação final, ou seja, posterior ao fechamento dos eventos periódicos, vinculada ao fechamento dos eventos periódicos efetuado através do evento S-1299.
Valores Válidos: 1, 2, 3.';
comment on column S_5011.NRRECARQBASE is
  '[nrRecArqBase]<<>>Preencher com o número do recibo do arquivo que deu origem ao presente arquivo de retorno ao empregador.
Validação: Deve ser um recibo de entrega válido, correspondente ao arquivo que deu origem à presente solicitação:
a) Se {natInfo} = a [1, 2], deve corresponder a um recibo de arquivo correspondente ao leiaute S-4000;
b) Se {natInfo} = [3], deve corresponder a um recibo de arquivo correspondente ao leiaute S-1299.';
comment on column S_5011.INDEXISTINFO is
  '[indExistInfo]<<>>Indicativo de existência de valores de bases e de contribuições sociais, conforme opções a seguir:
1 - Há informações de bases e contribuições sociais;
2 - Há movimento, porém não há informações de bases e contribuições sociais;
3 - Não há movimento na competência.';
comment on column S_5011.OBSERVACAO is
  '[observacao]<<>>Texto Fixo: As informações desse evento são resultantes de pedido de consulta, com as seguintes características: a) Não substitui o fechamento dos eventos periódicos (S-1299);
b) Refletem a situação do momento de geração da consulta. Validação: Preencher se {natInfo} = [1,2].';
comment on column S_5011.INFOCONTRIB is
  '[infoContrib]<<>>Informações gerais do contribuinte necessárias à apuração das contribuições sociais.';
comment on column S_5011.CLASSTRIB is
  '[classTrib]<<>>Preencher com o código correspondente à classificação tributária do contribuinte, conforme tabela 8.
Evento de origem (S-1000).';
comment on column S_5011.INFOPJ is '[infoPJ]<<>>Informações complementares, exclusivas da Pessoa Jurídica.';
comment on column S_5011.INDCOOP is '[indCoop]<<>>Indicativo de Cooperativa: 0 - Não é cooperativa;
1 - Cooperativa de Trabalho; 2 - Cooperativa de Produção; 3 - Outras Cooperativas.
Evento de origem (S-1000) Valores Válidos: 0, 1, 2, 3.';
comment on column S_5011.INDCONSTR is '[indConstr]<<>>Indicativo de Construtora: 0 - Não é Construtora;
1 - Empresa Construtora. Evento de origem (S-1000) Valores Válidos: 0, 1.';
comment on column S_5011.INDAPURALIQFAP is
  '[indApurAliqFap]<<>>Forma de apuração do FAP: 1 - FAP atribuído à Empresa;
2 - FAP atribuído a cada Estabelecimento. Evento de origem (S-1000/S-1005) Valores Válidos: 1, 2.';
comment on column S_5011.INDSUBSTPATR is '[indSubstPatr]<<>>Indicativo de substituição da contribuição previdenciária patronal:
1 - Integralmente substituída; 2 - Parcialmente substituída.
Origem: {indSubsPatr} de S-1280. Valores Válidos: 1, 2.';
comment on column S_5011.PERCREDCONTRIB is
  '[percRedContrib]<<>>Percentual de redução da contribuição prevista na lei 12.546/2011.
Se {indSubstPatr} = 1, preencher com 0 (zero);
Se {indSubstPatr} = 2, preencher com o percentual correspondente a razão entre a receita de atividades não relacionadas nos artigos 7 e 8 da Lei 12.546/2011 e a receita bruta total.
Não preencher nos demais casos. Evento de origem (S-1280)';
comment on column S_5011.INFOATCONC is
  '[infoAtConc]<<>>Informações prestadas por empresa enquadrada no Regime de Tributação Simples Nacional com tributação previdenciária substituída e não substituída.';
comment on column S_5011.FATORMES is
  '[fatorMes]<<>>Informe o fator a ser utilizado para cálculo da contribuição patronal do mês dos trabalhadores envolvidos na execução das atividades enquadradas no Anexo IV em conjunto com as dos Anexos I a III e V da Lei Complementar nº 123/2006.
Evento de origem (S-1280)';
comment on column S_5011.FATOR13 is
  '[fator13]<<>>Informe o fator a ser utilizado para cálculo da contribuição patronal do décimo terceiro dos trabalhadores envolvidos na execução das atividades enquadradas no Anexo IV em conjunto com as dos Anexos I a III e V da Lei Complementar nº 123/2006.
Evento de origem (S-1280).';
comment on column S_5011.IDEESTAB is '[ideEstab]<<>>Informações de identificação do estabelecimento ou obra de construção civil.
Regras de Validação: REGRA_TABESTAB_VALIDA_VINC_ENTE';
comment on column S_5011.TPINSC is '[tpInsc]<<>>Preencher com o código correspondente ao tipo de inscrição, conforme tabela 5';
comment on column S_5011.NRINSC is
  '[nrInsc]<<>>Número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}.
A inscrição informada segue o evento que deu origem ao presente evento (S-1250, S-1260, S-1270 e S-5001).';
comment on column S_5011.INFOESTAB is
  '[infoEstab]<<>>Informações relativas a cada estabelecimento, necessárias à apuração das contribuições sociais.';
comment on column S_5011.CNAEPREP is '[cnaePrep]<<>>Preencher com o código do CNAE 2.1 conforme informado em S-1005.';
comment on column S_5011.ALIQRAT is
  '[aliqRat]<<>>Preencher com a alíquota definida no Decreto 3.048/99 para a atividade (CNAE) preponderante, conforme informado em S- 1005.
Validação: Deve ser igual a 1, 2 ou 3.';
comment on column S_5011.FAP is '[fap]<<>>Fator Acidentário de Prevenção.
Origem: S-1000 ou S-1005, conforme definido no campo
{indApurAliqFap}.';
comment on column S_5011.ALIQRATAJUST is
  '[aliqRatAjust]<<>>Alíquota do RAT após ajuste pelo FAP, conforme definido em S-1005, no campo {aliqRatAjust}.
Validação: Deve corresponder ao resultado da multiplicação dos campos {aliqRat} e {fap}.';
comment on column S_5011.INFOCOMPLOBRA is '[infoComplObra]<<>>Informações complementares relativas a obras de construção civil';
comment on column S_5011.INDSUBSTPATROBRA is
  '[indSubstPatrObra]<<>>Indicativo de Substituição da Contribuição Patronal de Obra de Construção Civil, conforme definido no evento S-1005, campo
{indSubstPatrObra}:
1 - Contribuição Patronal Substituída;
2 - Contribuição Patronal Não Substituída. Valores Válidos: 1, 2.';
comment on column S_5011.IDELOTACAO is '[ideLotacao]<<>>Identificação da lotação tributária.';
comment on column S_5011.CODLOTACAO is '[codLotacao]<<>>Informar o código atribuído pela empresa para a lotação tributária.
Evento de origem (S-5001)
Validação: Deve ser um código existente na tabela de LOTACOES.';
comment on column S_5011.FPAS is
  '[fpas]<<>>Preencher com o código relativo ao FPAS.
Validação: Deve ser um código FPAS válido, conforme tabela 4, conforme informado pelo contribuinte em S-1020.';
comment on column S_5011.CODTERCS is
  '[codTercs]<<>>Preencher com o código de terceiros, conforme tabela 4. No caso de existencia de convênios e decisões judiciais que resultem em nenhum recolhimento de contribuição aos Terceiros, informar o código 0000 e preencher o grupo
{infoProcJudTerceiros}.
Validação: Conforme informado em S-1020.';
comment on column S_5011.INFOTERCSUSP is
  '[infoTercSusp]<<>>Informações de suspensão de contribuições destinadas a Outras Entidades e Fundos (Terceiros).';
comment on column S_5011.CODTERC is
  '[codTerc]<<>>Informar o Código de Terceiro. Origem: Campo {codTerc} do S-1020.
Validação: Deve ser um código de terceiro válido e compatível com o FPAS/Terceiros informado no registro superior, conforme Tabela 4.';
comment on column S_5011.INFOEMPRPARCIAL is
  '[infoEmprParcial]<<>>Informação complementar destinada à identificação do contratante e do proprietário de obra de construção civil contratada sob regime de empreitada parcial ou subempreitada. A informação é preenchida exclusivamente para lotações cujo
{tpLotacao} seja igual a [2].';
comment on column S_5011.TPINSCCONTRAT is '[tpInscContrat]<<>>Tipo de Inscrição do contratante: 1 - CNPJ;
2 - CPF.
Valores Válidos: 1, 2.';
comment on column S_5011.NRINSCCONTRAT is
  '[nrInscContrat]<<>>Número de Inscrição (CNPJ/CPF) do Contrante. Validação: Deve ser um número de CNPJ ou CPF válido, conforme definido em {tpInscContrat}';
comment on column S_5011.TPINSCPROP is
  '[tpInscProp]<<>>Tipo de Inscrição do proprietário do CNO. Validação: Deve ser igual a [1] (CNPJ) ou [2] (CPF) Valores Válidos: 1, 2.';
comment on column S_5011.NRINSCPROP is
  '[nrInscProp]<<>>Preencher com o número de inscrição (CNPJ/CPF) do proprietário do CNO.
Validação: Deve ser um CNPJ ou CPF válido, conforme indicado em {tpInscProp}, e constar como responsável no cadastro do CNO';
comment on column S_5011.DADOSOPPORT is
  '[dadosOpPort]<<>>Detalhamento das informações do Operador Portuário que está sendo incluído (origem S-1080).';
comment on column S_5011.CNPJOPPORTUARIO is
  '[cnpjOpPortuario]<<>>Preencher com o CNPJ do operador portuário  Validação: Deve ser um CNPJ válido, diferente do CNPJ indicado no registro de abertura';
comment on column S_5011.ALIQRAT is
  '[aliqRat]<<>>Preencher com a alíquota definida no Decreto 3.048/99 para a atividade (CNAE) preponderante. A divergência só é permitida se existir o registro complementar com informações sobre o processo administrativo/judicial que permite a aplicação de alíquotas diferentes.
Validação: Deve ser igual a 1, 2 ou 3. Se a alíquota informada for diferente da definida no Decreto 3.048/99 para o CNAE informado deverá haver informações de processo em
{procAdmJudRat}';
comment on column S_5011.FAP is
  '[fap]<<>>Fator Acidentário de Prevenção
Validação: Deve ser um número maior ou igual a 0,5000 e menor ou igual a 2,0000, conforme definido em S-1080.';
comment on column S_5011.ALIQRATAJUST is
  '[aliqRatAjust]<<>>Alíquota do RAT após ajuste pelo FAP
Validação: Deve corresponder ao resultado da multiplicação dos campos {aliqRat} e {fap}, conforme definido em S-1080.';
comment on column S_5011.BASESREMUN is
  '[basesRemun]<<>>Bases de cálculo da contribuição previdenciária incidente sobre remunerações, por categoria.';
comment on column S_5011.INDINCID is
  '[indIncid]<<>>Preencher com o código correspondente ao tipo de incidência para fins de apuração da contribuição previdenciária 1 - Normal
2 - Ativ. Concomitante 9 - Substituída ou Isenta
Validação: a) Para empresas da {classTrib} = [01,70,80] todas as bases de cálculo devem ser totalizadas com {indIncid} igual a [9];
b) Se {indSubsPatr} <> 0:
- Se {indSubstPatr} for igual a [1] (contribuição totalmente substituída), todas bases de cálculo devem ser totalizadas com
{indIncid} igual a [9];
- Se {indSubstPatr} for igual a [2] (parcialmente substituída), todas as bases de cálculo devem ser totalizadas com {indIncid} igual a [1] (normal).
c) Para empresas com {classTrib} igual a [03], considerar a informação prestada no campo {indSimples} do evento S-5001, conforme abaixo:
- Se o {indSimples} for igual a [1] (contrib. Subst. Integralmente) a base de cálculo do respectivo trabalhador deve ser totalizada com {indIncid} igual a [9];
- Se o {indSimples} for igual a [2] (contrib. não Substituída) a base de cálculo do respectivo trabalhador deve ser totalizada com {indIncid} igual a [1] (normal);
- Se o {indSimples} for igual a [3] (ativ. concomitante) a base de cálculo do respectivo trabalhador deve ser totalizada com
{indIncid} igual a [2].
d) Para empresas com {classTrib} igual a [10] (Sindicato de Avulsos Não Portuários), as bases de cálculo dos trabalhadores avulsos da categoria [202] devem ser totalizadas com
{indIncid} igual a [9];
e) Para contribuintes com {classTrib} igual a [06,07,08,21], as bases de cálculo dos trabalhadores devem ser totalizadas conforme abaixo:
- Se o FPAS do estabelecimento ao qual a remuneração está vinculada for igual a [604, 825, 833], totalizar com {indIncid} igual a [9], exceto para as categorias de contribuinte individual, que devem ser totalizadas com {indIncid} = [1];
- Caso contrário (outro FPAS), as bases de cálculo devem ser totalizadas com {indIncid} igual a [1];
f) Para {classTrib} igual a [22] (Segurado Especial), as bases de cálculo dos trabalhadores devem ser totalizadas com {indIncid} igual a [9];
g) Para contribuinte com {classTrib} igual a [99] e com
{indCoop} igual a [1] (cooperativa de trabalho), as remunerações dos cooperados (Categoria 731 e 734) cuja lotação esteja classificada com {tpLotacao} igual a [05, 06, 07] devem ser totalizadas com {indIncid} igual a [9];  Nos demais casos, o {indIncid} deve ser igual a [1];
h) Para contribuintes com {classTrib} igual a [11], as bases de cálculo dos trabalhadores devem ser totalizadas com {indIncid} igual a [9], EXCETO para as categorias de contribuinte individual, que devem ser totalizadas com {indIncid} = [1];
i) Em todos os demais casos não relacionadas anteriormente, o
{indIncid} será sempre igual a [1].';
comment on column S_5011.CODCATEG is '[codCateg]<<>>Preencher com o código da categoria do trabalhador, conforme definido em S-5001.';
comment on column S_5011.BASESCP is
  '[basesCp]<<>>Valores correspondentes às bases, contribuições do segurado e deduções da contribuição previdenciária.';
comment on column S_5011.VRBCCP is
  '[vrBcCp]<<>>Base de cálculo da contribuição previdenciária.
Origem: Campo {Valor}, quando {tpValor} = [11 - Base de cálculo da Contribuição Previdenciária normal], do grupo
{infoBaseCS} no evento S-5001.';
comment on column S_5011.VRBCCP15 is
  '[vrBcCp15]<<>>Preencher com a base de cálculo da contribuição adicional para o financiamento dos benefícios de aposentadoria especial após 15 anos de contribuição.
Origem: campo {Valor}, se {tpValor} = [12] - Base de cálculo da Contribuição Previdenciária adicional para o financiamento dos benefícios de aposentadoria especial após 15 anos de contribuição, do grupo {infoBaseCS} no evento S-5001.';
comment on column S_5011.VRBCCP20 is
  '[vrBcCp20]<<>>Preencher com a base de cálculo da contribuição adicional para o financiamento dos benefícios de aposentadoria especial após 20 anos de contribuição.
Origem: campo {Valor}, quando {tpValor} = [13] - Base de cálculo da Contribuição Previdenciária adicional para o financiamento dos benefícios de aposentadoria especial após 20 anos de contribuição, do grupo {infoBaseCS} no evento S- 5001.';
comment on column S_5011.VRBCCP25 is
  '[vrBcCp25]<<>>Preencher com a base de cálculo da contribuição adicional para o financiamento dos benefícios de aposentadoria especial após 25 anos de contribuição.
Origem:  campo {Valor}, quando {tpValor} = [14] - Base de cálculo da Contribuição Previdenciária adicional para o financiamento dos benefícios de aposentadoria especial após 25 anos de contribuição, do grupo {infoBaseCS} no evento S- 5001.';
comment on column S_5011.VRSUSPBCCP is
  '[vrSuspBcCp]<<>>Valor da BC com incidência suspensa em decorrência de decisão judicial.
Origem: campo {Valor} quando {tpValor} = [91] - Incidência suspensa em decorrência de decisão judicial do grupo
{infoBaseCS} no evento S-5001.';
comment on column S_5011.VRSUSPBCCP15 is
  '[vrSuspBcCp15]<<>>Valor da base de cálculo da contribuição previdenciária adicional correspondente a exposição a agente nocivo que dá ao trabalhador direito a aposentadoria especial aos 15 anos de trabalho, com incidência suspensa em decorrência de decisão judicial.
Origem: campo {Valor}, quando {tpValor} = [92] - Incidência suspensa em decorrência de decisão judicial, do grupo
{infoBaseCS} no evento S-5001.';
comment on column S_5011.VRSUSPBCCP20 is
  '[vrSuspBcCp20]<<>>Valor da base de cálculo da contribuição previdenciária adicional correspondente a exposição a agente nocivo que dá ao trabalhador expectativa de aposentadoria especial aos 20 anos de trabalho, com incidência suspensa em decorrência de decisão judicial.
Origem: campo {Valor}, quando {tpValor} = [93] - Incidência suspensa em decorrência de decisão judicial, do grupo
{infoBaseCS} no evento S-5001.';
comment on column S_5011.VRSUSPBCCP25 is
  '[vrSuspBcCp25]<<>>Valor da base de cálculo da contribuição previdenciária adicional correspondente a exposição a agente nocivo que dá ao trabalhador direito a aposentadoria especial aos 25 anos de trabalho, com incidência suspensa em decorrência de decisão judicial.
Origem: campo {Valor}, quando {tpValor} = [94] - Incidência suspensa em decorrência de decisão judicial, do grupo
{infoBaseCS} no evento S-5001.';
comment on column S_5011.VRDESCCP is
  '[vrDescCP]<<>>Valor total da contribuição descontada dos segurados.
Origem:  campo {valor}, quando {tpValor} = [21] - Valor total descontado do trabalhador para recolhimento à Previdência Social, do grupo {infoBaseCS} no evento S-5001.';
comment on column S_5011.VRCPSEG is
  '[vrCpSeg]<<>>Valor total calculado relativa à contribuição dos segurados. Origem: campo {vrCpSeg}, do grupo {infoCpCalc} no evento S-5001, exceto no caso de informação de processo judicial quando deve ser utilizado o valor descontado {vrDescSeg}.
Validação:';
comment on column S_5011.VRDESCSEST is
  '[vrDescSest]<<>>Valor total descontado do trabalhador para recolhimento ao Sest.
Origem: campo {Valor}, quando {tpValor} = [22] - Valor total descontado do trabalhador para recolhimento ao Sest, do grupo
{infoBaseCS} no evento S-5001.';
comment on column S_5011.VRCALCSEST is
  '[vrCalcSest]<<>>Valor calculado relativo à contribuição devida pelo trabalhador para recolhimento ao Sest.
Origem: campo {Valor}, quando {codCR} = [1218-02] - Valor calculado do trabalhador para recolhimento ao Sest, do grupo
{calcTerc} no evento S-5001.';
comment on column S_5011.VRDESCSENAT is
  '[vrDescSenat]<<>>Valor total descontado do trabalhador para recolhimento ao Senat.
Origem: campo {Valor}, quando {tpValor} = [23] - Valor total descontado do trabalhador para recolhimento ao Senat, do grupo {infoBaseCS} no evento S-5001.';
comment on column S_5011.VRCALCSENAT is
  '[vrCalcSenat]<<>>Valor calculado relativo à contribuição devida pelo trabalhador para recolhimento ao Senat.
Origem: campo {Valor}, quando {codCR} = [1221-02] - Valor calculado do trabalhador para recolhimento ao Senat, do grupo
{calcTerc} no evento S-5001.';
comment on column S_5011.VRSALFAM is
  '[vrSalFam]<<>>Valor total do salário-família para a categoria indicada no registro superior.
Origem: campo {Valor}, quando {tpValor} = [31] - Valor pago ao trabalhador a título de salário-família, do grupo
{infoBaseCS} no evento S-5001.';
comment on column S_5011.VRSALMAT is
  '[vrSalMat]<<>>Valor total do salário-maternidade para a categoria indicada. Origem: campo {Valor}, quando {tpValor} = [32] - Valor pago ao trabalhador a título de salário-maternidade, do grupo
{infoBaseCS} no evento S-5001.';
comment on column S_5011.INFOSUBSTPATROPPORT is
  '[infoSubstPatrOpPort]<<>>Registro preenchido exclusivamente pelo OGMO ({classTrib}=[09]) relativamente a seus Operadores Portuários enquadrados nos artigos 7 a 9 da Lei 12.546/2011.';
comment on column S_5011.CNPJOPPORTUARIO is
  '[cnpjOpPortuario]<<>>Preencher com o CNPJ do operador portuário. Origem: {cnpjOpPortuario} do S-1280.
Validação: Deve ser um CNPJ válido, diferente do CNPJ indicado no registro de abertura';
comment on column S_5011.PERCREDCONTRIBOPPORT is
  '[percRedContribOpPort]<<>>Percentual de redução da contribuição devida pelo operador portuário.
Origem: {percRedContribOpPort} do S-1280.';
comment on column S_5011.BASESAQUIS is '[basesAquis]<<>>Informações de bases de cálculo relativas a aquisição de produção rural.
Origem S-1250.';
comment on column S_5011.INDAQUIS is
  '[indAquis]<<>>Indicativo da Aquisição:
1 - Aquisição da produção de produtor rural pessoa física ou segurado especial em geral;
2 - Aquisição da produção de produtor rural pessoa física ou segurado especial em geral por Entidade do PAA;
3 - Aquisição da produção de produtor rural pessoa jurídica por Entidade do PAA.
Evento de origem (S-1250) Valores Válidos: 1, 2, 3';
comment on column S_5011.VLRAQUIS is
  '[vlrAquis]<<>>Valor total da aquisição de produção rural de produtor rural. Origem: {vlrTotAquis} do S-1250.';
comment on column S_5011.VRCPDESCPR is
  '[vrCPDescPR]<<>>Preencher com o valor da Contribuição Previdenciária descontada pelo adquirente de produção de produtor rural - sub- rogação.
Origem: Somatório {vrCpDescPR} do S-1250.';
comment on column S_5011.VRCPNRET is
  '[vrCPNRet]<<>>Valor da Contribuição Previdenciária que deixou de ser retida pelo declarante em decorrência de decisão/sentença judicial.';
comment on column S_5011.VRRATNRET is
  '[vrRatNRet]<<>>Valor da GILRAT, incidente sobre a aquisição de produção rural de produtor rural, cuja retenção deixou de ser efetuada em decorrência de decisão/sentença judicial.';
comment on column S_5011.VRSENARNRET is
  '[vrSenarNRet]<<>>Valor da contribuição destinada ao SENAR, incidente sobre a aquisição de produção rural de produtor rural pessoa física/segurado especial, e que deixou de ser retida em decorrência de decisão/sentença judicial.';
comment on column S_5011.VRCPCALCPR is '[vrCPCalcPR]<<>>Valor calculado na contribuição previdenciária do produtor rural.
Cálculo:
a) Para {indAquis} = [1,2]: {vlrAquis} x aliq 2,0%;
b) Para {indAquis} = [3]: {vlrAquis} x 2,5%.';
comment on column S_5011.VRRATDESCPR is
  '[vrRatDescPR]<<>>Valor da contribuição destinada ao financiamento dos benefícios concedidos em razão do grau de incidência da incapacidade laborativa decorrente dos riscos ambientais do trabalho, incidente sobre a aquisição de produção rural de produtor rural.
Evento de origem (S-1250)';
comment on column S_5011.VRRATCALCPR is
  '[vrRatCalcPR]<<>>Valor calculado do RAT devido pelo Produtor Rural. Cálculo: {vlrAquis} x aliq 0,1%.';
comment on column S_5011.VRSENARDESC is
  '[vrSenarDesc]<<>>Valor da contribuição destinada ao SENAR, incidente sobre a aquisição de produção rural de produtor rural pessoa física/segurado especial.
Origem: {vrSenarDesc} do S-1250.';
comment on column S_5011.VRSENARCALC is '[vrSenarCalc]<<>>Valor calculado da contribuição devida pelo produtor rural ao Senar.
Cálculo:
a) Para {indAquis} = [1]: {vlrAquis} x aliq 0,2%;
b) Para {indAquis} = [2,3]: Zero.';
comment on column S_5011.BASESCOMERC is
  '[basesComerc]<<>>Informações de bases de cálculo relativas à comercialização da produção rural da Pessoa Física.
Informações desse grupo conforme informado pelo contribuinte em S-1260.';
comment on column S_5011.INDCOMERC is
  '[indComerc]<<>>Indicativo de Comercialização:
2 - Comercialização da Produção por Prod. Rural PF/Seg. Especial - efetuada diretamente no varejo a consumidor final ou a outro produtor rural pessoa física/segurado especial;
3 - Comercialização da Produção por Prod. Rural PF/Seg. Especial - Vendas a PJ ou a Intermediário PF, exceto PAA; 8 - Comercialização da Produção para Entidade inscrita no PAA;
9 - Comercialização da Produção no Mercado Externo. Origem: {indComerc} do S-1260.';
comment on column S_5011.VRBCCOMPR is
  '[vrBcComPR]<<>>Valor da Base de Cálculo da comercialização da produção rural do Produtor Rural PF/Segurado Especial a outra PF no varejo ou a outro Produtor Rural PF/Segurado Especial ou no mercado Externo, conforme {indComerc}.
Origem: {vrTotCom} do S-1260 conforme {indComerc}.';
comment on column S_5011.VRCPSUSP is '[vrCPSusp]<<>>Valor da Contribuição Previdenciária com exigibilidade suspensa.
Origem: {vrCPSusp} do S-1260.';
comment on column S_5011.VRRATSUSP is
  '[vrRatSusp]<<>>Valor da contribuição para Gilrat com exigibilidade suspensa. Origem: {vrRatSusp} do S-1260.';
comment on column S_5011.VRSENARSUSP is
  '[vrSenarSusp]<<>>Valor da contribuição para o Senar com exigibilidade suspensa. Origem: {vrSenarSusp} do S-1260.';
comment on column S_5011.BASESAVNPORT is
  '[basesAvNPort]<<>>Informações de bases de cálculo relativas à contratação de trabalhadores avulsos não portuários.
Informações desse grupo conforme informado pelo contribuinte em S-1270.';
comment on column S_5011.FPASSIND is
  '[fpasSind]<<>>Preencher com o código FPAS do Sindicato. Origem: {fpasSind} do S-1270.
Validação: Código de FPAS deve ser preenchido com 515 ou 507, conforme o Sindicato por intermédio do qual os trabalhadores avulsos foram contratados esteja vinculado a Indústria ou ao Comércio.';
comment on column S_5011.CODTERCS is
  '[codTercs]<<>>Preencher com o código de terceiros, conforme tabela 4. No caso de existencia de convênios e decisões judiciais que resultem em nenhum recolhimento de contribuição aos Terceiros, informar o código 0000 e preencher o grupo
{infoProcJudTerceiros}. Origem: {codTercs} do S-1270.
Validação: O código de terceiros informado deve ser compatível com o código de FPAS informado, conforme tabela
4. A diferença só é permitida se houver processo(s) judicial(is) que ampare a divergência.';
comment on column S_5011.VLRREMUN is '[vlrRemun]<<>>Valor da Remuneração dos trabalhadores avulsos não portuários.
Origem: {vlrRemun} do S-1270.';
comment on column S_5011.VR13 is
  '[vr13]<<>>Valor correspondente ao décimo terceiro salário proporcional dos trabalhadores avulsos não portuários.
Origem: {vr13} do S-1270.';
comment on column S_5011.VRDESCCP is
  '[vrDescCP]<<>>preencher com o valor total da contribuição descontada dos segurados da categoria indicada.
Origem: {vrDescCP} do S-1270.';
comment on column S_5011.INFOCRESTAB is
  '[infoCREstab]<<>>Informações das contribuições sociais devidas à Previdência Social e Outras Entidades e Fundos, consolidadas por estabelecimento e por código de Receita - CR.';
comment on column S_5011.TPCR is
  '[tpCR]<<>>Código de Receita - CR relativo a contribuições sociais devidas à Previdência Social e a Outras Entidades e Fundos (Terceiros), conforme legislação em vigor na competência.
Validação: Deve ser um código válido, compatível com a classificação tributária do contribuinte e com as informações prestadas nos demais eventos.';
comment on column S_5011.VRCR is '[vrCR]<<>>Valor correspondente ao Código de Receita - CR apurado.
Validação: Deve ser apurado de acordo com a legislação em vigor na competência.
Deve ser maior que 0 (zero).';
comment on column S_5011.VRSUSPCR is '[vrSuspCR]<<>>Valor suspenso correspondente ao Código de Receita - CR apurado.
Validação: Deve ser apurado de acordo com as informações de processos judiciais e administrativos.
Deve ser maior que 0 (zero).';
comment on column S_5011.INFOCRCONTRIB is
  '[infoCRContrib]<<>>Informações consolidadas das contribuições sociais devidas à Previdência Social e Outras Entidades e Fundos, por código de Receita - CR.';
comment on column S_5011.TPCR is
  '[tpCR]<<>>Código de Receita - CR relativo a contribuições sociais devidas à Previdência Social e a Outras Entidades e Fundos (Terceiros), conforme legislação em vigor na competência.
Validação: Deve ser um código válido, compatível com a classificação tributária do contribuinte e com as informações prestadas nos demais eventos.';
comment on column S_5011.VRCR is '[vrCR]<<>>Valor correspondente ao Código de Receita - CR apurado.
Validação: Deve ser apurado de acordo com a legislação em vigor na competência.
Deve ser maior que 0 (zero).';
comment on column S_5011.VRCRSUSP is
  '[vrCRSusp]<<>>Valor do tributo com exigibilidade suspensa. Se não houver informação, preencher com zero.';
