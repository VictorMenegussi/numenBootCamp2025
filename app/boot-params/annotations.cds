using BootService as service from '../../srv/service';


annotate service.Parameters with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>empresa}',
                Value: empresa,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>processo}',
                Value: processo_ID,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>periodicidade}',
                Value: periodicidade_ID,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>acao}',
                Value: acao_ID,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>tipoDocumento}',
                Value: tipoDocumento,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>descricaoCabecalhoLanc}',
                Value: descricaoCabecalhoLanc,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>moedaDocumento}',
                Value: moedaDocumento,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>chaveLancamentoDebito}',
                Value: chaveLancamentoDebito,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>contaContabilDebito}',
                Value: contaContabilDebito,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>chaveLancamentoCredito}',
                Value: chaveLancamentoCredito,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>contaContabilCredito}',
                Value: contaContabilCredito,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>bloqueioPgto}',
                Value: bloqueioPgto,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>diaLancamento}',
                Value: diaLancamento,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>centroCusto}',
                Value: centroCusto,
            },
        ],
    },
    UI.Facets                    : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup',
    }, ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>acao}',
            Value: acao_ID,
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>periodicidade}',
            Value: periodicidade_ID,
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>processo}',
            Value: processo_ID,
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>empresa}',
            Value: empresa,
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>tipoDocumento}',
            Value: tipoDocumento,
        },
    ],
    UI.SelectionFields           : [
        empresa,
        processo_ID,
        periodicidade_ID,
        acao_ID
    ],
) {

    processo @(
        title : '{@i18n>processo}',
        Common: {
            Text           : processo.description,
            TextArrangement: #TextOnly,
            ValueList      : {
                $Type         : 'Common.ValueListType',
                CollectionPath: 'ProcessoValues',
                Parameters    : [
                    {
                        $Type            : 'Common.ValueListParameterInOut',
                        LocalDataProperty: 'processo_ID',
                        ValueListProperty: 'ID'
                    },
                    {
                        $Type            : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'description'
                    }
                ]
            }
        }
    );
    acao @(
        title : '{@i18n>acao}',
        Common: {
            Text           : acao.description,
            TextArrangement: #TextOnly,
            ValueList      : {
                $Type         : 'Common.ValueListType',
                CollectionPath: 'AcaoValues',
                Parameters    : [
                    {
                        $Type            : 'Common.ValueListParameterInOut',
                        LocalDataProperty: 'acao_ID',
                        ValueListProperty: 'ID'
                    },
                    {
                        $Type            : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'description'
                    }
                ]
            }
        }
    );
    periodicidade @(
        title : '{@i18n>periodicidade}',
        Common: {
            Text           : periodicidade.description,
            TextArrangement: #TextOnly,
            ValueList      : {
                $Type         : 'Common.ValueListType',
                CollectionPath: 'PeriodicidadeValues',
                Parameters    : [
                    {
                        $Type            : 'Common.ValueListParameterInOut',
                        LocalDataProperty: 'periodicidade_ID',
                        ValueListProperty: 'ID'
                    },
                    {
                        $Type            : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'description'
                    }
                ]
            }
        }
    );
};
