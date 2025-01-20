using db as db from '../db/schema.cds';

@requires: 'authenticated-user'
service BootService {
    entity TabelaTesteDeploy as projection on db.TabelaTesteDeploy;
}