sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/kandidaten/test/integration/FirstJourney',
		'ns/kandidaten/test/integration/pages/KandidatenList',
		'ns/kandidaten/test/integration/pages/KandidatenObjectPage'
    ],
    function(JourneyRunner, opaJourney, KandidatenList, KandidatenObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/kandidaten') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheKandidatenList: KandidatenList,
					onTheKandidatenObjectPage: KandidatenObjectPage
                }
            },
            opaJourney.run
        );
    }
);