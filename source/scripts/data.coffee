#data
define [
    'jade!projects/venmoHomepage/template',
    'jade!projects/rockYourJersey/template',
    'jade!projects/SPAViz/template'
    'jade!projects/amnesty/template'
    #'jade!templates/projects/amnesty_cmu'
    #'jade!templates/projects/college_peer_visualization'
    #'jade!templates/projects/giant_eagle'
    #'jade!templates/projects/cmu_hockey'
    #'jade!templates/projects/tribune_review'
    #'jade!templates/projects/lizi'
    #'jade!templates/projects/hired_pan'
    #'jade!templates/projects/bettr_bits'
], (
    VenmoHomepageTemplate,
    RockYourJerseyTemplate
    SPAVizTemplate
    AmnestyTemplate
   ) ->

    Projects =

        'venmoHomepage':
            name: 'Venmo Homepage'
            template: VenmoHomepageTemplate
            year: '2012'
            skills: ['UX Design', 'Photoshop', 'CSS']

        'rockYourJersey':
            name: 'Rock Your Jersey'
            template: RockYourJerseyTemplate
            year: '2011'
            skills: ['UX Design', 'Photoshop', 'CSS',
                     'Branding',
                     'JavaScript', 'CreativeSuite Scripting' ]
        'SPAViz':
            name: 'Structural Path Analysis'
            template: SPAVizTemplate
            year: '2010'
            skills: ['MySQL', 'PHP', 'JavaScript', 'jQuery']

        'amnesty':
            name: 'Amnesty CMU'
            template: AmnestyTemplate
            year: '2010'

            #'amnesty_cmu':
            #    'Amnesty CMU'
            #'college_peer_visualization': 'College Peer Visualization'
            #'giant_eagle': 'Giant Eagle'
            #'cmu_hockey': 'CMU Hockey'
            #'tribune_review': 'Pittsburgh Trib Review'
            #'lizi': 'Lizi'
            #'hired_pan': 'Hired Pan'
            #'bettr_bits': 'BettrBits'

    returnable =
        projects: Projects
