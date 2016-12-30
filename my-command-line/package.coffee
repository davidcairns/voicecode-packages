pack = Packages.register
  name: 'my-command-line'
  description: 'My commands for shell / console usage'
  applications: -> Settings.os.terminalApplications

#
# My custom bits --DRC
#
pack.commands
  'cancel-task':
    spoken: 'cancel'
    description: 'ctrl-C'
    action: ->
      @key 'C', 'Control'

  'tmux:switch-panes':
    spoken: 'quincy'
    description: 'ctrl-q'
    action: ->
      @key 'Q', 'Control'

  'clear-screen':
    spoken: 'nuclear'
    description: 'ctrl-L'
    action: ->
      @key 'L', 'Control'

  'eof-symbol':
    spoken: 'nuke'
    description: 'ctrl-D'
    action: ->
      @key 'D', 'Control'

  'redo':
    spoken: 'reminder'
    description: 'ctrl-R'
    action: ->
      @key 'R', 'Control'


pack.implement
  'cursor:word-right': ->
      @key 'right', 'Option'
  'cursor:word-left': ->
      @key 'left', 'Option'
  'cursor:way-right': ->
      @key 'e', 'Control'
  'cursor:way-left': ->
      @key 'a', 'Control'
