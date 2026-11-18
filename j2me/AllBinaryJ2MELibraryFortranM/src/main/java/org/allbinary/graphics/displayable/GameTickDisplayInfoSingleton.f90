! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.graphics.displayable
module GameTickDisplayInfoSingleton_m
  use JR_m
  use DisplayInfoSingleton_m
  implicit none

  type, extends(JObject) :: GameTickDisplayInfoSingleton
    class(DisplayInfoSingleton), pointer :: f_displayInfoSingleton => null()
    integer(4) :: f_lastWidth = 0
    integer(4) :: f_lastHeight = 0
    integer(4) :: f_lastHalfWidth = 0
    integer(4) :: f_lastHalfHeight = 0
  contains
    procedure :: jm_update_0 => GameTickDisplayInfoSingleton_jm_update_0
    procedure :: jm_getLastWidth_0 => GameTickDisplayInfoSingleton_jm_getLastWidth_0
    procedure :: jm_getLastHeight_0 => GameTickDisplayInfoSingleton_jm_getLastHeight_0
    procedure :: jm_getLastHalfWidth_0 => GameTickDisplayInfoSingleton_jm_getLastHalfWidth_0
    procedure :: jm_getLastHalfHeight_0 => GameTickDisplayInfoSingleton_jm_getLastHalfHeight_0
  end type

  class(GameTickDisplayInfoSingleton), pointer, save :: GameTickDisplayInfoSingleton_jcell_instance => null()
  logical, save :: GameTickDisplayInfoSingleton_jset_instance = .false.

contains

  function GameTickDisplayInfoSingleton_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameTickDisplayInfoSingleton), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameTickDisplayInfoSingleton)
      jresult => object
    end select
  end function

  function GameTickDisplayInfoSingleton_jstatic_instance() result(jresult)
    class(GameTickDisplayInfoSingleton), pointer :: jresult
    if (.not. GameTickDisplayInfoSingleton_jset_instance) then
      GameTickDisplayInfoSingleton_jset_instance = .true.
      GameTickDisplayInfoSingleton_jcell_instance => GameTickDisplayInfoSingleton_jnew_0()
    end if
    jresult => GameTickDisplayInfoSingleton_jcell_instance
  end function

  subroutine GameTickDisplayInfoSingleton_jsetstatic_instance(jvalue)
    class(GameTickDisplayInfoSingleton), target, optional :: jvalue
    GameTickDisplayInfoSingleton_jset_instance = .true.
    if (present(jvalue)) then
      GameTickDisplayInfoSingleton_jcell_instance => jvalue
    else
      GameTickDisplayInfoSingleton_jcell_instance => null()
    end if
  end subroutine

  function GameTickDisplayInfoSingleton_jnew_0() result(this)
    class(GameTickDisplayInfoSingleton), pointer :: this
    allocate(this)
    this%jclass = 'GameTickDisplayInfoSingleton'
    this%f_displayInfoSingleton => DisplayInfoSingleton_jm_getInstance_0()
    this%f_lastWidth = this%f_displayInfoSingleton%jm_getLastWidth_0()
    this%f_lastHeight = this%f_displayInfoSingleton%jm_getLastHeight_0()
    this%f_lastHalfWidth = this%f_displayInfoSingleton%jm_getLastHalfWidth_0()
    this%f_lastHalfHeight = this%f_displayInfoSingleton%jm_getLastHalfHeight_0()
  end function

  recursive function GameTickDisplayInfoSingleton_jm_getInstance_0() result(jresult)
    class(GameTickDisplayInfoSingleton), pointer :: jresult
        jresult => GameTickDisplayInfoSingleton_jstatic_instance()
        return
  end function

  recursive subroutine GameTickDisplayInfoSingleton_jm_update_0(this)
    class(GameTickDisplayInfoSingleton), target :: this
        this%f_lastWidth = this%f_displayInfoSingleton%jm_getLastWidth_0()
        this%f_lastHeight = this%f_displayInfoSingleton%jm_getLastHeight_0()
        this%f_lastHalfWidth = this%f_displayInfoSingleton%jm_getLastHalfWidth_0()
        this%f_lastHalfHeight = this%f_displayInfoSingleton%jm_getLastHalfHeight_0()
  end subroutine

  recursive function GameTickDisplayInfoSingleton_jm_getLastWidth_0(this) result(jresult)
    class(GameTickDisplayInfoSingleton), target :: this
    integer(4) :: jresult
        jresult = this%f_lastWidth
        return
  end function

  recursive function GameTickDisplayInfoSingleton_jm_getLastHeight_0(this) result(jresult)
    class(GameTickDisplayInfoSingleton), target :: this
    integer(4) :: jresult
        jresult = this%f_lastHeight
        return
  end function

  recursive function GameTickDisplayInfoSingleton_jm_getLastHalfWidth_0(this) result(jresult)
    class(GameTickDisplayInfoSingleton), target :: this
    integer(4) :: jresult
        jresult = this%f_lastHalfWidth
        return
  end function

  recursive function GameTickDisplayInfoSingleton_jm_getLastHalfHeight_0(this) result(jresult)
    class(GameTickDisplayInfoSingleton), target :: this
    integer(4) :: jresult
        jresult = this%f_lastHalfHeight
        return
  end function
end module GameTickDisplayInfoSingleton_m

