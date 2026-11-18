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
module GameKeyFactory_m
  use JR_m
  use NullUtil_m
  use CommonPhoneStrings_m
  use GameKey_m
  use InputFactory_m
  implicit none

  type, extends(JObject) :: GameKeyFactory
    class(GameKey), pointer :: f_NONE => null()
    class(GameKey), pointer :: f_UP => null()
    class(GameKey), pointer :: f_DOWN => null()
    class(GameKey), pointer :: f_LEFT => null()
    class(GameKey), pointer :: f_RIGHT => null()
    class(GameKey), pointer :: f_KEY_POUND => null()
    class(GameKey), pointer :: f_KEY_STAR => null()
    class(GameKey), pointer :: f_KEY_NUM0 => null()
    class(GameKey), pointer :: f_KEY_NUM1 => null()
    class(GameKey), pointer :: f_KEY_NUM2 => null()
    class(GameKey), pointer :: f_KEY_NUM3 => null()
    class(GameKey), pointer :: f_KEY_NUM4 => null()
    class(GameKey), pointer :: f_KEY_NUM5 => null()
    class(GameKey), pointer :: f_KEY_NUM6 => null()
    class(GameKey), pointer :: f_KEY_NUM7 => null()
    class(GameKey), pointer :: f_KEY_NUM8 => null()
    class(GameKey), pointer :: f_KEY_NUM9 => null()
    class(GameKey), pointer :: f_GAME_A => null()
    class(GameKey), pointer :: f_GAME_B => null()
    class(GameKey), pointer :: f_GAME_C => null()
    class(GameKey), pointer :: f_GAME_D => null()
    class(GameKey), pointer :: f_FIRE => null()
    class(GameKey), pointer :: f_LEVEL_DOWN => null()
    class(GameKey), pointer :: f_LEVEL_UP => null()
  end type

  class(JObject), pointer, save :: GameKeyFactory_jcell_instance => null()
  logical, save :: GameKeyFactory_jset_instance = .false.

contains

  function GameKeyFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameKeyFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameKeyFactory)
      jresult => object
    end select
  end function

  function GameKeyFactory_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. GameKeyFactory_jset_instance) then
      GameKeyFactory_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    GameKeyFactory_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => GameKeyFactory_jcell_instance
  end function

  subroutine GameKeyFactory_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    GameKeyFactory_jset_instance = .true.
    if (present(jvalue)) then
      GameKeyFactory_jcell_instance => jvalue
    else
      GameKeyFactory_jcell_instance => null()
    end if
  end subroutine

  function GameKeyFactory_jnew_0() result(this)
    class(GameKeyFactory), pointer :: this
    class(InputFactory), pointer :: jtemp3
    class(CommonPhoneStrings), pointer :: jtemp4
    class(CommonPhoneStrings), pointer :: jtemp5
    class(CommonPhoneStrings), pointer :: jtemp6
    class(CommonPhoneStrings), pointer :: jtemp7
    class(CommonPhoneStrings), pointer :: jtemp8
    class(CommonPhoneStrings), pointer :: jtemp9
    class(CommonPhoneStrings), pointer :: jtemp10
    class(CommonPhoneStrings), pointer :: jtemp11
    class(CommonPhoneStrings), pointer :: jtemp12
    class(CommonPhoneStrings), pointer :: jtemp13
    class(CommonPhoneStrings), pointer :: jtemp14
    class(CommonPhoneStrings), pointer :: jtemp15
    class(CommonPhoneStrings), pointer :: jtemp16
    class(CommonPhoneStrings), pointer :: jtemp17
    class(CommonPhoneStrings), pointer :: jtemp18
    allocate(this)
    this%jclass = 'GameKeyFactory'
    jtemp3 => InputFactory_jm_getInstance_0()
    this%f_NONE => GameKey_jnew_2((jtemp3%f_MAX - 1), 'None')
    jtemp4 => CommonPhoneStrings_jm_getInstance_0()
    this%f_UP => GameKey_jnew_2(Canvas_jstatic_UP(), jtemp4%f_UP)
    jtemp5 => CommonPhoneStrings_jm_getInstance_0()
    this%f_DOWN => GameKey_jnew_2(Canvas_jstatic_DOWN(), jtemp5%f_DOWN)
    jtemp6 => CommonPhoneStrings_jm_getInstance_0()
    this%f_LEFT => GameKey_jnew_2(Canvas_jstatic_LEFT(), jtemp6%f_LEFT)
    jtemp7 => CommonPhoneStrings_jm_getInstance_0()
    this%f_RIGHT => GameKey_jnew_2(Canvas_jstatic_RIGHT(), jtemp7%f_RIGHT)
    this%f_KEY_POUND => GameKey_jnew_2(Canvas_jstatic_KEY_POUND(), 'POUND')
    this%f_KEY_STAR => GameKey_jnew_2(Canvas_jstatic_KEY_STAR(), 'STAR')
    jtemp8 => CommonPhoneStrings_jm_getInstance_0()
    this%f_KEY_NUM0 => GameKey_jnew_2(Canvas_jstatic_KEY_NUM0(), jtemp8%f_ZERO)
    jtemp9 => CommonPhoneStrings_jm_getInstance_0()
    this%f_KEY_NUM1 => GameKey_jnew_2(Canvas_jstatic_KEY_NUM1(), jtemp9%f_ONE)
    jtemp10 => CommonPhoneStrings_jm_getInstance_0()
    this%f_KEY_NUM2 => GameKey_jnew_2(Canvas_jstatic_KEY_NUM2(), jtemp10%f_TWO)
    jtemp11 => CommonPhoneStrings_jm_getInstance_0()
    this%f_KEY_NUM3 => GameKey_jnew_2(Canvas_jstatic_KEY_NUM3(), jtemp11%f_THREE)
    jtemp12 => CommonPhoneStrings_jm_getInstance_0()
    this%f_KEY_NUM4 => GameKey_jnew_2(Canvas_jstatic_KEY_NUM4(), jtemp12%f_FOUR)
    jtemp13 => CommonPhoneStrings_jm_getInstance_0()
    this%f_KEY_NUM5 => GameKey_jnew_2(Canvas_jstatic_KEY_NUM5(), jtemp13%f_FIVE)
    jtemp14 => CommonPhoneStrings_jm_getInstance_0()
    this%f_KEY_NUM6 => GameKey_jnew_2(Canvas_jstatic_KEY_NUM6(), jtemp14%f_SIX)
    jtemp15 => CommonPhoneStrings_jm_getInstance_0()
    this%f_KEY_NUM7 => GameKey_jnew_2(Canvas_jstatic_KEY_NUM7(), jtemp15%f_SEVEN)
    jtemp16 => CommonPhoneStrings_jm_getInstance_0()
    this%f_KEY_NUM8 => GameKey_jnew_2(Canvas_jstatic_KEY_NUM8(), jtemp16%f_EIGHT)
    jtemp17 => CommonPhoneStrings_jm_getInstance_0()
    this%f_KEY_NUM9 => GameKey_jnew_2(Canvas_jstatic_KEY_NUM9(), jtemp17%f_NINE)
    this%f_GAME_A => GameKey_jnew_2(Canvas_jstatic_GAME_A(), 'Game A')
    this%f_GAME_B => GameKey_jnew_2(Canvas_jstatic_GAME_B(), 'Game B')
    this%f_GAME_C => GameKey_jnew_2(Canvas_jstatic_GAME_C(), 'Game C')
    this%f_GAME_D => GameKey_jnew_2(Canvas_jstatic_GAME_D(), 'Game D')
    jtemp18 => CommonPhoneStrings_jm_getInstance_0()
    this%f_FIRE => GameKey_jnew_2(Canvas_jstatic_FIRE(), jtemp18%f_FIRE)
    this%f_LEVEL_DOWN => GameKey_jnew_2((Canvas_jstatic_KEY_NUM9() + 1), 'Cheat Level Up')
    this%f_LEVEL_UP => GameKey_jnew_2((Canvas_jstatic_KEY_NUM9() + 2), 'Cheat Level Down')
  end function

  recursive function GameKeyFactory_jm_getInstance_0() result(jresult)
    class(GameKeyFactory), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(GameKeyFactory_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call GameKeyFactory_jsetstatic_instance(GameKeyFactory_jnew_0())
        end if
        jresult => GameKeyFactory_jcast(GameKeyFactory_jstatic_instance())
        return
  end function
end module GameKeyFactory_m

