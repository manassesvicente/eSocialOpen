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

comment on table S_3000 is 'Registros do evento S-3000 - Exclusão de Eventos';
comment on column S_3000.EVTEXCLUSAO is '[evtExclusao]<<>>Evento de Exclusão Regras de Validação:
REGRA_EXISTE_INFO_EMPREGADOR REGRA_EVE_EXCLUSAO_VALIDA_NRRECIBO REGRA_VALIDA_EMPREGADOR';
comment on column S_3000.ID is '[Id]<<>>Identificação única do evento.
Validação: Deve ser um Id válido, conforme descrito na REGRA_VALIDA_ID_EVENTO.';
comment on column S_3000.IDEEVENTO is '[ideEvento]<<>>Informações de identificação do evento';
comment on column S_3000.TPAMB is '[tpAmb]<<>>Identificação do ambiente: 1 - Produção;
2 - Pré-produção - dados reais;
3 - Pré-produção - dados fictícios. Valores Válidos: 1, 2, 3.';
comment on column S_3000.PROCEMI is '[procEmi]<<>>Processo de emissão do evento:
1- Emissão com aplicativo do empregador. Valores Válidos: 1';
comment on column S_3000.VERPROC is
  '[verProc]<<>>Versão do processo de emissão do evento.  Informar a versão do aplicativo emissor do evento.';
comment on column S_3000.IDEEMPREGADOR is '[ideEmpregador]<<>>Informações de identificação do empregador';
comment on column S_3000.TPINSC is '[tpInsc]<<>>Preencher com o código correspondente ao tipo de inscrição, conforme tabela 5
Validação: Deve ser igual a [1] (CNPJ) ou [2] (CPF)';
comment on column S_3000.NRINSC is
  '[nrInsc]<<>>Informar o número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}. Se for um CNPJ deve ser informada apenas a Raiz/Base de oito posições, exceto se natureza jurídica de administração pública federal ([101-5], [104-0], [107-4], [116-3]), situação em que o campo deve ser preenchido com o CNPJ completo com 14 posições. Validação: Se {tpInsc} for igual a [1], deve ser um número de CNPJ válido. Se {tpInsc} for igual a [2], deve ser um CPF válido.';
comment on column S_3000.INFOEXCLUSAO is '[infoExclusao]<<>>Registro que identifica o evento objeto da exclusão.';
comment on column S_3000.TPEVENTO is '[tpEvento]<<>>Preencher com o tipo de evento, conforme tabela 9.
Validação: Deve existir na tabela 9. Podem ser excluídos apenas os eventos relacionados abaixo::
a) Cadastramento inicial do vínculo (S-2100);
b) Não periódicos (S-2190 a S-2399);
c) Periódicos (S-1200 a S-1280).';
comment on column S_3000.NRRECEVT is
  '[nrRecEvt]<<>>Preencher com o número do recibo do evento que será excluído. Validação: O recibo deve ser relativo ao mesmo tipo de evento indicado em {tpEvento} e o respectivo evento não deve constar como excluído ou retificado.  Além disso, no caso de exclusão de eventos em que existe a identificação do trabalhador, o evento que está sendo excluído deve referir-se ao mesmo trabalhador identificado por {cpfTrab} e {nisTrab}.';
comment on column S_3000.IDETRABALHADOR is
  '[ideTrabalhador]<<>>Registro que identificação a qual trabalhador pertence o evento que será excluído.';
comment on column S_3000.CPFTRAB is
  '[cpfTrab]<<>>Preencher com o número do CPF do trabalhador.  Validação: O CPF indicado deve existir na base de dados do RET.';
comment on column S_3000.NISTRAB is
  '[nisTrab]<<>>Preencher com o número de inscrição do segurado - NIS, o qual pode ser o PIS, PASEP ou NIT.
Validação: Deve ser um NIS válido e pertencente ao trabalhador. O preenchimento é obrigatório, exceto no caso de estagiário.';
comment on column S_3000.IDEFOLHAPAGTO is
  '[ideFolhaPagto]<<>>Registro que identifica a qual folha de pagamento pertence o evento que será excluído.';
comment on column S_3000.INDAPURACAO is '[indApuracao]<<>>Indicativo de período de apuração: 1 - Mensal;
2 - Anual (13° salário).
Valores Válidos: 1, 2';
comment on column S_3000.PERAPUR is
  '[perApur]<<>>Informar o mês/ano (formato AAAA-MM) de referência das informações, se {indApuracao} for igual a [1], ou apenas o ano (formato AAAA), se {indApuracao} for igual a [2]
Validação: Deve ser um mês/ano ou ano válido, posterior a implementação do eSocial.';
