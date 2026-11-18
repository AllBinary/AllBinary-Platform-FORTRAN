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
module MotionJ2MEDefaultGameInputMapping_m
  use JR_m
  use GamePersistanceStrings_m
  use InputToGameKeyMapping_m
  use PersistentInputMapping_m
  use BasicTouchInputFactory_m
  use TouchMotionGestureFactory_m
  use GameKeyFactory_m
  implicit none

  type, extends(PersistentInputMapping) :: MotionJ2MEDefaultGameInputMapping
  end type


contains

  function MotionJ2MEDefaultGameInputMapping_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MotionJ2MEDefaultGameInputMapping), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MotionJ2MEDefaultGameInputMapping)
      jresult => object
    end select
  end function

  recursive function MotionJ2MEDefaultGameInputMapping_jnew_0() result(this)
    class(MotionJ2MEDefaultGameInputMapping), pointer :: this
    class(InputToGameKeyMapping), pointer :: j_inputToGameKeyMapping
    class(GameKeyFactory), pointer :: j_gameKeyFactory
    class(BasicTouchInputFactory), pointer :: j_basicTouchInputFactory
    class(GamePersistanceStrings), pointer :: jtemp1
    class(TouchMotionGestureFactory), pointer :: jtemp2
    class(TouchMotionGestureFactory), pointer :: jtemp3
    class(TouchMotionGestureFactory), pointer :: jtemp4
    class(TouchMotionGestureFactory), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'MotionJ2MEDefaultGameInputMapping'
        jtemp1 => GamePersistanceStrings_jm_getInstance_0()
        continue ! super()
        j_inputToGameKeyMapping => this%jm_getInputMapping_0()
        j_gameKeyFactory => GameKeyFactory_jm_getInstance_0()
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_UP, j_gameKeyFactory%f_KEY_NUM2)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_LEFT, j_gameKeyFactory%f_KEY_NUM4)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_RIGHT, j_gameKeyFactory%f_KEY_NUM6)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_DOWN, j_gameKeyFactory%f_KEY_NUM8)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM1, j_gameKeyFactory%f_GAME_A)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM3, j_gameKeyFactory%f_GAME_B)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM7, j_gameKeyFactory%f_GAME_C)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM9, j_gameKeyFactory%f_GAME_D)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_LEVEL_DOWN, j_gameKeyFactory%f_LEVEL_DOWN)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_LEVEL_UP, j_gameKeyFactory%f_LEVEL_UP)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_UP, j_gameKeyFactory%f_UP)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_DOWN, j_gameKeyFactory%f_DOWN)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_LEFT, j_gameKeyFactory%f_LEFT)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_RIGHT, j_gameKeyFactory%f_RIGHT)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_POUND, j_gameKeyFactory%f_KEY_POUND)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_STAR, j_gameKeyFactory%f_KEY_STAR)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM1, j_gameKeyFactory%f_KEY_NUM1)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM3, j_gameKeyFactory%f_KEY_NUM3)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM5, j_gameKeyFactory%f_KEY_NUM5)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM7, j_gameKeyFactory%f_KEY_NUM7)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM9, j_gameKeyFactory%f_KEY_NUM9)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM0, j_gameKeyFactory%f_KEY_NUM0)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM1, j_gameKeyFactory%f_FIRE)
        jtemp2 => TouchMotionGestureFactory_jm_getInstance_0()
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_UP, jtemp2%f_UP)
        jtemp3 => TouchMotionGestureFactory_jm_getInstance_0()
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_DOWN, jtemp3%f_DOWN)
        jtemp4 => TouchMotionGestureFactory_jm_getInstance_0()
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_LEFT, jtemp4%f_LEFT)
        jtemp5 => TouchMotionGestureFactory_jm_getInstance_0()
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_RIGHT, jtemp5%f_RIGHT)
        j_basicTouchInputFactory => BasicTouchInputFactory_jm_getInstance_0()
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_UP, j_basicTouchInputFactory%f_UP)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_LEFT, j_basicTouchInputFactory%f_LEFT)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_RIGHT, j_basicTouchInputFactory%f_RIGHT)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_DOWN, j_basicTouchInputFactory%f_DOWN)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM0, j_basicTouchInputFactory%f_SPECIAL_BUTTON_FIVE)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM7, j_basicTouchInputFactory%f_SPECIAL_BUTTON_FOUR)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM9, j_basicTouchInputFactory%f_SPECIAL_BUTTON_THREE)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM1, j_basicTouchInputFactory%f_SPECIAL_BUTTON_TWO)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM3, j_basicTouchInputFactory%f_SPECIAL_BUTTON_ONE)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM2, j_basicTouchInputFactory%f_SPECIAL_BUTTON_SIX)
  end function
end module MotionJ2MEDefaultGameInputMapping_m

function MotionJ2MEDefaultGameInputMapping_jnew_0_jext() result(this)
  use MotionJ2MEDefaultGameInputMapping_m, only: JObject, MotionJ2MEDefaultGameInputMapping_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => MotionJ2MEDefaultGameInputMapping_jnew_0()
end function

