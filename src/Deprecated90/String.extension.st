Extension { #name : #String }

{ #category : #'*Deprecated90' }
String >> convertFromEncoding: encodingName [
	^self convertFromWithConverter: (TextConverter newForEncoding: encodingName)
]

{ #category : #'*Deprecated90' }
String >> convertFromWithConverter: converter [

	| readStream c |
	readStream := self readStream.
	^ self species new: self size streamContents: [ :writeStream|
		converter ifNil: [^ self].
		[readStream atEnd] whileFalse: [
			c := converter nextFromStream: readStream.
			c
				ifNotNil: [writeStream nextPut: c] 
				ifNil: [^ writeStream contents]]].

]

{ #category : #'*Deprecated90' }
String >> convertToEncoding: encodingName [
	^self convertToWithConverter: (TextConverter newForEncoding: encodingName).
]

{ #category : #'*Deprecated90' }
String >> convertToWithConverter: converter [ 
	converter
		ifNil: [^ self].
	^ String new: self size streamContents: [:writeStream | 
		converter 
			nextPutAll: self toStream: writeStream;
			emitSequenceToResetStateIfNeededOn: writeStream]
]

{ #category : #'*Deprecated90' }
String >> leadingCharRunLengthAt: index [

	| leadingChar |
	leadingChar := (self at: index) leadingChar.
	index to: self size do: [:i |
		(self at: i) leadingChar ~= leadingChar ifTrue: [^ i - index].
	].
	^ self size - index + 1.

]

{ #category : #'*Deprecated90' }
String >> withSqueakLineEndings [
	"Answer a new instance where all occurrences of CRLF and LF are substituted with CR."
	
	self
		deprecated: 'Should use withInternalLineEndings instead'
		on: '30 October 2020'
		in: #Pharo9
		transformWith: '`@rec withSqueakLineEndings' -> '`@rec withInternalLineEndings'.
	
	^ self withInternalLineEndings
]
