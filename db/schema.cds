using {
    cuid,
    managed,
    Currency,
} from '@sap/cds/common';

namespace db;

entity Products : cuid {
    name : String(40);
}

entity Orders : cuid, managed {
    currency : Currency;
    Items    : Composition of many {
                   product  : Association to Products @mandatory;
                   quantity : Integer;
               }
}
