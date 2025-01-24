using db as db from '../db/schema.cds';

@requires: 'authenticated-user'
service BootService {
    entity TabelaTesteDeploy as projection on db.TabelaTesteDeploy;
    entity Parameters as projection on db.Parameters;    
    entity ProcessoValues as projection on db.ProcessoValues;
    entity PeriodicidadeValues as projection on db.PeriodicidadeValues;
    entity AcaoValues as projection on db.AcaoValues;
}