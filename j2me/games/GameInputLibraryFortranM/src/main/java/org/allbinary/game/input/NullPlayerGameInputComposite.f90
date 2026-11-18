! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
! package org.allbinary.game.input
module NullPlayerGameInputComposite_m
  use JR_m
  use AllBinaryLayerManager_m
  use StringUtil_m
  use PlayerGameInputCompositeInterface_m
  use NoPlayerGameInput_m
  use PlayerGameInput_m
  implicit none

  type, extends(PlayerGameInputCompositeInterface) :: NullPlayerGameInputComposite
  contains
    procedure :: jm_getName_0 => NullPlayerGameInputComposite_jm_getName_0
    procedure :: jm_processInput_1 => NullPlayerGameInputComposite_jm_processInput_1
    procedure :: jm_initInputProcessors_0 => NullPlayerGameInputComposite_jm_initInputProcessors_0
    procedure :: jm_getPlayerGameInput_0 => NullPlayerGameInputComposite_jm_getPlayerGameInput_0
  end type

  class(NullPlayerGameInputComposite), pointer, save :: NullPlayerGameInputComposite_jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE => null()
  logical, save :: NullPlayerGameInputComposite_jset_NULL_PLAYER_GAME_INPUT_COMPOSITE = .false.

contains

  function NullPlayerGameInputComposite_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullPlayerGameInputComposite), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullPlayerGameInputComposite)
      jresult => object
    end select
  end function

  function NullPlayerGameInputComposite_jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE() result(jresult)
    class(NullPlayerGameInputComposite), pointer :: jresult
    if (.not. NullPlayerGameInputComposite_jset_NULL_PLAYER_GAME_INPUT_COMPOSITE) then
      NullPlayerGameInputComposite_jset_NULL_PLAYER_GAME_INPUT_COMPOSITE = .true.
      NullPlayerGameInputComposite_jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE => NullPlayerGameInputComposite_jnew_0()
    end if
    jresult => NullPlayerGameInputComposite_jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE
  end function

  subroutine NullPlayerGameInputComposite_jsetstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE(jvalue)
    class(NullPlayerGameInputComposite), target, optional :: jvalue
    NullPlayerGameInputComposite_jset_NULL_PLAYER_GAME_INPUT_COMPOSITE = .true.
    if (present(jvalue)) then
      NullPlayerGameInputComposite_jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE => jvalue
    else
      NullPlayerGameInputComposite_jcell_NULL_PLAYER_GAME_INPUT_COMPOSITE => null()
    end if
  end subroutine

  function NullPlayerGameInputComposite_jnew_0() result(this)
    class(NullPlayerGameInputComposite), pointer :: this
    allocate(this)
    this%jclass = 'NullPlayerGameInputComposite'
  end function

  recursive function NullPlayerGameInputComposite_jm_getName_0(this) result(jresult)
    class(NullPlayerGameInputComposite), target :: this
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp1
        jtemp1 => StringUtil_jm_getInstance_0()
        jresult = jtemp1%f_EMPTY_STRING
        return
  end function

  recursive subroutine NullPlayerGameInputComposite_jm_processInput_1(this, j_layerManager)
    class(NullPlayerGameInputComposite), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    continue
  end subroutine

  recursive subroutine NullPlayerGameInputComposite_jm_initInputProcessors_0(this)
    class(NullPlayerGameInputComposite), target :: this
    continue
  end subroutine

  recursive function NullPlayerGameInputComposite_jm_getPlayerGameInput_0(this) result(jresult)
    class(NullPlayerGameInputComposite), target :: this
    class(PlayerGameInput), pointer :: jresult
        jresult => NoPlayerGameInput_jm_getInstance_0()
        return
  end function
end module NullPlayerGameInputComposite_m

