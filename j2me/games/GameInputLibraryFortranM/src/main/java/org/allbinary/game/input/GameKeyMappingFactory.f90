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
! package org.allbinary.game.input
module GameKeyMappingFactory_m
  use JR_m
  use NullUtil_m
  use GameKey_m
  use InputFactory_m
  use GameKeyFactory_m
  implicit none

  type, extends(JObject) :: GameKeyMappingFactory
    type(JRef), allocatable :: f_intKeyToGameKey(:)
  contains
    procedure :: jm_getGameKey_1 => GameKeyMappingFactory_jm_getGameKey_1
    procedure :: jm_setGameKey_1 => GameKeyMappingFactory_jm_setGameKey_1
  end type

  class(JObject), pointer, save :: GameKeyMappingFactory_jcell_instance => null()
  logical, save :: GameKeyMappingFactory_jset_instance = .false.

contains

  function GameKeyMappingFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameKeyMappingFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameKeyMappingFactory)
      jresult => object
    end select
  end function

  function GameKeyMappingFactory_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. GameKeyMappingFactory_jset_instance) then
      GameKeyMappingFactory_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    GameKeyMappingFactory_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => GameKeyMappingFactory_jcell_instance
  end function

  subroutine GameKeyMappingFactory_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    GameKeyMappingFactory_jset_instance = .true.
    if (present(jvalue)) then
      GameKeyMappingFactory_jcell_instance => jvalue
    else
      GameKeyMappingFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function GameKeyMappingFactory_jnew_0() result(this)
    class(GameKeyMappingFactory), pointer :: this
    class(GameKeyFactory), pointer :: j_gameKeyFactory
    class(InputFactory), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'GameKeyMappingFactory'
    jtemp3 => InputFactory_jm_getInstance_0()
    this%f_intKeyToGameKey = JR_newRefArray(jtemp3%f_MAX)
        j_gameKeyFactory => GameKeyFactory_jm_getInstance_0()
        call this%jm_setGameKey_1(j_gameKeyFactory%f_NONE)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_UP)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_DOWN)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_LEFT)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_RIGHT)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_KEY_POUND)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_KEY_STAR)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_KEY_NUM0)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_KEY_NUM1)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_KEY_NUM2)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_KEY_NUM3)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_KEY_NUM4)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_KEY_NUM5)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_KEY_NUM6)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_KEY_NUM7)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_KEY_NUM8)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_KEY_NUM9)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_GAME_A)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_GAME_B)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_GAME_C)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_GAME_D)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_FIRE)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_LEVEL_DOWN)
        call this%jm_setGameKey_1(j_gameKeyFactory%f_LEVEL_UP)
  end function

  recursive function GameKeyMappingFactory_jm_getInstance_0() result(jresult)
    class(GameKeyMappingFactory), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(GameKeyMappingFactory_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call GameKeyMappingFactory_jsetstatic_instance(GameKeyMappingFactory_jnew_0())
        end if
        jresult => GameKeyMappingFactory_jcast(GameKeyMappingFactory_jstatic_instance())
        return
  end function

  recursive function GameKeyMappingFactory_jm_getGameKey_1(this, j_key) result(jresult)
    class(GameKeyMappingFactory), target :: this
    integer(4), value :: j_key
    class(GameKey), pointer :: jresult
        jresult => GameKey_jcast(this%f_intKeyToGameKey((j_key) + 1)%v)
        return
  end function

  recursive subroutine GameKeyMappingFactory_jm_setGameKey_1(this, j_gameKey)
    class(GameKeyMappingFactory), target :: this
    class(GameKey), target, optional :: j_gameKey
        this%f_intKeyToGameKey((j_gameKey%jm_getId_0()) + 1)%v => j_gameKey
  end subroutine
end module GameKeyMappingFactory_m

