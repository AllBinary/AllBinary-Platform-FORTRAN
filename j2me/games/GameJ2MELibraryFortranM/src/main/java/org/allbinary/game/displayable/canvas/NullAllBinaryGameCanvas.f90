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
! package org.allbinary.game.displayable.canvas
module NullAllBinaryGameCanvas_m
  use JR_m
  use AllBinaryGameLayerManager_m
  use AllBinaryGameCanvasInterface_m
  implicit none

  type, extends(AllBinaryGameCanvasInterface) :: NullAllBinaryGameCanvas
  contains
    procedure :: jm_getLayerManager_0 => NullAllBinaryGameCanvas_jm_getLayerManager_0
    procedure :: jm_addCommand_1 => NullAllBinaryGameCanvas_jm_addCommand_1
    procedure :: jm_getHeight_0 => NullAllBinaryGameCanvas_jm_getHeight_0
    procedure :: jm_getWidth_0 => NullAllBinaryGameCanvas_jm_getWidth_0
    procedure :: jm_removeCommand_1 => NullAllBinaryGameCanvas_jm_removeCommand_1
    procedure :: jm_setCommandListener_1 => NullAllBinaryGameCanvas_jm_setCommandListener_1
  end type

  class(NullAllBinaryGameCanvas), pointer, save :: NullAllBinaryGameCanvas_jcell_NULL_ALLBINARY_GAME_CANVAS => null()
  logical, save :: NullAllBinaryGameCanvas_jset_NULL_ALLBINARY_GAME_CANVAS = .false.

contains

  function NullAllBinaryGameCanvas_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullAllBinaryGameCanvas), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullAllBinaryGameCanvas)
      jresult => object
    end select
  end function

  function NullAllBinaryGameCanvas_jstatic_NULL_ALLBINARY_GAME_CANVAS() result(jresult)
    class(NullAllBinaryGameCanvas), pointer :: jresult
    if (.not. NullAllBinaryGameCanvas_jset_NULL_ALLBINARY_GAME_CANVAS) then
      NullAllBinaryGameCanvas_jset_NULL_ALLBINARY_GAME_CANVAS = .true.
      NullAllBinaryGameCanvas_jcell_NULL_ALLBINARY_GAME_CANVAS => NullAllBinaryGameCanvas_jnew_0()
    end if
    jresult => NullAllBinaryGameCanvas_jcell_NULL_ALLBINARY_GAME_CANVAS
  end function

  subroutine NullAllBinaryGameCanvas_jsetstatic_NULL_ALLBINARY_GAME_CANVAS(jvalue)
    class(NullAllBinaryGameCanvas), target, optional :: jvalue
    NullAllBinaryGameCanvas_jset_NULL_ALLBINARY_GAME_CANVAS = .true.
    if (present(jvalue)) then
      NullAllBinaryGameCanvas_jcell_NULL_ALLBINARY_GAME_CANVAS => jvalue
    else
      NullAllBinaryGameCanvas_jcell_NULL_ALLBINARY_GAME_CANVAS => null()
    end if
  end subroutine

  function NullAllBinaryGameCanvas_jnew_0() result(this)
    class(NullAllBinaryGameCanvas), pointer :: this
    allocate(this)
    this%jclass = 'NullAllBinaryGameCanvas'
  end function

  recursive function NullAllBinaryGameCanvas_jm_getLayerManager_0(this) result(jresult)
    class(NullAllBinaryGameCanvas), target :: this
    class(AllBinaryGameLayerManager), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive subroutine NullAllBinaryGameCanvas_jm_addCommand_1(this, j_cmd)
    class(NullAllBinaryGameCanvas), target :: this
    class(Command), target, optional :: j_cmd
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end subroutine

  recursive function NullAllBinaryGameCanvas_jm_getHeight_0(this) result(jresult)
    class(NullAllBinaryGameCanvas), target :: this
    integer(4) :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function NullAllBinaryGameCanvas_jm_getWidth_0(this) result(jresult)
    class(NullAllBinaryGameCanvas), target :: this
    integer(4) :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive subroutine NullAllBinaryGameCanvas_jm_removeCommand_1(this, j_cmd)
    class(NullAllBinaryGameCanvas), target :: this
    class(Command), target, optional :: j_cmd
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end subroutine

  recursive subroutine NullAllBinaryGameCanvas_jm_setCommandListener_1(this, j_l)
    class(NullAllBinaryGameCanvas), target :: this
    class(CommandListener), target, optional :: j_l
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end subroutine
end module NullAllBinaryGameCanvas_m

