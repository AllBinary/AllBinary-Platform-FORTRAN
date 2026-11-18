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
! package org.allbinary.game.configuration.event
module GameFeatureEvent_m
  use JR_m
  use AllBinaryEventObject_m
  implicit none

  type, extends(AllBinaryEventObject) :: GameFeatureEvent
    character(len=:), allocatable :: f_whatChanged
  contains
    procedure :: jm_getWhatChanged_0 => GameFeatureEvent_jm_getWhatChanged_0
    procedure :: jm_getGameOption_0 => GameFeatureEvent_jm_getGameOption_0
  end type


contains

  function GameFeatureEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameFeatureEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameFeatureEvent)
      jresult => object
    end select
  end function

  recursive function GameFeatureEvent_jnew_2(j_anyType, j_whatChanged) result(this)
    class(JObject), target, optional :: j_anyType
    character(len=*), intent(in) :: j_whatChanged
    class(GameFeatureEvent), pointer :: this
    allocate(this)
    this%jclass = 'GameFeatureEvent'
    this%f_whatChanged = ''
    
        continue ! super()
        this%f_whatChanged = j_whatChanged
  end function

  recursive function GameFeatureEvent_jm_getWhatChanged_0(this) result(jresult)
    class(GameFeatureEvent), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_whatChanged
        return
  end function

  recursive function GameFeatureEvent_jm_getGameOption_0(this) result(jresult)
    class(GameFeatureEvent), target :: this
    class(JObject), pointer :: jresult
        jresult => this%jm_getSource_0()
        return
  end function
end module GameFeatureEvent_m

