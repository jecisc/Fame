"
Baseline for the Fame project.
"
Class {
	#name : #BaselineOfFame,
	#superclass : #BaselineOf,
	#category : #BaselineOfFame
}

{ #category : #baseline }
BaselineOfFame >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			"Dependencies"
			self
				hashtable: spec;
				mocketry: spec;
				stateSpecs: spec.
				
			"Packages"
			spec
				package: 'Fame-Core' with: [ spec requires: #('Hashtable' 'StateSpecs') ];
				package: 'Fame-Util';
				package: 'Fame-ImportExport' with: [ spec requires: #('Fame-Core') ];
				package: 'Fame-SmalltalkBinding' with: [ spec requires: #('Fame-Core') ];
				package: 'Fame-Example';
				package: 'Fame-Tests-Core' with: [ spec requires: #('Fame-Core' 'Fame-Example' 'Mocketry') ].

			"Groups"
			spec
				group: 'Core' with: #('Fame-Core' 'Fame-ImportExport' 'Fame-Util' 'Fame-SmalltalkBinding');
				group: 'Tests' with: #('Fame-Tests-Core') ]
]

{ #category : #dependencies }
BaselineOfFame >> hashtable: spec [
	spec baseline: 'Hashtable' with: [ spec repository: 'github://jecisc/Hashtable:v1.x.x/src' ]
]

{ #category : #dependencies }
BaselineOfFame >> mocketry: spec [
	spec baseline: 'Mocketry' with: [ spec repository: 'github://dionisiydk/Mocketry:v4.0.x' ]
]

{ #category : #dependencies }
BaselineOfFame >> stateSpecs: spec [
	spec baseline: 'StateSpecs' with: [ spec repository: 'github://dionisiydk/StateSpecs:v2.4.x' ]
]
