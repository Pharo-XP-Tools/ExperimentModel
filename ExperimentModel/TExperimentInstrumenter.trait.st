"
I am a trait to define logger instrumentation for empirical experiments.

My users can configure logs sent to a server.
"
Trait {
	#name : 'TExperimentInstrumenter',
	#instVars : [
		'logger'
	],
	#category : 'ExperimentModel',
	#package : 'ExperimentModel'
}

{ #category : 'as yet unclassified' }
TExperimentInstrumenter >> instrumentSystem [

	self explicitRequirement 
]

{ #category : 'as yet unclassified' }
TExperimentInstrumenter >> logger: aLogger [

	logger := aLogger 
]

{ #category : 'as yet unclassified' }
TExperimentInstrumenter >> uuid [

	self explicitRequirement 
]
