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

comment on table S_4000 is 'Registros do evento S-4000 - Solicitação de Totalização de Bases e Contribuições';
comment on column S_4000.EVTSOLICTOTAL is
  '[evtSolicTotal]<<>>Solicitação de totalização de bases de cálculo/contribuições Regras de Validação: REGRA_EXISTE_INFO_EMPREGADOR';
comment on column S_4000.ID is '[Id]<<>>Identificação única do evento.
Validação: Deve ser um Id válido, conforme descrito na REGRA_VALIDA_ID_EVENTO.';
comment on column S_4000.IDEEVENTO is '[ideEvento]<<>>Informações de Identificação do Evento';
comment on column S_4000.TPAMB is '[tpAmb]<<>>Identificação do ambiente: 1 - Produção;
2 - Pré-produção - dados reais;
3 - Pré-produção - dados fictícios. Valores Válidos: 1, 2, 3.';
comment on column S_4000.PROCEMI is '[procEmi]<<>>Processo de emissão do evento:
1- Emissão com aplicativo do empregador. Valores Válidos: 1';
comment on column S_4000.VERPROC is
  '[verProc]<<>>Versão do processo de emissão do evento.  Informar a versão do aplicativo emissor do evento.';
comment on column S_4000.IDEEMPREGADOR is '[ideEmpregador]<<>>Informações de identificação do empregador';
comment on column S_4000.TPINSC is '[tpInsc]<<>>Preencher com o código correspondente ao tipo de inscrição, conforme tabela 5
Validação: Deve ser igual a [1] (CNPJ) ou [2] (CPF)';
comment on column S_4000.NRINSC is
  '[nrInsc]<<>>Informar o número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}. Se for um CNPJ deve ser informada apenas a Raiz/Base de oito posições, exceto se natureza jurídica de administração pública federal ([101-5], [104-0], [107-4], [116-3]), situação em que o campo deve ser preenchido com o CNPJ completo com 14 posições. Validação: Se {tpInsc} for igual a [1], deve ser um número de CNPJ válido. Se {tpInsc} for igual a [2], deve ser um CPF válido.';
comment on column S_4000.INFOSOLICITACAO is '[infoSolicitacao]<<>>Identificação do período e das informações que serão totalizadas.';
comment on column S_4000.OPCCONSULT is '[opcConsult]<<>>Opções de consulta:
1 - Contribuição Previdenciária por CPF; 2 - Imposto de Renda por CPF;
3 - Totalizador das contribuições sociais; 4 - Totalizador do IRRF.
Valores Válidos: 1, 2, 3, 4.';
comment on column S_4000.PERSOLICIT is
  '[perSolicit]<<>>Informar o período para o qual deve ser gerada a totalização de bases e contribuições, no formato AAAA-MM ou AAAA. Validação: O período informado deve ser anterior ou igual ao período atual, e igual ou posterior à data de início do eSocial. Se {opcConsult} = [2,4], formato deve ser AAAA-MM.';
comment on column S_4000.CPFTRAB is
  '[cpfTrab]<<>>Preencher com o número do CPF do trabalhador. Validação: Só preencher se {opcConsult} = [1, 2].
Se preenchido, deve ser um CPF válido, para o qual tenha sido enviado evento de remuneração (S-1200 ou S-1202) e/ou de pagamento (S-1210).';
