--drop table S_5012;

create table S_5012
(
  EVTIRRF         integer,
  ID              varchar2 (36),
  IDEEVENTO       integer,
  PERAPUR         varchar2 (7),
  IDEEMPREGADOR   integer,
  TPINSC          numeric (1),
  NRINSC          varchar2 (15),
  INFOIRRF        integer,
  NATINFO         numeric (1),
  NRRECARQBASE    varchar2 (40),
  INDEXISTINFO    numeric (1),
  OBSERVACAO      varchar2 (255),
  INFOCRCONTRIB   integer,
  TPCR            numeric (6),
  VRCR            numeric (14, 2)
  );

comment on table S_5012 is 'Registros do evento S-5012 - Informa��es do IRRF consolidadas por contribuinte';
comment on column S_5012.EVTIRRF is
  '[evtIrrf]<<>>Evento consolidado por contribuinte relativo ao Imposto de Renda Retido na Fonte incidente sobre remunera��es pagas a seus trabalhadores.';
comment on column S_5012.ID is '[Id]<<>>Identifica��o �nica do evento.
Valida��o: Deve ser um Id v�lido, conforme descrito na REGRA_VALIDA_ID_EVENTO.';
comment on column S_5012.IDEEVENTO is '[ideEvento]<<>>Identifica��o do evento de retorno';
comment on column S_5012.PERAPUR is
  '[perApur]<<>>Informar o m�s/ano (formato AAAA-MM) de refer�ncia das informa��es.
Valida��o: Deve corresponder ao informado pelo empregador no evento de origem (S-4000, campo {perSolicit}, ou S-1299).';
comment on column S_5012.IDEEMPREGADOR is '[ideEmpregador]<<>>Informa��es de identifica��o do empregador';
comment on column S_5012.TPINSC is '[tpInsc]<<>>Preencher com o c�digo correspondente ao tipo de inscri��o, conforme tabela 5
Valida��o: Deve ser igual a [1] (CNPJ) ou [2] (CPF)';
comment on column S_5012.NRINSC is
  '[nrInsc]<<>>Informar o n�mero de inscri��o do contribuinte de acordo com o tipo de inscri��o indicado no campo {tpInsc}. Se for um CNPJ deve ser informada apenas a Raiz/Base de oito posi��es, exceto se natureza jur�dica de administra��o p�blica federal ([101-5], [104-0], [107-4], [116-3]), situa��o em que o campo deve ser preenchido com o CNPJ completo com 14 posi��es. Valida��o: Se {tpInsc} for igual a [1], deve ser um n�mero de CNPJ v�lido. Se {tpInsc} for igual a [2], deve ser um CPF v�lido.';
comment on column S_5012.INFOIRRF is '[infoIRRF]<<>>Informa��es relativas ao Imposto de Renda Retido na Fonte.';
comment on column S_5012.NATINFO is
  '[natInfo]<<>>Natureza da informa��o, conforme op��es a seguir:
1 - Informa��o parcial, ou seja, anterior ao fechamento dos eventos peri�dicos, originada a partir da solicita��o do contribuinte atrav�s do evento S-4000;
2 - Informa��o final, ou seja, posterior ao fechamento dos eventos peri�dicos, originada a partir da solicita��o do contribuinte atrav�s do evento S-4000;
3 - Informa��o final, ou seja, posterior ao fechamento dos eventos peri�dicos, vinculada ao fechamento dos eventos peri�dicos efetuado atrav�s do evento S-1299.
Valores V�lidos: 1, 2, 3.';
comment on column S_5012.NRRECARQBASE is
  '[nrRecArqBase]<<>>Preencher com o n�mero do recibo do arquivo que deu origem ao presente arquivo de retorno ao empregador.
Valida��o: Deve ser um recibo de entrega v�lido, correspondente ao arquivo que deu origem � presente solicita��o:
a) Se {natInfo} = a [1, 2], deve corresponder a um recibo de arquivo correspondente ao leiaute S-4000;
b) Se {natInfo} = [3], deve corresponder a um recibo de arquivo correspondente ao leiaute S-1299.';
comment on column S_5012.INDEXISTINFO is
  '[indExistInfo]<<>>Indicativo de exist�ncia de valores de bases ou de Imposto de Renda Retido na Fonte, conforme op��es a seguir:
1 - H� informa��es de bases e de Imposto de Renda Retido na Fonte;
2 - H� movimento, por�m n�o h� informa��es de bases e Imposto de Renda Retido na Fonte;
3 - N�o h� movimento na compet�ncia.';
comment on column S_5012.OBSERVACAO is
  '[observacao]<<>>Texto Fixo: As informa��es desse evento s�o resultantes de pedido de consulta, com as seguintes caracter�sticas:
a) N�o substitui o fechamento dos eventos peri�dicos (S-1299);
b) Refletem a situa��o do momento de gera��o da consulta. Valida��o: Preencher se {natInfo} = [1,2].';
comment on column S_5012.INFOCRCONTRIB is '[infoCRContrib]<<>>Informa��es consolidadas do IRRF por c�digo de Receita - CR. Origem S-5002.';
comment on column S_5012.TPCR is
  '[tpCR]<<>>C�digo de Receita - CR relativo ao Imposto de Renda Retido na Fonte, conforme legisla��o em vigor na compet�ncia.
Valida��o: Deve ser um c�digo v�lido, conforme as op��es a seguir:
0561-07 - IRRF Mensal, 13� sal�rio e F�rias sobre Trabalho Assalariado no pa�s ou ausente no exterior a servi�o do pa�s, exceto se contratado por Empregador Dom�stico ou por Segurado Especial sujeito a recolhimento unificado;
0561-08 - IRRF Mensal, 13� sal�rio e F�rias  sobre Trabalho Assalariado por Empregado Dom�stico ou Trabalhador contratado por Segurado Especial sujeito a recolhimento unificado;
0561-09 - IRRF 13� sal�rio na Rescis�o de contrato de trabalho. Empregador sujeito a recolhimento unificado;
0588-06 - IRRF sobre Rendimento do trabalho sem v�nculo empregat�cio;
0610-01 - IRRF sobre Rendimentos relativos a presta��o de servi�os de transporte rodovi�rio internacional de carga, pagos a transportador aut�nomo PF residente no Paraguai;
3280-06 - IRRF sobre Servi�os Prestados por associados de cooperativas de trabalho;
3562-01 - IRRF sobre Participa��o dos trabalhadores em Lucros ou Resultados (PLR);
2063-01 - IRRF sobre remunera��o indireta a benefici�rio n�o identificado.';
comment on column S_5012.VRCR is '[vrCR]<<>>Valor correspondente ao C�digo de Receita - CR apurado.
Valida��o: Deve ser apurado de acordo com a legisla��o em vigor na compet�ncia.
Deve ser maior que 0 (zero).
Origem: S-5002, exceto para o c�digo 2063-01, para o qual a origem � o campo {vrIRRF} do S-1220.';
