Class {
	#name : 'MyMove',
	#superclass : 'Object',
	#instVars : [
		'number',
		'white',
		'black',
		'moveList'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyMove class >> list: aList number: number [

	^ self new
		  list: aList;
		  number: number;
		  yourself
]

{ #category : 'adding' }
MyMove >> addHalfMove: aString [ 
	
	"
	If white to play, add it to white
	If black to play, add to black and add a new move"
	
	white ifNil: [ 
		white := aString.
		^ self ].
	black := aString.
	moveList basicAddNewMove.
	
]

{ #category : 'api - text weight' }
MyMove >> black [
	
	^ black
]

{ #category : 'accessing' }
MyMove >> blackMoveText [
	self shouldBeImplemented.
]

{ #category : 'accessing' }
MyMove >> displayStringOn: aStream [

	aStream print: number.
	aStream nextPut: $..
	white ifNotNil: [
		aStream
			nextPutAll: ' ';
			nextPutAll: white ].
	black ifNotNil: [
		aStream
			nextPutAll: ' ';
			nextPutAll: black ]
]

{ #category : 'accessing' }
MyMove >> list: aMyMoveList [

	moveList := aMyMoveList
]

{ #category : 'accessing' }
MyMove >> number [
	^ number
]

{ #category : 'api' }
MyMove >> number: anInteger [

	number := anInteger
]

{ #category : 'accessing' }
MyMove >> turn [

	^ white ifNil: [ #white ] ifNotNil: [ #black ]
]

{ #category : 'constants' }
MyMove >> white [

	^ white
]

{ #category : 'accessing' }
MyMove >> whiteMoveText [
	
	"Double accessor, move representation will probably change in the future."
	^ self white
]
