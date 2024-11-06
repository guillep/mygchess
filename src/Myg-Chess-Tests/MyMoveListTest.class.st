Class {
	#name : 'MyMoveListTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests - adding moves' }
MyMoveListTest >> testAddBlackMove [

	| moveList |
	moveList := MyMoveList new.
	moveList addSANMoveText: 'e4'.
	moveList addSANMoveText: 'e5'.
	
	self assert: moveList lastBlackMoveText equals: 'e5'
]

{ #category : 'tests - adding moves' }
MyMoveListTest >> testAddWhiteMove [

	| moveList |
	moveList := MyMoveList new.
	moveList addSANMoveText: 'e4'.
	
	self assert: moveList currentMove whiteMoveText equals: 'e4'
]

{ #category : 'tests - printing' }
MyMoveListTest >> testBlackMoveAsStringContainsMoveNumberAndMove [

	| moveList |
	moveList := MyMoveList new.
	moveList addSANMoveText: 'e4'.
	moveList addSANMoveText: 'e5'.
	self assert: moveList previousMove displayString equals: '1. e4 e5'
]

{ #category : 'tests - printing' }
MyMoveListTest >> testEmptyMoveAsStringContainsMoveNumber [

	| moveList |
	moveList := MyMoveList new.
	self assert: moveList currentMove displayString equals: '1.'
]

{ #category : 'tests - initial state' }
MyMoveListTest >> testInitialBlackMove [

	| moveList |
	moveList := MyMoveList new.
	self assert: moveList currentBlackMove isNil
]

{ #category : 'tests - initial state' }
MyMoveListTest >> testInitialWhiteMove [

	| moveList |
	moveList := MyMoveList new.
	self assert: moveList lastWhiteMove isNil
]

{ #category : 'tests - initial state' }
MyMoveListTest >> testMoveListStartsAtOne [

	| moveList |
	moveList := MyMoveList new.
	self assert: moveList currentMoveNumber equals: 1
]

{ #category : 'tests - initial state' }
MyMoveListTest >> testStartingAt5 [

	| moveList |
	moveList := MyMoveList startingAt: 5.
	self assert: moveList currentMoveNumber equals: 5
]

{ #category : 'tests - printing' }
MyMoveListTest >> testWhiteMoveAsStringContainsMoveNumberAndMove [

	| moveList |
	moveList := MyMoveList new.
	moveList addSANMoveText: 'e4'.
	self assert: moveList currentMove displayString equals: '1. e4'
]

{ #category : 'tests - adding moves' }
MyMoveListTest >> testWhoPlaysBlack [

	| moveList |
	moveList := MyMoveList new.
	moveList addSANMoveText: 'e4'.
	
	self assert: moveList turn equals: #black
]

{ #category : 'tests - adding moves' }
MyMoveListTest >> testWhoPlaysFirst [

	| moveList |
	moveList := MyMoveList new.
	
	self assert: moveList turn equals: #white
]

{ #category : 'tests - adding moves' }
MyMoveListTest >> testWhoPlaysWhite [

	| moveList |
	moveList := MyMoveList new.
	moveList addSANMoveText: 'e4'.
	moveList addSANMoveText: 'e5'.


	self assert: moveList turn equals: #white
]
