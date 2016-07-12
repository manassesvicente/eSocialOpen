--drop table S_4000;

create table S_4000
(
  EVTSOLICTOTAL     integer,
  ID                varchar2 (36),
  IDEEVENTO         integer,
  TPAMB             numeric (1),
  PROCEMI           numeric (1),
  VERPROC           varchar2 (20),
  IDEEMPREGADOR     integer,
  TPINSC            numeric (1),
  NRINSC            varchar2 (15),
  INFOSOLICITACAO   integer,
  OPCCONSULT        numeric (1),
  PERSOLICIT        varchar2 (7),
  CPFTRAB           varchar2 (11)
);

comment on table S_4000 is 'Registros do evento S-4000 - Solicita��o de Totaliza��o de Bases e Contribui��es';
comment on column S_4000.EVTSOLICTOTAL is
  '[evtSolicTotal]<<>>Solicita��o de totaliza��o de bases de c�lculo/contribui��es Regras de Valida��o: REGRA_EXISTE_INFO_EMPREGADOR';
comment on column S_4000.ID is '[Id]<<>>Identifica��o �nica do evento.
Valida��o: Deve ser um Id v�lido, conforme descrito na REGRA_VALIDA_ID_EVENTO.';
comment on column S_4000.IDEEVENTO is '[ideEvento]<<>>Informa��es de Identifica��o do Evento';
comment on column S_4000.TPAMB is '[tpAmb]<<>>Identifica��o do ambiente: 1 - Produ��o;
2 - Pr�-produ��o - dados reais;
3 - Pr�-produ��o - dados fict�cios. Valores V�lidos: 1, 2, 3.';
comment on column S_4000.PROCEMI is '[procEmi]<<>>Processo de emiss�o do evento:
1- Emiss�o com aplicativo do empregador. Valores V�lidos: 1';
comment on column S_4000.VERPROC is
  '[verProc]<<>>Vers�o do processo de emiss�o do evento.  Informar a vers�o do aplicativo emissor do evento.';
comment on column S_4000.IDEEMPREGADOR is '[ideEmpregador]<<>>Informa��es de identifica��o do empregador';
comment on column S_4000.TPINSC is '[tpInsc]<<>>Preencher com o c�digo correspondente ao tipo de inscri��o, conforme tabela 5
Valida��o: Deve ser igual a [1] (CNPJ) ou [2] (CPF)';
comment on column S_4000.NRINSC is
  '[nrInsc]<<>>Informar o n�mero de inscri��o do contribuinte de acordo com o tipo de inscri��o indicado no campo {tpInsc}. Se for um CNPJ deve ser informada apenas a Raiz/Base de oito posi��es, exceto se natureza jur�dica de administra��o p�blica federal ([101-5], [104-0], [107-4], [116-3]), situa��o em que o campo deve ser preenchido com o CNPJ completo com 14 posi��es. Valida��o: Se {tpInsc} for igual a [1], deve ser um n�mero de CNPJ v�lido. Se {tpInsc} for igual a [2], deve ser um CPF v�lido.';
comment on column S_4000.INFOSOLICITACAO is '[infoSolicitacao]<<>>Identifica��o do per�odo e das informa��es que ser�o totalizadas.';
comment on column S_4000.OPCCONSULT is '[opcConsult]<<>>Op��es de consulta:
1 - Contribui��o Previdenci�ria por CPF; 2 - Imposto de Renda por CPF;
3 - Totalizador das contribui��es sociais; 4 - Totalizador do IRRF.
Valores V�lidos: 1, 2, 3, 4.';
comment on column S_4000.PERSOLICIT is
  '[perSolicit]<<>>Informar o per�odo para o qual deve ser gerada a totaliza��o de bases e contribui��es, no formato AAAA-MM ou AAAA. Valida��o: O per�odo informado deve ser anterior ou igual ao per�odo atual, e igual ou posterior � data de in�cio do eSocial. Se {opcConsult} = [2,4], formato deve ser AAAA-MM.';
comment on column S_4000.CPFTRAB is
  '[cpfTrab]<<>>Preencher com o n�mero do CPF do trabalhador. Valida��o: S� preencher se {opcConsult} = [1, 2].
Se preenchido, deve ser um CPF v�lido, para o qual tenha sido enviado evento de remunera��o (S-1200 ou S-1202) e/ou de pagamento (S-1210).';
