# generate-gitignore

Generates a ```.gitignore``` file from a list of keywords/technologies.

## How to Use

First, clone this repo.

### What technologies are supported?

Execute:

```
   generate-gitignore.sh --keywords
```

This will show you the list of keywords you can choose from (case-sensitive).  Something like:

```
... Possible keywords:
Actionscript Ada Agda Android Anjuta Ansible AppceleratorTitanium AppEngine Archives ArchLinuxPackages AtmelStudio Autotools Backup Bazaar Bazel Bitrix BricxCC C C++ CakePHP Calabash CFWheels ChefCookbook Clojure Cloud9 CMake CodeIgniter CodeKit CodeSniffer CommonLisp Composer Concrete5 Coq Cordova CraftCMS CUDA CVS D Dart DartEditor Delphi Diff DM Dreamweaver Dropbox Drupal Drupal7 Eagle Eclipse EiffelStudio Elisp Elixir Elm Emacs Ensime EPiServer Erlang Espresso Exercism ExpressionEngine ExtJs Fancy Finale FlexBuilder ForceDotCom Fortran FuelPHP Gcov GitBook Go Godot GPG Gradle Grails GWT Haskell Hugo IAR_EWARM Idris IGORPro Images InforCMS Java JBoss JBoss4 JBoss6 JDeveloper Jekyll JENKINS_HOME JEnv JetBrains Joomla Julia JupyterNotebooks Kate KDevelop4 Kentico KiCad Kohana Kotlin LabVIEW Laravel Lazarus Leiningen LemonStand LibreOffice Lilypond Linux Lithium Logtalk Lua LyX macOS Magento Magento1 Magento2 MATLAB Maven Mercurial Mercury MetaProgrammingSystem Meteor MicrosoftOffice ModelSim Momentics MonoDevelop Nanoc NetBeans Nikola Nim Ninja Node NotepadPP Nuxt NWjs Objective-C OCaml Octave Opa OpenCart OracleForms Otto Packer Patch Perl Perl6 Phalcon Phoenix Pimcore PlayFramework Plone Prestashop Processing PSoCCreator Puppet PureScript PuTTY Python Qooxdoo Qt R Racket Rails Red Redcar Redis RhodesRhomobile ROS Ruby Rust Sass SBT Scala Scheme SCons Scrivener Sdcc SeamGen SketchUp SlickEdit Smalltalk Snap Splunk Stata Stella SublimeText SugarCRM SVN Swift Symfony SymphonyCMS SynopsysVCS Tags Terraform TeX TextMate Textpattern ThinkPHP TortoiseGit TurboGears2 Typo3 Umbraco Unity UnrealEngine Vagrant Vim VirtualEnv Virtuoso VisualStudio VisualStudioCode Vue VVVV Waf WebMethods Windows WordPress Xcode Xilinx XilinxISE Xojo Yeoman Yii ZendFramework Zephir
```

### How to generate ```.gitignore``` file

To generate a ```.gitignore``` file, execute, for example:

```
   generate-gitignore.sh Java Eclipse Emacs
```

You'll now have a ```/tmp/generated.gitignore``` file which you can then copy to ```~/.gitignore```.

### What if you don't have a ```/tmp``` directory?

You can edit ```generate-gitignore.sh``` and modify ```tempDir``` to point somewhere else.

# Acknowledgements

This generator uses https://github.com/github/gitignore as input to generate a merged ```.gitignore``` file.

After I created this, I found https://www.gitignore.io which does the same thing from a web page.
