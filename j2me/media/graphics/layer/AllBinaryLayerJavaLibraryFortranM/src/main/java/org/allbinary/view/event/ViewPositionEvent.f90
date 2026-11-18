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
! package org.allbinary.view.event
module ViewPositionEvent_m
  use JR_m
  use AllBinaryEventObject_m
  implicit none

  type, extends(AllBinaryEventObject) :: ViewPositionEvent
  end type


contains

  function ViewPositionEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ViewPositionEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ViewPositionEvent)
      jresult => object
    end select
  end function

  recursive function ViewPositionEvent_jnew_1(j_anyType) result(this)
    class(JObject), target, optional :: j_anyType
    class(ViewPositionEvent), pointer :: this
    allocate(this)
    this%jclass = 'ViewPositionEvent'
        continue ! super()
  end function
end module ViewPositionEvent_m

