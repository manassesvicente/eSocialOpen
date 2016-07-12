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

comment on table S_5012 is 'Registros do evento S-5012 - Informações do IRRF consolidadas por contribuinte';
comment on column S_5012.EVTIRRF is
  '[evtIrrf]<<>>Evento consolidado por contribuinte relativo ao Imposto de Renda Retido na Fonte incidente sobre remunerações pagas a seus trabalhadores.';
comment on column S_5012.ID is '[Id]<<>>Identificação única do evento.
Validação: Deve ser um Id válido, conforme descrito na REGRA_VALIDA_ID_EVENTO.';
comment on column S_5012.IDEEVENTO is '[ideEvento]<<>>Identificação do evento de retorno';
comment on column S_5012.PERAPUR is
  '[perApur]<<>>Informar o mês/ano (formato AAAA-MM) de referência das informações.
Validação: Deve corresponder ao informado pelo empregador no evento de origem (S-4000, campo {perSolicit}, ou S-1299).';
comment on column S_5012.IDEEMPREGADOR is '[ideEmpregador]<<>>Informações de identificação do empregador';
comment on column S_5012.TPINSC is '[tpInsc]<<>>Preencher com o código correspondente ao tipo de inscrição, conforme tabela 5
Validação: Deve ser igual a [1] (CNPJ) ou [2] (CPF)';
comment on column S_5012.NRINSC is
  '[nrInsc]<<>>Informar o número de inscrição do contribuinte de acordo com o tipo de inscrição indicado no campo {tpInsc}. Se for um CNPJ deve ser informada apenas a Raiz/Base de oito posições, exceto se natureza jurídica de administração pública federal ([101-5], [104-0], [107-4], [116-3]), situação em que o campo deve ser preenchido com o CNPJ completo com 14 posições. Validação: Se {tpInsc} for igual a [1], deve ser um número de CNPJ válido. Se {tpInsc} for igual a [2], deve ser um CPF válido.';
comment on column S_5012.INFOIRRF is '[infoIRRF]<<>>Informações relativas ao Imposto de Renda Retido na Fonte.';
comment on column S_5012.NATINFO is
  '[natInfo]<<>>Natureza da informação, conforme opções a seguir:
1 - Informação parcial, ou seja, anterior ao fechamento dos eventos periódicos, originada a partir da solicitação do contribuinte através do evento S-4000;
2 - Informação final, ou seja, posterior ao fechamento dos eventos periódicos, originada a partir da solicitação do contribuinte através do evento S-4000;
3 - Informação final, ou seja, posterior ao fechamento dos eventos periódicos, vinculada ao fechamento dos eventos periódicos efetuado através do evento S-1299.
Valores Válidos: 1, 2, 3.';
comment on column S_5012.NRRECARQBASE is
  '[nrRecArqBase]<<>>Preencher com o número do recibo do arquivo que deu origem ao presente arquivo de retorno ao empregador.
Validação: Deve ser um recibo de entrega válido, correspondente ao arquivo que deu origem à presente solicitação:
a) Se {natInfo} = a [1, 2], deve corresponder a um recibo de arquivo correspondente ao leiaute S-4000;
b) Se {natInfo} = [3], deve corresponder a um recibo de arquivo correspondente ao leiaute S-1299.';
comment on column S_5012.INDEXISTINFO is
  '[indExistInfo]<<>>Indicativo de existência de valores de bases ou de Imposto de Renda Retido na Fonte, conforme opções a seguir:
1 - Há informações de bases e de Imposto de Renda Retido na Fonte;
2 - Há movimento, porém não há informações de bases e Imposto de Renda Retido na Fonte;
3 - Não há movimento na competência.';
comment on column S_5012.OBSERVACAO is
  '[observacao]<<>>Texto Fixo: As informações desse evento são resultantes de pedido de consulta, com as seguintes características:
a) Não substitui o fechamento dos eventos periódicos (S-1299);
b) Refletem a situação do momento de geração da consulta. Validação: Preencher se {natInfo} = [1,2].';
comment on column S_5012.INFOCRCONTRIB is '[infoCRContrib]<<>>Informações consolidadas do IRRF por código de Receita - CR. Origem S-5002.';
comment on column S_5012.TPCR is
  '[tpCR]<<>>Código de Receita - CR relativo ao Imposto de Renda Retido na Fonte, conforme legislação em vigor na competência.
Validação: Deve ser um código válido, conforme as opções a seguir:
0561-07 - IRRF Mensal, 13° salário e Férias sobre Trabalho Assalariado no país ou ausente no exterior a serviço do país, exceto se contratado por Empregador Doméstico ou por Segurado Especial sujeito a recolhimento unificado;
0561-08 - IRRF Mensal, 13° salário e Férias  sobre Trabalho Assalariado por Empregado Doméstico ou Trabalhador contratado por Segurado Especial sujeito a recolhimento unificado;
0561-09 - IRRF 13º salário na Rescisão de contrato de trabalho. Empregador sujeito a recolhimento unificado;
0588-06 - IRRF sobre Rendimento do trabalho sem vínculo empregatício;
0610-01 - IRRF sobre Rendimentos relativos a prestação de serviços de transporte rodoviário internacional de carga, pagos a transportador autônomo PF residente no Paraguai;
3280-06 - IRRF sobre Serviços Prestados por associados de cooperativas de trabalho;
3562-01 - IRRF sobre Participação dos trabalhadores em Lucros ou Resultados (PLR);
2063-01 - IRRF sobre remuneração indireta a beneficiário não identificado.';
comment on column S_5012.VRCR is '[vrCR]<<>>Valor correspondente ao Código de Receita - CR apurado.
Validação: Deve ser apurado de acordo com a legislação em vigor na competência.
Deve ser maior que 0 (zero).
Origem: S-5002, exceto para o código 2063-01, para o qual a origem é o campo {vrIRRF} do S-1220.';
