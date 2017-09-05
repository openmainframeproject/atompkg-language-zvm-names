
# Change summary
# - Generated by atom-package-generator
# - Customized the generated text to be more useful.
# - Added "clickToHide" + tabIndex

module.exports =
class LanguageZvmNamesView
  constructor: (serializedState) ->
    # Create root element
    @element = document.createElement('div')
    @element.classList.add('language-zvm-names')
    @element.tabIndex = "-1" # Ensure element can gain focus, so blur/etc work

    # Create message element
    message = document.createElement('div')
    message.classList.add('message')
    message.textContent = "This is the modal view from the language-zvm-names package."
    @element.appendChild(message)

    list = document.createElement('ul')
    message.appendChild(list)

    item1 = document.createElement('li')
    item1.textContent = "The package has been activated; NAMES and NAMELIST files should have visible syntax highlighting."
    list.appendChild(item1)

    item2 = document.createElement('li')
    item2.textContent = "Run language-zvm-names:Toggle again to remove this view."
    list.appendChild(item2)

    item3 = document.createElement('li')
    item3.textContent = "Package settings can be found on the File > Settings > Packages menu.  Filter on 'zvm' or the full package name."
    list.appendChild(item3)

  # Click to hide the view
  # "panel", at run time, will be the Panel encapsulating this View.
  clickToHide: (panel) ->
    @panel = panel
    # Click ON the content, and it disappears
    @element.addEventListener 'click',(event) =>
        # console.log 'LanguageZvmNamesView click event fired'
        @panel.hide()
    # Click OFF (away from) the content, and it disappears
    @element.addEventListener 'blur',(event) =>
        # console.log 'LanguageZvmNamesView blur event fired'
        @panel.hide()
  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @element.remove()

  getElement: ->
    @element
