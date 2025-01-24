namespace db;

entity TabelaTesteDeploy {
    key ID : String(1);
        nome : String(200);
}

entity Parameters {
    key empresa                : String(4); // BUKRS: Company Code
    key processo               : Association to ProcessoValues;
    key periodicidade          : Association to PeriodicidadeValues;
    key acao                   : Association to AcaoValues;
        tipoDocumento          : String(2); // BLART: Document Type
        descricaoCabecalhoLanc : String(25); // BKTXT: Document Header Text
        moedaDocumento         : String(5); // WAERS: Currency Key
        chaveLancamentoDebito  : String(2); // BSCHL: Posting Key
        contaContabilDebito    : String(10); // HKONT: G/L Account
        chaveLancamentoCredito : String(2); // BSCHL: Posting Key
        contaContabilCredito   : String(10); // HKONT: G/L Account
        bloqueioPgto           : String(1); // ZLSPR: Payment Block Key
        diaLancamento          : String(2); // CHAR(2): Two characters
        centroCusto            : String(10); // KOSTL: Cost Center
}

entity ProcessoValues {
  key ID : Integer;
  description : localized String;
}

entity PeriodicidadeValues {
  key ID : Integer;
  description : localized String;
}

entity AcaoValues {
  key ID : Integer;
  description : localized String;
}