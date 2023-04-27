using {db} from '../db/schema';

service CatalogService @(requires: ['authenticated-user']) {

    @readonly
    entity Products as projection on db.Products;

    @restrict: [{
        grant: [
            'READ',
            'submit'
        ],
        where: 'createdBy=$user'
    }]
    @odata.draft.enabled
    entity Orders   as projection on db.Orders actions {
        action submit();
    };
}
