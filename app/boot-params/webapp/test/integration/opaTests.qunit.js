sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'bootparams/test/integration/FirstJourney',
		'bootparams/test/integration/pages/ParametersList',
		'bootparams/test/integration/pages/ParametersObjectPage'
    ],
    function(JourneyRunner, opaJourney, ParametersList, ParametersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('bootparams') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheParametersList: ParametersList,
					onTheParametersObjectPage: ParametersObjectPage
                }
            },
            opaJourney.run
        );
    }
);