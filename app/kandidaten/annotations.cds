using KandidaatService as service from '../../srv/services';
annotate service.Kandidaten with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'voornaam',
                Value : voornaam,
            },
            {
                $Type : 'UI.DataField',
                Label : 'achternaam',
                Value : achternaam,
            },
            {
                $Type : 'UI.DataField',
                Label : 'geboortedatum',
                Value : geboortedatum,
            },
            {
                $Type : 'UI.DataField',
                Label : 'woonplaats',
                Value : woonplaats,
            },
            {
                $Type : 'UI.DataField',
                Label : 'email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'contract_type_code',
                Value : contract_type_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'voorkeurstaal_code',
                Value : voorkeurstaal_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'startdatum',
                Value : startdatum,
            },
            {
                $Type : 'UI.DataField',
                Label : 'anciënniteit',
                Value : anciënniteit,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'voornaam',
            Value : voornaam,
        },
        {
            $Type : 'UI.DataField',
            Label : 'achternaam',
            Value : achternaam,
        },
        {
            $Type : 'UI.DataField',
            Label : 'geboortedatum',
            Value : geboortedatum,
        },
        {
            $Type : 'UI.DataField',
            Label : 'woonplaats',
            Value : woonplaats,
        },
        {
            $Type : 'UI.DataField',
            Label : 'email',
            Value : email,
        },
    ],
);

