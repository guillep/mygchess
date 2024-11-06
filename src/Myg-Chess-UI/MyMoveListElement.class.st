Class {
	#name : 'MyMoveListElement',
	#superclass : 'BlElement',
	#instVars : [
		'scrollingPane'
	],
	#category : 'Myg-Chess-UI',
	#package : 'Myg-Chess-UI'
}

{ #category : 'initialization' }
MyMoveListElement >> addMoveElement: moveElement [

	scrollingPane addChild: moveElement
]

{ #category : 'initialization' }
MyMoveListElement >> initialize [

	super initialize.
	self layout: BlLinearLayout vertical.
	scrollingPane := BlScrollableElement new
		                 constraintsDo: [ :c |
			                 c horizontal matchParent.
			                 c vertical matchParent ];
		                 yourself.
	self addChild: scrollingPane
]
