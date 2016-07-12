--drop table S_3000;

create table S_3000
(
  EVTEXCLUSAO      integer,
  ID               varchar2 (36),
  IDEEVENTO        integer,
  TPAMB            numeric (1),
  PROCEMI          numeric (1),
  VERPROC          varchar2 (20),
  IDEEMPREGADOR    integer,
  TPINSC           numeric (1),
  NRINSC           varchar2 (15),
  INFOEXCLUSAO     integer,
  TPEVENTO         varchar2 (6),
  NRRECEVT         varchar2 (40),
  IDETRABALHADOR   integer,
  CPFTRAB          varchar2 (11),
  NISTRAB          varchar2 (11),
  IDEFOLHAPAGTO    integer,
  INDAPURACAO      numeric (1),
  PERAPUR          varchar2 (7)
);

comment on table S_3000 is 'Registros do evento S-3000 - Exclus�o de Eventos';
comment on column S_3000.EVTEXCLUSAO is '[evtExclusao]<<>>Evento de Exclus�o Regras de Valida��o:
REGRA_EXISTE_INFO_EMPREGADOR REGRA_EVE_EXCLUSAO_VALIDA_NRRECIBO REGRA_VALIDA_EMPREGADOR';
comment on column S_3000.ID is '[Id]<<>>Identifica��o �nica do evento.
Valida��o: Deve ser um Id v�lido, conforme descrito na REGRA_VALIDA_ID_EVENTO.';
comment on column S_3000.IDEEVENTO is '[ideEvento]<<>>Informa��es de identifica��o do evento';
comment on column S_3000.TPAMB is '[tpAmb]<<>>Identifica��o do ambiente: 1 - Produ��o;
2 - Pr�-produ��o - dados reais;
3 - Pr�-produ��o - dados fict�cios. Valores V�lidos: 1, 2, 3.';
comment on column S_3000.PROCEMI is '[procEmi]<<>>Processo de emiss�o do evento:
1- Emiss�o com aplicativo do empregador. Valores V�lidos: 1';
comment on column S_3000.VERPROC is
  '[verProc]<<>>Vers�o do processo de emiss�o do evento.  Informar a vers�o do aplicativo emissor do evento.';
comment on column S_3000.IDEEMPREGADOR is '[ideEmpregador]<<>>Informa��es de identifica��o do empregador';
comment on column S_3000.TPINSC is '[tpInsc]<<>>Preencher com o c�digo correspondente ao tipo de inscri��o, conforme tabela 5
Valida��o: Deve ser igual a [1] (CNPJ) ou [2] (CPF)';
comment on column S_3000.NRINSC is
  '[nrInsc]<<>>Informar o n�mero de inscri��o do contribuinte de acordo com o tipo de inscri��o indicado no campo {tpInsc}. Se for um CNPJ deve ser informada apenas a Raiz/Base de oito posi��es, exceto se natureza jur�dica de administra��o p�blica federal ([101-5], [104-0], [107-4], [116-3]), situa��o em que o campo deve ser preenchido com o CNPJ completo com 14 posi��es. Valida��o: Se {tpInsc} for igual a [1], deve ser um n�mero de CNPJ v�lido. Se {tpInsc} for igual a [2], deve ser um CPF v�lido.';
comment on column S_3000.INFOEXCLUSAO is '[infoExclusao]<<>>Registro que identifica o evento objeto da exclus�o.';
comment on column S_3000.TPEVENTO is '[tpEvento]<<>>Preencher com o tipo de evento, conforme tabela 9.
Valida��o: Deve existir na tabela 9. Podem ser exclu�dos apenas os eventos relacionados abaixo::
a) Cadastramento inicial do v�nculo (S-2100);
b) N�o peri�dicos (S-2190 a S-2399);
c) Peri�dicos (S-1200 a S-1280).';
comment on column S_3000.NRRECEVT is
  '[nrRecEvt]<<>>Preencher com o n�mero do recibo do evento que ser� exclu�do. Valida��o: O recibo deve ser relativo ao mesmo tipo de evento indicado em {tpEvento} e o respectivo evento n�o deve constar como exclu�do ou retificado.  Al�m disso, no caso de exclus�o de eventos em que existe a identifica��o do trabalhador, o evento que est� sendo exclu�do deve referir-se ao mesmo trabalhador identificado por {cpfTrab} e {nisTrab}.';
comment on column S_3000.IDETRABALHADOR is
  '[ideTrabalhador]<<>>Registro que identifica��o a qual trabalhador pertence o evento que ser� exclu�do.';
comment on column S_3000.CPFTRAB is
  '[cpfTrab]<<>>Preencher com o n�mero do CPF do trabalhador.  Valida��o: O CPF indicado deve existir na base de dados do RET.';
comment on column S_3000.NISTRAB is
  '[nisTrab]<<>>Preencher com o n�mero de inscri��o do segurado - NIS, o qual pode ser o PIS, PASEP ou NIT.
Valida��o: Deve ser um NIS v�lido e pertencente ao trabalhador. O preenchimento � obrigat�rio, exceto no caso de estagi�rio.';
comment on column S_3000.IDEFOLHAPAGTO is
  '[ideFolhaPagto]<<>>Registro que identifica a qual folha de pagamento pertence o evento que ser� exclu�do.';
comment on column S_3000.INDAPURACAO is '[indApuracao]<<>>Indicativo de per�odo de apura��o: 1 - Mensal;
2 - Anual (13� sal�rio).
Valores V�lidos: 1, 2';
comment on column S_3000.PERAPUR is
  '[perApur]<<>>Informar o m�s/ano (formato AAAA-MM) de refer�ncia das informa��es, se {indApuracao} for igual a [1], ou apenas o ano (formato AAAA), se {indApuracao} for igual a [2]
Valida��o: Deve ser um m�s/ano ou ano v�lido, posterior a implementa��o do eSocial.';
