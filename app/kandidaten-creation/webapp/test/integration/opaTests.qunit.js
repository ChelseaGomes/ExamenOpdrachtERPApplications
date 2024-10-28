sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/kandidatencreation/test/integration/FirstJourney',
		'ns/kandidatencreation/test/integration/pages/KandidatenMain'
    ],
    function(JourneyRunner, opaJourney, KandidatenMain) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/kandidatencreation') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheKandidatenMain: KandidatenMain
                }
            },
            opaJourney.run
        );
    }
);