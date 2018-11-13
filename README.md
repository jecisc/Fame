# Fame
Temporary fork of Moose's fame

## Description

Fame is an meta-modelling framework for executable models.

## Installation

To install Fame on your Pharo image you can just execute the following script:

```Smalltalk
    Metacello new
    	githubUser: 'jecisc' project: 'Fame' commitish: 'v1.x.x' path: 'src';
    	baseline: 'Fame';
    	load
```

To add Fame to your baseline just add this:

```Smalltalk
    spec
    	baseline: 'Fame'
    	with: [ spec repository: 'github://jecisc/Fame:v1.x.x/src' ]
```

Note that you can replace the #v1.x.x by a branch as #master or #development or a tag as #v1.0.0, #v1.? or #v1.2.x.

## Official repositories

The official version is stored at: https://github.com/moosetechnology/Moose 

The old repository comes from: http://smalltalkhub.com/#!/~Moose/Fame