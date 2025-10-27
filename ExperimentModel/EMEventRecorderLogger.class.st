"
I know how to collect and send data to experimental Inria servers.

I need to be correctly initialized to work properly:
- set my project name (a string)
- set my participant uuid (a String)
- set my experience name (a string)
- set my task or survey id

Server-side, the data will be stored in a directory such as:
/project/experience/uuid/taskOrSurvey/
"
Class {
	#name : 'EMEventRecorderLogger',
	#superclass : 'Object',
	#traits : 'TLogger',
	#classTraits : 'TLogger classTrait',
	#instVars : [
		'currentExperiment',
		'currentTask',
		'currentSurvey',
		'projectName',
		'collector',
		'participantUUID'
	],
	#category : 'ExperimentModel',
	#package : 'ExperimentModel'
}

{ #category : 'logging' }
EMEventRecorderLogger >> authorizeDataSending [

	ERPrivacy sendDiagnosticsAndUsageData: true
]

{ #category : 'accessing' }
EMEventRecorderLogger >> collector [

	^ collector ifNil: [ collector := self newCollector ]
]

{ #category : 'logging' }
EMEventRecorderLogger >> computeLoggingId [ 
	currentSurvey ifNotNil:[^currentSurvey uuid asString].
	currentTask ifNotNil:[^currentTask uuid asString].
	^nil
]

{ #category : 'logging' }
EMEventRecorderLogger >> deliverDataNow [
	PXEventRecorder uniqueInstance deliverNow
]

{ #category : 'initialization' }
EMEventRecorderLogger >> initialize [
	EREventRecorder reset.
	PXEventRecorder reset.
	EREventRecorderSettings url: 'https://rmod-xp.lille.inria.fr/'
]

{ #category : 'logging' }
EMEventRecorderLogger >> log: aDSEventRecord [

	self updateCollector add: aDSEventRecord
]

{ #category : 'collectors' }
EMEventRecorderLogger >> newCollector [
	collector := PXEventCollector new.
	collector category: projectName.
	collector experienceId: currentExperiment experienceId.
	collector participantUUID: participantUUID.
	collector occupant: nil.
	collector register.
	^collector
]

{ #category : 'accessing' }
EMEventRecorderLogger >> participantUUID: anObject [

	participantUUID := anObject
]

{ #category : 'accessing' }
EMEventRecorderLogger >> projectName: anObject [

	projectName := anObject
]

{ #category : 'initialization' }
EMEventRecorderLogger >> reset [
	currentTask := nil
]

{ #category : 'initialization' }
EMEventRecorderLogger >> setExperiment: anExperiment [
	currentExperiment := anExperiment 
]

{ #category : 'setup' }
EMEventRecorderLogger >> setupLoggerAfterSurvey: aSurvey [

	currentSurvey := nil
]

{ #category : 'setup' }
EMEventRecorderLogger >> setupLoggerBeforeSurvey: aSurvey [
	currentSurvey := aSurvey
]

{ #category : 'setup' }
EMEventRecorderLogger >> setupLoggerForTask: aTask [
	currentTask := aTask
]

{ #category : 'collectors' }
EMEventRecorderLogger >> updateCollector [

	^ self newCollector
		  taskOrSurveyId: self computeLoggingId;
		  yourself
]
