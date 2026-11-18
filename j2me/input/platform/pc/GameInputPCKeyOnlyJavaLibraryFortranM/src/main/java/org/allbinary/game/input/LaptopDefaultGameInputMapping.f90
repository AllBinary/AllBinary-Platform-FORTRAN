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
module LaptopDefaultGameInputMapping_m
  use JR_m
  use GamePersistanceStrings_m
  use InputToGameKeyMapping_m
  use PersistentInputMapping_m
  use PCKeyFactory_m
  use GameKeyFactory_m
  implicit none

  type, extends(PersistentInputMapping) :: LaptopDefaultGameInputMapping
  end type


contains

  function LaptopDefaultGameInputMapping_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LaptopDefaultGameInputMapping), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LaptopDefaultGameInputMapping)
      jresult => object
    end select
  end function

  recursive function LaptopDefaultGameInputMapping_jnew_0() result(this)
    class(LaptopDefaultGameInputMapping), pointer :: this
    class(InputToGameKeyMapping), pointer :: j_inputToGameKeyMapping
    class(PCKeyFactory), pointer :: j_pcKeyFactory
    class(GameKeyFactory), pointer :: j_gameKeyFactory
    class(GamePersistanceStrings), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'LaptopDefaultGameInputMapping'
        jtemp1 => GamePersistanceStrings_jm_getInstance_0()
        continue ! super()
        j_inputToGameKeyMapping => this%jm_getInputMapping_0()
        j_pcKeyFactory => PCKeyFactory_jm_getInstance_0()
        j_gameKeyFactory => GameKeyFactory_jm_getInstance_0()
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_FIRE, j_pcKeyFactory%f_ENTER)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM1, j_pcKeyFactory%f_FOUR)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM1, j_pcKeyFactory%f__P)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM1, j_pcKeyFactory%f_p)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_UP, j_pcKeyFactory%f_DPAD_UP)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_DOWN, j_pcKeyFactory%f_DPAD_DOWN)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_LEFT, j_pcKeyFactory%f_DPAD_LEFT)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_RIGHT, j_pcKeyFactory%f_DPAD_RIGHT)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM1, j_pcKeyFactory%f_FIVE)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM7, j_pcKeyFactory%f__Y)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM9, j_pcKeyFactory%f__I)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_UP, j_pcKeyFactory%f__U)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_LEFT, j_pcKeyFactory%f__H)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_RIGHT, j_pcKeyFactory%f__J)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_DOWN, j_pcKeyFactory%f__N)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM5, j_pcKeyFactory%f__M)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM7, j_pcKeyFactory%f_y)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM9, j_pcKeyFactory%f_i)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_UP, j_pcKeyFactory%f_u)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_LEFT, j_pcKeyFactory%f_h)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_RIGHT, j_pcKeyFactory%f_j)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_DOWN, j_pcKeyFactory%f_n)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM5, j_pcKeyFactory%f_m)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM7, j_pcKeyFactory%f__Q)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM9, j_pcKeyFactory%f__E)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_UP, j_pcKeyFactory%f__W)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_LEFT, j_pcKeyFactory%f__A)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_RIGHT, j_pcKeyFactory%f__D)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_DOWN, j_pcKeyFactory%f__S)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM5, j_pcKeyFactory%f__X)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM7, j_pcKeyFactory%f_q)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM9, j_pcKeyFactory%f_e)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_UP, j_pcKeyFactory%f_w)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_LEFT, j_pcKeyFactory%f_a)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_RIGHT, j_pcKeyFactory%f_d)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_DOWN, j_pcKeyFactory%f_s)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM5, j_pcKeyFactory%f_x)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM3, j_pcKeyFactory%f_THREE)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM0, j_pcKeyFactory%f_ZERO)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM0, j_pcKeyFactory%f_ONE)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_NUM0, j_pcKeyFactory%f_SPACE)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_POUND, j_pcKeyFactory%f_DEL)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_POUND, j_pcKeyFactory%f_TWO)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_STAR, j_pcKeyFactory%f_ESCAPE)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_KEY_STAR, j_pcKeyFactory%f_STAR)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_LEVEL_DOWN, j_pcKeyFactory%f_COMMA)
        call j_inputToGameKeyMapping%jm_add_2(j_gameKeyFactory%f_LEVEL_UP, j_pcKeyFactory%f_PERIOD)
  end function
end module LaptopDefaultGameInputMapping_m

function LaptopDefaultGameInputMapping_jnew_0_jext() result(this)
  use LaptopDefaultGameInputMapping_m, only: JObject, LaptopDefaultGameInputMapping_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => LaptopDefaultGameInputMapping_jnew_0()
end function

