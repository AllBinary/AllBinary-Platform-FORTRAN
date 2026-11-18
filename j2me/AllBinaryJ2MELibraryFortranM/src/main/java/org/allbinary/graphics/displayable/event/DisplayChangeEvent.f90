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
! package org.allbinary.graphics.displayable.event
module DisplayChangeEvent_m
  use JR_m
  use AllBinaryEventObject_m
  implicit none

  type, extends(AllBinaryEventObject) :: DisplayChangeEvent
  end type


contains

  function DisplayChangeEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DisplayChangeEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DisplayChangeEvent)
      jresult => object
    end select
  end function

  recursive function DisplayChangeEvent_jnew_1(j_anyType) result(this)
    class(JObject), target, optional :: j_anyType
    class(DisplayChangeEvent), pointer :: this
    allocate(this)
    this%jclass = 'DisplayChangeEvent'
        continue ! super()
  end function
end module DisplayChangeEvent_m

