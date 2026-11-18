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
module GameInitializedEvent_m
  use JR_m
  use ResourceLoadingLevel_m
  use ResourceLoadingLevelFactory_m
  use AllBinaryEventObject_m
  implicit none

  type, extends(AllBinaryEventObject) :: GameInitializedEvent
    class(ResourceLoadingLevel), pointer :: f_resourceLoadingLevel => null()
    integer(4) :: f_level = 0
  contains
    procedure :: jm_setLevel_1 => GameInitializedEvent_jm_setLevel_1
    procedure :: jm_getLevel_0 => GameInitializedEvent_jm_getLevel_0
    procedure :: jm_setResourceLoadingLevel_1 => GameInitializedEvent_jm_setResourceLoadingLevel_1
    procedure :: jm_getResourceLoadingLevel_0 => GameInitializedEvent_jm_getResourceLoadingLevel_0
  end type


contains

  function GameInitializedEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInitializedEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInitializedEvent)
      jresult => object
    end select
  end function

  recursive function GameInitializedEvent_jnew_1(j_anyType) result(this)
    class(JObject), target, optional :: j_anyType
    class(GameInitializedEvent), pointer :: this
    class(ResourceLoadingLevelFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'GameInitializedEvent'
    jtemp1 => ResourceLoadingLevelFactory_jm_getInstance_0()
    this%f_resourceLoadingLevel => jtemp1%f_LEVEL_u5
    
        continue ! super()
  end function

  recursive subroutine GameInitializedEvent_jm_setLevel_1(this, j_level)
    class(GameInitializedEvent), target :: this
    integer(4), value :: j_level
    class(ResourceLoadingLevelFactory), pointer :: jtemp2
        this%f_level = j_level
        jtemp2 => ResourceLoadingLevelFactory_jm_getInstance_0()
        this%f_resourceLoadingLevel => jtemp2%f_LEVEL_u5
  end subroutine

  recursive function GameInitializedEvent_jm_getLevel_0(this) result(jresult)
    class(GameInitializedEvent), target :: this
    integer(4) :: jresult
        jresult = this%f_level
        return
  end function

  recursive subroutine GameInitializedEvent_jm_setResourceLoadingLevel_1(this, j_resourceLoadingLevel)
    class(GameInitializedEvent), target :: this
    class(ResourceLoadingLevel), target, optional :: j_resourceLoadingLevel
        this%f_resourceLoadingLevel => j_resourceLoadingLevel
        this%f_level = this%f_resourceLoadingLevel%jm_getLevel_0()
  end subroutine

  recursive function GameInitializedEvent_jm_getResourceLoadingLevel_0(this) result(jresult)
    class(GameInitializedEvent), target :: this
    class(ResourceLoadingLevel), pointer :: jresult
        jresult => this%f_resourceLoadingLevel
        return
  end function
end module GameInitializedEvent_m

