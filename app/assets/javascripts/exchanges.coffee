$(document).ready ->
  $("#amount").focus()

  $("#btnClean").click () ->
    $("#source_currency").val('BRL')
    $("#target_currency").val('USD')
    $("#amount").val('')
    $("#result").val('')
    $("#amount").focus()

  $("#btnInvert").click () ->
    source_currency = $("#source_currency").val()
    target_currency = $("#target_currency").val()
    $("#source_currency").val(target_currency)
    $("#target_currency").val(source_currency)
    get_convert()
    get_bitcoin()

  $("#source_currency").change (e) ->
    amount = $("#amount").val()
    if amount > 0
      get_convert()
      get_bitcoin()

  $("#target_currency").change (e) ->
    amount = $("#amount").val()
    if amount > 0
      get_convert()
      get_bitcoin()

  $("#target_currency_bitcoin").change (e) ->
    amount = $("#amount").val()
    if amount > 0
      get_bitcoin()

  $("#amount").keyup (e) ->
    if e.which > 47 || e.which < 58
      get_convert()
      get_bitcoin()

  get_convert = () ->
    $.ajax '/convert',
        type: 'GET'
        dataType: 'json'
        data: {
                source_currency: $("#source_currency").val(),
                target_currency: $("#target_currency").val(),
                amount: $("#amount").val()
              }
        error: (jqXHR, textStatus, errorThrown) ->
          alert textStatus
        success: (data, text, jqXHR) ->
          $('#result').val(data.value)
      return false;

  get_bitcoin = () ->
    $.ajax '/bitcoin',
        type: 'GET'
        dataType: 'json'
        data: {
                source_currency: $("#source_currency").val(),
                target_currency: $("#target_currency_bitcoin").val(),
                amount: $("#amount").val()
              }
        error: (jqXHR, textStatus, errorThrown) ->
          alert textStatus
        success: (data, text, jqXHR) ->
          $('#result_coin').val(data.value)
      return false;