$ ->
  selectUserIdentity()

selectUserIdentity = ->
  identityInput = $('#openid_url')
  if identityInput.length > 0
    identityURL = identityInput.val()
    start = identityURL.indexOf("<")
    end = identityURL.indexOf(">")
    identityInput[0].setSelectionRange start, end + 1
