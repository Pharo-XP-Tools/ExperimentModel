Class {
	#name : 'BaselineOfExperimentModel',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfExperimentModel',
	#package : 'BaselineOfExperimentModel'
}

{ #category : 'baselines' }
BaselineOfExperimentModel >> baseline: spec [

	<baseline>

	spec for: #common do: [ 
		spec package: 'ExperimentModel' ]
]
