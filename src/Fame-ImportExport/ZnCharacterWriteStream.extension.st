Extension { #name : #ZnCharacterWriteStream }

{ #category : #'*Fame-ImportExport' }
ZnCharacterWriteStream >> tab: anInteger [ 
	"Append anInteger tab characters to the receiver."
	
	self next: anInteger put: Character tab
]
