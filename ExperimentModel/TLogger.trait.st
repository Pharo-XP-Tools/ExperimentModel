"
Common API for DSSpy surveys
"
Trait {
	#name : 'TLogger',
	#category : 'ExperimentModel',
	#package : 'ExperimentModel'
}

{ #category : 'logging' }
TLogger >> log: aDSEventRecord [

	self explicitRequirement 
]

{ #category : 'initialization' }
TLogger >> reset [

	self explicitRequirement 
]

{ #category : 'setup' }
TLogger >> setupLoggerAfterSurvey: aSurvey [

	self explicitRequirement 
]

{ #category : 'setup' }
TLogger >> setupLoggerBeforeSurvey: aSurvey [

	self explicitRequirement "self forceLoggingFileNameFor: aTask."
]

{ #category : 'setup' }
TLogger >> setupLoggerForTask: aTask [

	self explicitRequirement 
]
