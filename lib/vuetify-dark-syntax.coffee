module.exports =
  activate: (state) ->
    @updateSettings()

    atom.config.onDidChange 'vuetify-dark-syntax.dropShadow', =>
      @updateSettings()

  clearSettings: ->
    document.documentElement.classList.remove 'syntax--drop-shadow'

  updateSettings: ->
    @clearSettings()

    dropShadow = atom.config.get 'vuetify-dark-syntax.dropShadow'

    if dropShadow
      document.documentElement.classList.add 'syntax--drop-shadow'

  deactivate: ->
    @clearSettings()
