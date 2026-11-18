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
! package org.allbinary.game.ag.ai
module ScrollOverAtEndAI_m
  use JR_m
  use BasicAI_m
  use GameInput_m
  use DisplayInfoSingleton_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  implicit none

  type, extends(BasicAI) :: ScrollOverAtEndAI
  contains
    procedure :: jm_processAI_1 => ScrollOverAtEndAI_jm_processAI_1
  end type


contains

  function ScrollOverAtEndAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScrollOverAtEndAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScrollOverAtEndAI)
      jresult => object
    end select
  end function

  recursive function ScrollOverAtEndAI_jnew_2(j_ownerLayerInterface, j_gameInput) result(this)
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(ScrollOverAtEndAI), pointer :: this
    allocate(this)
    this%jclass = 'ScrollOverAtEndAI'
        continue ! super()
  end function

  recursive subroutine ScrollOverAtEndAI_jm_processAI_1(this, j_layerManager)
    class(ScrollOverAtEndAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(AllBinaryLayer), pointer :: j_ownerLayerInterface
    integer(4) :: j_x
    integer(4) :: j_y
    integer(4) :: j_width
    integer(4) :: j_height
    class(DisplayInfoSingleton), pointer :: j_displayInfo
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_ownerLayerInterface => this%jm_getOwnerLayerInterface_0()
        j_x = j_ownerLayerInterface%jm_getXP_0()
        j_y = j_ownerLayerInterface%jm_getYP_0()
        j_width = j_ownerLayerInterface%jm_getWidth_0()
        j_height = j_ownerLayerInterface%jm_getHeight_0()
        j_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
        if ((j_x > j_displayInfo%jm_getLastWidth_0())) then
            call j_ownerLayerInterface%jm_setPosition_3(0, j_y, j_ownerLayerInterface%jm_getZP_0())
        end if
        if ((j_y > j_displayInfo%jm_getLastHeight_0())) then
            call j_ownerLayerInterface%jm_setPosition_3(j_x, 0, j_ownerLayerInterface%jm_getZP_0())
        end if
        if ((j_x < (-j_width))) then
            call j_ownerLayerInterface%jm_setPosition_3((j_displayInfo%jm_getLastWidth_0() - j_width), j_y, j_ownerLayerInterface%jm_getZP_0())
        end if
        if ((j_y < (-j_height))) then
            call j_ownerLayerInterface%jm_setPosition_3(j_x, (j_displayInfo%jm_getLastHeight_0() - j_height), j_ownerLayerInterface%jm_getZP_0())
        end if
  end subroutine
end module ScrollOverAtEndAI_m

