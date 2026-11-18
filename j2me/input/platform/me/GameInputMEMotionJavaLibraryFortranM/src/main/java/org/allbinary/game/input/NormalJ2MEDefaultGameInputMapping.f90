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
module NormalJ2MEDefaultGameInputMapping_m
  use JR_m
  use GamePersistanceStrings_m
  use InputToGameKeyMapping_m
  use PersistentInputMapping_m
  use GameKeyFactory_m
  implicit none

  type, extends(PersistentInputMapping) :: NormalJ2MEDefaultGameInputMapping
  end type


contains

  function NormalJ2MEDefaultGameInputMapping_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NormalJ2MEDefaultGameInputMapping), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NormalJ2MEDefaultGameInputMapping)
      jresult => object
    end select
  end function

  recursive function NormalJ2MEDefaultGameInputMapping_jnew_0() result(this)
    class(NormalJ2MEDefaultGameInputMapping), pointer :: this
    class(InputToGameKeyMapping), pointer :: j_inputToGameKeyMapping
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
    this%jclass = 'NormalJ2MEDefaultGameInputMapping'
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
  end function
end module NormalJ2MEDefaultGameInputMapping_m

function NormalJ2MEDefaultGameInputMapping_jnew_0_jext() result(this)
  use NormalJ2MEDefaultGameInputMapping_m, only: JObject, NormalJ2MEDefaultGameInputMapping_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NormalJ2MEDefaultGameInputMapping_jnew_0()
end function

