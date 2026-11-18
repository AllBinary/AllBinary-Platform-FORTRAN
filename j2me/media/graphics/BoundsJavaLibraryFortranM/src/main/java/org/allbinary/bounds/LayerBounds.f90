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
! package org.allbinary.bounds
module LayerBounds_m
  use JR_m
  use BoundsChangeEvent_m
  use BoundsChangeEventListener_m
  use Rectangle_m
  use ForcedLogUtil_m
  use LogUtil_m
  use AllBinaryEventObject_m
  use EventStrings_m
  use BoundsVisitorInterface_m
  implicit none

  type, extends(BoundsChangeEventListener) :: LayerBounds
    class(LogUtil), pointer :: f_logUtil => null()
    class(Rectangle), pointer :: f_rectangle => null()
  contains
    procedure :: jm_getRectangleP_0 => LayerBounds_jm_getRectangleP_0
    procedure :: jm_visit_1 => LayerBounds_jm_visit_1
    procedure :: jm_onEvent_1 => LayerBounds_jm_onEvent_1
    procedure :: jm_onBoundsChangeEvent_1 => LayerBounds_jm_onBoundsChangeEvent_1
  end type


contains

  function LayerBounds_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerBounds), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerBounds)
      jresult => object
    end select
  end function

  recursive function LayerBounds_jnew_1(j_rectangle) result(this)
    class(Rectangle), target, optional :: j_rectangle
    class(LayerBounds), pointer :: this
    allocate(this)
    this%jclass = 'LayerBounds'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
        this%f_rectangle => j_rectangle
  end function

  recursive function LayerBounds_jm_getRectangleP_0(this) result(jresult)
    class(LayerBounds), target :: this
    class(Rectangle), pointer :: jresult
        jresult => this%f_rectangle
        return
  end function

  recursive subroutine LayerBounds_jm_visit_1(this, j_boundsVisitorInterface)
    class(LayerBounds), target :: this
    class(BoundsVisitorInterface), target, optional :: j_boundsVisitorInterface
    continue
  end subroutine

  recursive subroutine LayerBounds_jm_onEvent_1(this, j_eventObject)
    class(LayerBounds), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventStrings), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => EventStrings_jm_getInstance_0()
        call ForcedLogUtil_jm_log_2(jtemp1%f_PERFORMANCE_MESSAGE, this)
  end subroutine

  recursive subroutine LayerBounds_jm_onBoundsChangeEvent_1(this, j_boundsChangeEvent)
    class(LayerBounds), target :: this
    class(BoundsChangeEvent), target, optional :: j_boundsChangeEvent
        this%f_rectangle => j_boundsChangeEvent%jm_getRectangle_0()
  end subroutine
end module LayerBounds_m

