Class {
	#name : 'MyMoveList',
	#superclass : 'Object',
	#instVars : [
		'moves'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyMoveList class >> startingAt: aNumber [

	^ self new
		  initialMoveAt: aNumber;
		  yourself
]

{ #category : 'adding' }
MyMoveList >> addSANMoveText: moveText [ 
	
	"Expected: SAN = Standard Algebraic Notation"
	self currentMove addHalfMove: moveText
]

{ #category : 'initialization' }
MyMoveList >> basicAddNewMove [
	
	moves add: (self newMoveNumber: self currentMoveNumber + 1)
]

{ #category : 'accessing' }
MyMoveList >> currentBlackMove [
	
	^ self currentMove black
]

{ #category : 'accessing' }
MyMoveList >> currentMove [
	
	^ moves last
]

{ #category : 'accessing' }
MyMoveList >> currentMoveNumber [
	
	moves ifEmpty: [ ^ 0 ].
	^ self currentMove number
]

{ #category : 'initialization' }
MyMoveList >> initialMoveAt: aNumber [

	moves := OrderedCollection new.
	moves add: (self newMoveNumber: aNumber)
]

{ #category : 'initialization' }
MyMoveList >> initialize [

	super initialize.
	self initialMoveAt: 1
]

{ #category : 'accessing' }
MyMoveList >> lastBlackMoveText [
	
	"The move list represents turns and advances automatically when moves are done.
	This means that when black makes it's half-move, a new move is added.
	
	In other words, the current move always has an empty black move.
	The last black move is found in the previous move"
	
	^ self previousMove black
]

{ #category : 'accessing' }
MyMoveList >> lastWhiteMove [

	^ self currentMove white
]

{ #category : 'accessing' }
MyMoveList >> moves [
	^ moves
]

{ #category : 'enumerating' }
MyMoveList >> movesDo: aFullBlockClosure [

	moves do: aFullBlockClosure
]

{ #category : 'initialization' }
MyMoveList >> newMoveNumber: aMoveNumber [

	^ MyMove list: self number: aMoveNumber
]

{ #category : 'accessing' }
MyMoveList >> previousMove [
	
	^ moves nextToLast
]

{ #category : 'accessing' }
MyMoveList >> turn [
	
	^ self currentMove turn
]
