!
! AllBinary Open License Version 1
! Copyright (c) 2011 AllBinary
! 
! By agreeing to this license you and any business entity you represent are
! legally bound to the AllBinary Open License Version 1 legal agreement.
! 
! You may obtain the AllBinary Open License Version 1 legal agreement from
! AllBinary or the root directory of AllBinary's AllBinary Platform repository.
! 
! Created By: Travis Berthelot
!  
! Generated Code Do Not Modify
! package org.allbinary.graphics.form.item.validation
module UsernameValidator_m
  use JR_m
  use ABTextFieldItem_m
  use TextFieldItemValidator_m
  implicit none

  type, extends(TextFieldItemValidator) :: UsernameValidator
  end type


contains

  function UsernameValidator_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(UsernameValidator), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (UsernameValidator)
      jresult => object
    end select
  end function

  recursive function UsernameValidator_jnew_4(j_textFieldItem, j_min, j_max, j_allowOnEmpty) result(this)
    class(ABTextFieldItem), target, optional :: j_textFieldItem
    integer(4), value :: j_min
    integer(4), value :: j_max
    logical, value :: j_allowOnEmpty
    class(UsernameValidator), pointer :: this
    allocate(this)
    this%jclass = 'UsernameValidator'
        continue ! super()
  end function
end module UsernameValidator_m

