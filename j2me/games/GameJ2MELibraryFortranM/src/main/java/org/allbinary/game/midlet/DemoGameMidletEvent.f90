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
! package org.allbinary.game.midlet
module DemoGameMidletEvent_m
  use JR_m
  use AllBinaryEventObject_m
  use DemoGameMidletState_m
  implicit none

  type, extends(AllBinaryEventObject) :: DemoGameMidletEvent
    class(DemoGameMidletState), pointer :: f_demoGameMidletState => null()
  contains
    procedure :: jm_init_1 => DemoGameMidletEvent_jm_init_1
    procedure :: jm_setDemoGameMidletState_1 => DemoGameMidletEvent_jm_setDemoGameMidletState_1
    procedure :: jm_getDemoGameMidletState_0 => DemoGameMidletEvent_jm_getDemoGameMidletState_0
  end type


contains

  function DemoGameMidletEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DemoGameMidletEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DemoGameMidletEvent)
      jresult => object
    end select
  end function

  recursive function DemoGameMidletEvent_jnew_2(j_anyType, j_demoGameMidletState) result(this)
    class(JObject), target, optional :: j_anyType
    class(DemoGameMidletState), target, optional :: j_demoGameMidletState
    class(DemoGameMidletEvent), pointer :: this
    allocate(this)
    this%jclass = 'DemoGameMidletEvent'
    
        continue ! super()
        this%f_demoGameMidletState => j_demoGameMidletState
  end function

  recursive subroutine DemoGameMidletEvent_jm_init_1(this, j_anyType)
    class(DemoGameMidletEvent), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setSource_1(j_anyType)
  end subroutine

  recursive subroutine DemoGameMidletEvent_jm_setDemoGameMidletState_1(this, j_demoGameMidletState)
    class(DemoGameMidletEvent), target :: this
    class(DemoGameMidletState), target, optional :: j_demoGameMidletState
        this%f_demoGameMidletState => j_demoGameMidletState
  end subroutine

  recursive function DemoGameMidletEvent_jm_getDemoGameMidletState_0(this) result(jresult)
    class(DemoGameMidletEvent), target :: this
    class(DemoGameMidletState), pointer :: jresult
        jresult => this%f_demoGameMidletState
        return
  end function
end module DemoGameMidletEvent_m

