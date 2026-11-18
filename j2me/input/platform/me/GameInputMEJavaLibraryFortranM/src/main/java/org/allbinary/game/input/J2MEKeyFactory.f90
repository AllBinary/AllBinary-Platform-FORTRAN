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
module J2MEKeyFactory_m
  use JR_m
  use GameKeyFactory_m
  use GameKey_m
  use InputFactory_m
  use Input_m
  implicit none

  type, extends(JObject) :: J2MEKeyFactory
    class(GameKeyFactory), pointer :: f_gameKeyFactory => null()
  contains
    procedure :: jm_init_0 => J2MEKeyFactory_jm_init_0
    procedure :: jm_isSubmission_1 => J2MEKeyFactory_jm_isSubmission_1
    procedure :: jm_isDelete_1 => J2MEKeyFactory_jm_isDelete_1
    procedure :: jm_isBackSpace_1 => J2MEKeyFactory_jm_isBackSpace_1
    procedure :: jm_isUp_1 => J2MEKeyFactory_jm_isUp_1
    procedure :: jm_isDown_1 => J2MEKeyFactory_jm_isDown_1
    procedure :: jm_isLeft_1 => J2MEKeyFactory_jm_isLeft_1
    procedure :: jm_isRight_1 => J2MEKeyFactory_jm_isRight_1
    procedure :: jm_isEnter_1 => J2MEKeyFactory_jm_isEnter_1
  end type

  class(J2MEKeyFactory), pointer, save :: J2MEKeyFactory_jcell_instance => null()
  logical, save :: J2MEKeyFactory_jset_instance = .false.

contains

  function J2MEKeyFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(J2MEKeyFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (J2MEKeyFactory)
      jresult => object
    end select
  end function

  function J2MEKeyFactory_jstatic_instance() result(jresult)
    class(J2MEKeyFactory), pointer :: jresult
    if (.not. J2MEKeyFactory_jset_instance) then
      J2MEKeyFactory_jset_instance = .true.
      J2MEKeyFactory_jcell_instance => J2MEKeyFactory_jnew_0()
    end if
    jresult => J2MEKeyFactory_jcell_instance
  end function

  subroutine J2MEKeyFactory_jsetstatic_instance(jvalue)
    class(J2MEKeyFactory), target, optional :: jvalue
    J2MEKeyFactory_jset_instance = .true.
    if (present(jvalue)) then
      J2MEKeyFactory_jcell_instance => jvalue
    else
      J2MEKeyFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function J2MEKeyFactory_jnew_0() result(this)
    class(J2MEKeyFactory), pointer :: this
    allocate(this)
    this%jclass = 'J2MEKeyFactory'
    this%f_gameKeyFactory => GameKeyFactory_jm_getInstance_0()
        continue
  end function

  recursive function J2MEKeyFactory_jm_getInstance_0() result(jresult)
    class(J2MEKeyFactory), pointer :: jresult
        jresult => J2MEKeyFactory_jstatic_instance()
        return
  end function

  recursive subroutine J2MEKeyFactory_jm_init_0(this)
    class(J2MEKeyFactory), target :: this
    type(JRef), allocatable :: j_gameKeyArray(:)
    class(InputFactory), pointer :: j_inputFactory
    integer(4) :: j_index
    integer(4) :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_gameKeyArray = [JRef :: JRef(this%f_gameKeyFactory%f_DOWN), JRef(this%f_gameKeyFactory%f_FIRE), JRef(this%f_gameKeyFactory%f_GAME_A), JRef(this%f_gameKeyFactory%f_GAME_B), JRef(this%f_gameKeyFactory%f_GAME_C), JRef(this%f_gameKeyFactory%f_GAME_D), JRef(this%f_gameKeyFactory%f_KEY_NUM0), JRef(this%f_gameKeyFactory%f_KEY_NUM1), JRef(this%f_gameKeyFactory%f_KEY_NUM2), JRef(this%f_gameKeyFactory%f_KEY_NUM3), JRef(this%f_gameKeyFactory%f_KEY_NUM4), JRef(this%f_gameKeyFactory%f_KEY_NUM5), JRef(this%f_gameKeyFactory%f_KEY_NUM6), JRef(this%f_gameKeyFactory%f_KEY_NUM7), JRef(this%f_gameKeyFactory%f_KEY_NUM8), JRef(this%f_gameKeyFactory%f_KEY_NUM9), JRef(this%f_gameKeyFactory%f_KEY_POUND), JRef(this%f_gameKeyFactory%f_KEY_STAR), JRef(this%f_gameKeyFactory%f_LEFT), JRef(this%f_gameKeyFactory%f_LEVEL_DOWN), JRef(this%f_gameKeyFactory%f_LEVEL_UP), JRef(this%f_gameKeyFactory%f_NONE), JRef(this%f_gameKeyFactory%f_RIGHT), JRef(this%f_gameKeyFactory%f_UP)]
        j_inputFactory => InputFactory_jm_getInstance_0()
        j_index = j_index - 1
        jtemp1 = j_index
        j_index = size(j_gameKeyArray, 1)
        do while ((jtemp1 >= 0))
            associate (jstaticref1 => GameKey_jcast(j_gameKeyArray((j_index) + 1)%v))
            call j_inputFactory%jm_add_2(jstaticref1%jm_getId_0(), GameKey_jcast(j_gameKeyArray((j_index) + 1)%v))
            end associate
        end do
  end subroutine

  recursive function J2MEKeyFactory_jm_isSubmission_1(this, j_input) result(jresult)
    class(J2MEKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
        if (JR_same(j_input, this%f_gameKeyFactory%f_FIRE)) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function J2MEKeyFactory_jm_isDelete_1(this, j_input) result(jresult)
    class(J2MEKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
        if (JR_same(j_input, this%f_gameKeyFactory%f_GAME_D)) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function J2MEKeyFactory_jm_isBackSpace_1(this, j_input) result(jresult)
    class(J2MEKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function J2MEKeyFactory_jm_isUp_1(this, j_input) result(jresult)
    class(J2MEKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
        if (JR_same(j_input, this%f_gameKeyFactory%f_UP)) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function J2MEKeyFactory_jm_isDown_1(this, j_input) result(jresult)
    class(J2MEKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
        if (JR_same(j_input, this%f_gameKeyFactory%f_DOWN)) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function J2MEKeyFactory_jm_isLeft_1(this, j_input) result(jresult)
    class(J2MEKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
        if (JR_same(j_input, this%f_gameKeyFactory%f_LEFT)) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function J2MEKeyFactory_jm_isRight_1(this, j_input) result(jresult)
    class(J2MEKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
        if (JR_same(j_input, this%f_gameKeyFactory%f_RIGHT)) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function J2MEKeyFactory_jm_isEnter_1(this, j_input) result(jresult)
    class(J2MEKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
        if (JR_same(j_input, this%f_gameKeyFactory%f_FIRE)) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function
end module J2MEKeyFactory_m

