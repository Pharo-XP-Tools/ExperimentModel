Class {
	#name : 'BaselineOfExperimentModel',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfExperimentModel',
	#package : 'BaselineOfExperimentModel'
}

{ #category : 'baselines' }
BaselineOfExperimentModel >> baseline: spec [

	<baseline>
	
	spec baseline: 'DSSpyEventRecorder' with: [ 
		spec repository:
			'github://Julesboul/EventRecorder:main' ].

	spec for: #common do: [ 
		spec package: 'ExperimentModel' ]
]
