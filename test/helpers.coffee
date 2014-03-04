this.TestHelpers = 
  inputElement: (type, name, value='') ->
    input = document.createElement 'input'
    input.type = type
    input.name = name
    input.value = value
    input
  
  selectElement: (name, multiple = false, options...) ->
    select = document.createElement 'select'
    select.name = name
    select.multiple = multiple

    for option in options 
      do (option) ->
        opt = document.createElement 'option'
        opt.value = option.value
        opt.selected = true if option.selected
        opt.text = option.value
        select.appendChild opt

    select