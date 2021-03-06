"
I am a raw data layout that holds double bytes (16 bits).
"
Class {
	#name : #DoubleByteLayout,
	#superclass : #BitsLayout,
	#category : #'Kernel-Layout'
}

{ #category : #'methodsFor:' }
DoubleByteLayout class >> extending: superLayout scope: aScope host: aClass [
	^ superLayout extendDoubleByte
		host: aClass;
		yourself
]

{ #category : #description }
DoubleByteLayout class >> kind [ 
	^ #variableDoubleByte
]

{ #category : #accessing }
DoubleByteLayout >> bytesPerSlot [

	^ 2
]

{ #category : #extending }
DoubleByteLayout >> extendDoubleByte [
	^ DoubleByteLayout new
]

{ #category : #format }
DoubleByteLayout >> instanceSpecification [
	^ 12
]

{ #category : #testing }
DoubleByteLayout >> isDoubleBytes [
	^ true
]

{ #category : #accessing }
DoubleByteLayout >> kindOfSubclass [
	^' variableDoubleByteSubclass: '
]
