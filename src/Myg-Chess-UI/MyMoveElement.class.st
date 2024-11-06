Class {
	#name : 'MyMoveElement',
	#superclass : 'BlElement',
	#instVars : [
		'move',
		'group',
		'moveButtons'
	],
	#category : 'Myg-Chess-UI',
	#package : 'Myg-Chess-UI'
}

{ #category : 'accessing' }
MyMoveElement class >> move: aMove [

	^ self basicNew
		  move: aMove;
		  initialize;
		  yourself
]

{ #category : 'accessing' }
MyMoveElement >> group: aGroup [

	group := aGroup.
	moveButtons do: [ :e | aGroup register: e ]
]

{ #category : 'initialization' }
MyMoveElement >> initialize [

	| moveNumberLabel whiteMoveLabel blackMoveLabel |
	moveButtons := OrderedCollection new.
	
	super initialize.
	self layout: BlLinearLayout horizontal.
	self margin: (BlInsets all: 5).
	self constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal fitContent ].

	moveNumberLabel := BlTextElement new.
	moveNumberLabel text: move number asString asRopedText.
	moveNumberLabel constraintsDo: [ :c | 
		c linear vertical alignCenter.
		c horizontal exact: 30 ].

	whiteMoveLabel := ToToggleButton new.
	whiteMoveLabel size: 30 @ 20.
	whiteMoveLabel labelText: move white asString asRopedText.
	moveButtons add: whiteMoveLabel.

	blackMoveLabel := ToToggleButton new.
	blackMoveLabel size: 30 @ 20.
	blackMoveLabel labelText: move black asString asRopedText.
	moveButtons add: blackMoveLabel.
	blackMoveLabel addStamp: #link.

	

	self addChild: moveNumberLabel.
	self addChild: whiteMoveLabel.
	self addChild: blackMoveLabel.

	moveNumberLabel constraintsDo: [ :c | c ignored vertical alignCenter ]
]

{ #category : 'accessing' }
MyMoveElement >> move: aMyMove [ 
	move := aMyMove
]
