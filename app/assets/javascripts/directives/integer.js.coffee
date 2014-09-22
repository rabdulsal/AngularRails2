angular.module("todoApp").directive "integer", ->
  require: "ngModel"
  link: (scope, elm, attrs, ctrl) ->
    ctrl.$parsers.unshift (viewValue) ->
      INTEGER_REGEXP = /^\-?\d+$/
      if INTEGER_REGEXP.test(viewValue)
        
        # it is valid
        ctrl.$setValidity "integer", true
        viewValue
      else
        
        # it is invalid, return undefined (no model update)
        ctrl.$setValidity "integer", false
        `undefined`

    return