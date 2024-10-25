using { cuid, managed, sap.common.CodeList } from '@sap/cds/common';
namespace db;

entity Kandidaat: cuid, managed{
    key ID : UUID; 
    voornaam: String; 
    achternaam: String; 
    geboortedatum: Date; 
    woonplaats: String; 
    email: String; 
    afdeling: Association to Afdeling; 
    contract_type: Association to ContractType; 
    rapporteert_naar: Association to Persoon; 
    voorkeurstaal: Association to Taal; 
    startdatum: Date; 
    anciënniteit: Integer; 
    status: String; 
}
entity Afdeling {
    code: Association to Code; 
    omschrijving: String; 
    maxronde1kandidaat: Integer;
    maxronde2kandidaat: Integer; 
}

entity Ronde: cuid, managed{
    key ID : UUID; 
    ronde_nummer: Association to Nummer; 
    kandidaat: Association to Kandidaat; 
    goedgekeurd : Boolean; 
    goedgekeurd_door: Association to Persoon;  
    datum_goedkeuring: DateTime; 
}

entity Persoon: cuid, managed{
     key ID : UUID; 
    voornaam: String; 
    achternaam: String;
}

entity Nummer: CodeList{
    key code: Integer enum {
        ronde1 = 1;
        ronde2 = 2;
    }
}
entity Code : CodeList{
    key code: String enum {
        human_resourses = 'HR'; 
        finance = 'FIN'; 
        sales = 'SAL'; 
        marketing = 'MKT';
        development = 'DEV'; 
        it_department = 'IT';
    }
}

entity ContractType: CodeList{
    key code: String enum {
        fulltime = 'Full Time'; 
        viervijfde = '4/5'; 
        drievijfde = '3/5'; 
        halftijds = 'Halftijds'; 
        stage = 'Stage';

    }
}

entity Taal: CodeList{
    key code: String enum {
        engels = 'ENG'; 
        nederland = 'NL'; 
        duits = 'GER'; 
        frans = 'FRA'; 
    }
}







