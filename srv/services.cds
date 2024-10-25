using { db.Kandidaat, db.Afdeling, db.Ronde, db.Persoon, db.ContractType, db.Taal, db.Code, db.Nummer } from '../db/schema';

service KandidaatService {

   
    entity Kandidaten as projection on Kandidaat;

   
    entity Afdelingen as projection on Afdeling
        actions {


            
            
        };

    
    entity Rondes as projection on Ronde;

    
    entity Personen as projection on Persoon;

   
    entity ContractTypes as projection on ContractType;
    entity Talen as projection on Taal;

   
    entity AfdelingCodes as projection on Code;


    entity RondeNummers as projection on Nummer ;
}
