"
Common API for DSSpy surveys
"
Trait {
	#name : 'TExperimentLogger',
	#category : 'ExperimentModel',
	#package : 'ExperimentModel'
}

{ #category : 'logging' }
TExperimentLogger >> log: aDSEventRecord [

	self explicitRequirement 
]

{ #category : 'initialization' }
TExperimentLogger >> reset [

	self explicitRequirement 
]

{ #category : 'setup' }
TExperimentLogger >> setupLoggerAfterSurvey: aSurvey [

	self explicitRequirement 
]

{ #category : 'setup' }
TExperimentLogger >> setupLoggerBeforeSurvey: aSurvey [

	self explicitRequirement "self forceLoggingFileNameFor: aTask."
]

{ #category : 'setup' }
TExperimentLogger >> setupLoggerForTask: aTask [

	self explicitRequirement 
]
