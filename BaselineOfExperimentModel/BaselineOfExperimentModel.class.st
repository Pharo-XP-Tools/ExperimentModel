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
			'github://Julesboul/DebuggingSpy-EventRecorder:P12' ].

	spec for: #common do: [ 
		spec package: 'ExperimentModel' ]
]
