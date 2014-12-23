$ ->
  getSelectionText = ->
    text = ""
    if window.getSelection
      text = window.getSelection().toString()
    else text = document.selection.createRange().text  if document.selection and document.selection.type isnt "Control"
    text

  $('#revex-container').mouseup ->
    selection = getSelectionText()
