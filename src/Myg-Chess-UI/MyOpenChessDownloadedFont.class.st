"
I'm (a particular version of) the 'Noto Color Emoji' font.

Thee the `baseUrl`.
"
Class {
	#name : 'MyOpenChessDownloadedFont',
	#superclass : 'AeDownloadedFont',
	#category : 'Myg-Chess-UI',
	#package : 'Myg-Chess-UI'
}

{ #category : 'accessing' }
MyOpenChessDownloadedFont >> baseUrl [

	^ 'https://github.com/joshwalters/open-chess-font/raw/master/'
]

{ #category : 'accessing' }
MyOpenChessDownloadedFont >> familyName [
	
	^ 'OpenChessFont' asLowercase
]

{ #category : 'accessing' }
MyOpenChessDownloadedFont >> fileName [
	
	^ 'OpenChessFont.ttf'
]
