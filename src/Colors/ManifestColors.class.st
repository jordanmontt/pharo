"
Support for colors and color maps
"
Class {
	#name : #ManifestColors,
	#superclass : #PackageManifest,
	#category : #'Colors-Manifest'
}

{ #category : #'meta-data - dependency analyser' }
ManifestColors class >> manuallyResolvedDependencies [
	^ #(#'Collections-Streams')
]
