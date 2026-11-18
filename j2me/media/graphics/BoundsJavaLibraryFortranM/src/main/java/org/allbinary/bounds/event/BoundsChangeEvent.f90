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
! package org.allbinary.bounds.event
module BoundsChangeEvent_m
  use JR_m
  use Rectangle_m
  use AllBinaryEventObject_m
  implicit none

  type, extends(AllBinaryEventObject) :: BoundsChangeEvent
  contains
    procedure :: jm_getRectangle_0 => BoundsChangeEvent_jm_getRectangle_0
  end type


contains

  function BoundsChangeEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BoundsChangeEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BoundsChangeEvent)
      jresult => object
    end select
  end function

  recursive function BoundsChangeEvent_jnew_1(j_rectangle) result(this)
    class(Rectangle), target, optional :: j_rectangle
    class(BoundsChangeEvent), pointer :: this
    allocate(this)
    this%jclass = 'BoundsChangeEvent'
        continue ! super()
  end function

  recursive function BoundsChangeEvent_jm_getRectangle_0(this) result(jresult)
    class(BoundsChangeEvent), target :: this
    class(Rectangle), pointer :: jresult
        jresult => Rectangle_jcast(this%jm_getSource_0())
        return
  end function
end module BoundsChangeEvent_m

