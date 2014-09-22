angular.module("todoApp").directive "quarterIncrement", ->
  require: "ngModel"
  link: (scope, elm, attrs, ctrl) ->
    ctrl.$parsers.unshift (viewValue) ->
      INTEGER_REGEXP = /^\-?\d+$/
      multiple = 0.25
      testRemainder = ->
        remainder = viewValue / 0.25
        remainder

      if INTEGER_REGEXP.test(testRemainder())
        
        # it is valid
        ctrl.$setValidity "quarter", true
        viewValue
      else
        
        # it is invalid, return undefined (no model update)
        ctrl.$setValidity "quarter", false
        `undefined`

    return