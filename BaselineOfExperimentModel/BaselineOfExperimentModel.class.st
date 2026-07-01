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
		spec postLoadDoIt: #postLoad.
		spec package: 'ExperimentModel' ]
]

{ #category : 'baselines' }
BaselineOfExperimentModel >> postLoad [
	WorkingSession compile: 'id ^UUID new printString'.
	WorkingSession compile: 'creationTime ^DateAndTime now'.
]
