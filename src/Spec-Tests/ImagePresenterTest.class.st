Class {
	#name : #ImagePresenterTest,
	#superclass : #SpecTestCase,
	#category : #'Spec-Tests-Core-Widgets'
}

{ #category : #accessing }
ImagePresenterTest >> classToTest [
	^ ImagePresenter
]

{ #category : #tests }
ImagePresenterTest >> testSwitchAutoScale [
	| autoState |
	autoState := testedInstance autoScale.
	testedInstance switchAutoscale.
	self assert: testedInstance autoScale equals: autoState not
]
