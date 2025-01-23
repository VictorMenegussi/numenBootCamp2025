sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'bootcampcap/test/integration/FirstJourney',
		'bootcampcap/test/integration/pages/TabelaTesteDeployList',
		'bootcampcap/test/integration/pages/TabelaTesteDeployObjectPage'
    ],
    function(JourneyRunner, opaJourney, TabelaTesteDeployList, TabelaTesteDeployObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('bootcampcap') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTabelaTesteDeployList: TabelaTesteDeployList,
					onTheTabelaTesteDeployObjectPage: TabelaTesteDeployObjectPage
                }
            },
            opaJourney.run
        );
    }
);