
function hideEnlargeIcon() {
  $('enlargeicon').hide();
}
function showEnlargeIcon() {
  $('enlargeicon').show();
}

/****************

Guest Book page

*****************/

function saveGuestbookEntry(url, divId) {
  // validate form first
  if (!validateGuestbookForm()) {
    return;
  }

  // make ajax call to save guestbook entry
  new Ajax.Request(url,
                   {
                      method: 'post',
                      parameters: $('guestbook-form').serialize(true),
                      onSuccess: function(transport)
                                 {
                                    // hide form
                                    toggleGuestbookForm();
                                    // put newly inserted entry on top
                                    $(divId).insert({top : transport.responseText});
                                    // clear form fields
                                    clearGuestbookFields();
                                 },
                      // Set the correct header in order to avoid caching in IE
                      requestHeaders: ["If-Modified-Since", "Thu, 1 Jan 1970 00:00:00 GMT"]
                   }
                  );
}

function validateGuestbookForm() {

  // name is required
  if ($F('name').blank()) {
    alert('Why so secretive with your name?');
    return false;
  }

  // message is required
  if ($F('message').blank()) {
    alert('Um, say something nice!');
    return false;
  }

  // validation passed
  return true;

}

function toggleGuestbookForm() {
  // toggle guest book form
  //$('guestbook-form-div').toggle();
  Effect.toggle('guestbook-form-div', 'slide', {queue: {position:'end', scope: 'guestbook'} });
  // put focus on 'name' field
  // Form.Element.focus('name');
  // toggle button message
  if ($('guestbook-toggle').getValue() == 'Sign Guest Book') {
    $('guestbook-toggle').value = 'Nevermind';
  } else {
    $('guestbook-toggle').value = 'Sign Guest Book';
  }
}

function clearGuestbookFields() {
  $('name').clear();
  $('location').clear();
  $('message').clear();
}

/***********

RSVP page

************/

function rsvp(url) {
  // validate form first
  if (!validateRSVPForm()) {
    return;
  }

  // make ajax call to save guestbook entry
  new Ajax.Request(url,
                   {
                      method: 'post',
                      parameters: $('rsvp-form').serialize(true),
                      onSuccess: function(transport)
                                 {
                                    // hide form
                                    hideRSVPForm();
                                 },
                      // Set the correct header in order to avoid caching in IE
                      requestHeaders: ["If-Modified-Since", "Thu, 1 Jan 1970 00:00:00 GMT"]
                   }
                  );
}

function validateRSVPForm() {

  // name is required
  if ($F('name').blank()) {
    alert('What\'s your name?');
    return false;
  }

  // message is required
  attending = $RF('rsvp-form', 'attending');
  if (attending == null) {
    alert('So are you coming or not?');
    return false;
  }

  // message is required
  entree = $RF('rsvp-form', 'entree');
  if (attending == 'Y' && entree == null) {
    alert('Chicken or Fish buddy?');
    return false;
  }

  // validation passed
  return true;

}

function hideRSVPForm() {
  // fade form
  Effect.Fade('rsvp-form-div', {queue: {position:'end', scope: 'rsvp'} });
  // show message
  Effect.Appear('rsvp-message', {queue: {position:'end', scope: 'rsvp'} });
  // clear form fields
  clearRSVPFields();
}

function showRSVPForm() {
  // fade message
  Effect.Fade('rsvp-message', {queue: {position:'end', scope: 'rsvp'} });
  // show form
  Effect.Appear('rsvp-form-div', {queue: {position:'end', scope: 'rsvp'} });
}

function clearRSVPFields() {
  $('name').clear();
  clearRadioGroup('rsvp-form', 'attending');
  clearRadioGroup('rsvp-form', 'entree');
}

function disableEntreeFields() {
  $('chicken_entree').disable();
  $('fish_entree').disable();
  clearRadioGroup('rsvp-form', 'entree');
}

function enableEntreeFields() {
  $('chicken_entree').enable();
  $('fish_entree').enable();
}


function clearRadioGroup(formId, radioGroup) {
    $(formId).getInputs('radio', radioGroup).each(function(re) {re.checked = false;});
}

/**
* Returns the value of the selected radio button in the radio group, null if
* none are selected
*
* @param {form Object} or {form id} el
* @param {radio group name} radioGroup
*/
function $RF(formId, radioGroup) {
    var checked = $(formId).getInputs('radio', radioGroup).find(function(re) {return re.checked;});
    return (checked) ? $F(checked) : null;
}