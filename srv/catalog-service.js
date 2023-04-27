const { ApplicationService } = require('@sap/cds');

class CatalogService extends ApplicationService {
    async init() {

        const { Orders } = this.entities;

        this.on('submit', Orders, (req) => {
            console.log(`> called submit with ${JSON.stringify(req.data)}.`);
        });
        
        super.init();
    }
}

module.exports = { CatalogService };
