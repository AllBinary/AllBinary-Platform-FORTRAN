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
module PCKeyFactory_m
  use JR_m
  use PositionStrings_m
  use CommonPhoneStrings_m
  use CommonSeps_m
  use PCGameKey_m
  use Input_m
  implicit none

  type, extends(JObject) :: PCKeyFactory
    class(PCGameKey), pointer :: f_UNKNOWN => null()
    class(PCGameKey), pointer :: f_ENTER => null()
    class(PCGameKey), pointer :: f__A => null()
    class(PCGameKey), pointer :: f__B => null()
    class(PCGameKey), pointer :: f__C => null()
    class(PCGameKey), pointer :: f__D => null()
    class(PCGameKey), pointer :: f__E => null()
    class(PCGameKey), pointer :: f__F => null()
    class(PCGameKey), pointer :: f__G => null()
    class(PCGameKey), pointer :: f__H => null()
    class(PCGameKey), pointer :: f__I => null()
    class(PCGameKey), pointer :: f__J => null()
    class(PCGameKey), pointer :: f__K => null()
    class(PCGameKey), pointer :: f__L => null()
    class(PCGameKey), pointer :: f__M => null()
    class(PCGameKey), pointer :: f__N => null()
    class(PCGameKey), pointer :: f__O => null()
    class(PCGameKey), pointer :: f__P => null()
    class(PCGameKey), pointer :: f__Q => null()
    class(PCGameKey), pointer :: f__R => null()
    class(PCGameKey), pointer :: f__S => null()
    class(PCGameKey), pointer :: f__T => null()
    class(PCGameKey), pointer :: f__U => null()
    class(PCGameKey), pointer :: f__V => null()
    class(PCGameKey), pointer :: f__W => null()
    class(PCGameKey), pointer :: f__X => null()
    class(PCGameKey), pointer :: f__Y => null()
    class(PCGameKey), pointer :: f__Z => null()
    class(PCGameKey), pointer :: f_a => null()
    class(PCGameKey), pointer :: f_b => null()
    class(PCGameKey), pointer :: f_c => null()
    class(PCGameKey), pointer :: f_d => null()
    class(PCGameKey), pointer :: f_e => null()
    class(PCGameKey), pointer :: f_f => null()
    class(PCGameKey), pointer :: f_g => null()
    class(PCGameKey), pointer :: f_h => null()
    class(PCGameKey), pointer :: f_i => null()
    class(PCGameKey), pointer :: f_j => null()
    class(PCGameKey), pointer :: f_k => null()
    class(PCGameKey), pointer :: f_l => null()
    class(PCGameKey), pointer :: f_m => null()
    class(PCGameKey), pointer :: f_n => null()
    class(PCGameKey), pointer :: f_o => null()
    class(PCGameKey), pointer :: f_p => null()
    class(PCGameKey), pointer :: f_q => null()
    class(PCGameKey), pointer :: f_r => null()
    class(PCGameKey), pointer :: f_s => null()
    class(PCGameKey), pointer :: f_t => null()
    class(PCGameKey), pointer :: f_u => null()
    class(PCGameKey), pointer :: f_v => null()
    class(PCGameKey), pointer :: f_w => null()
    class(PCGameKey), pointer :: f_x => null()
    class(PCGameKey), pointer :: f_y => null()
    class(PCGameKey), pointer :: f_z => null()
    class(PCGameKey), pointer :: f_ZERO => null()
    class(PCGameKey), pointer :: f_ONE => null()
    class(PCGameKey), pointer :: f_TWO => null()
    class(PCGameKey), pointer :: f_THREE => null()
    class(PCGameKey), pointer :: f_FOUR => null()
    class(PCGameKey), pointer :: f_FIVE => null()
    class(PCGameKey), pointer :: f_SIX => null()
    class(PCGameKey), pointer :: f_SEVEN => null()
    class(PCGameKey), pointer :: f_EIGHT => null()
    class(PCGameKey), pointer :: f_NINE => null()
    class(PCGameKey), pointer :: f_DPAD_UP => null()
    class(PCGameKey), pointer :: f_DPAD_DOWN => null()
    class(PCGameKey), pointer :: f_DPAD_LEFT => null()
    class(PCGameKey), pointer :: f_DPAD_RIGHT => null()
    class(PCGameKey), pointer :: f_DPAD_UP2 => null()
    class(PCGameKey), pointer :: f_DPAD_DOWN2 => null()
    class(PCGameKey), pointer :: f_DPAD_LEFT2 => null()
    class(PCGameKey), pointer :: f_DPAD_RIGHT2 => null()
    class(PCGameKey), pointer :: f_COMMA => null()
    class(PCGameKey), pointer :: f_SPACE => null()
    class(PCGameKey), pointer :: f_DEL => null()
    class(PCGameKey), pointer :: f_STAR => null()
    class(PCGameKey), pointer :: f_QUESTION => null()
    class(PCGameKey), pointer :: f_PERIOD => null()
    class(PCGameKey), pointer :: f_ESCAPE => null()
    class(PCGameKey), pointer :: f_BACK_SPACE => null()
  contains
    procedure :: jm_isSubmission_1 => PCKeyFactory_jm_isSubmission_1
    procedure :: jm_isDelete_1 => PCKeyFactory_jm_isDelete_1
    procedure :: jm_isBackSpace_1 => PCKeyFactory_jm_isBackSpace_1
    procedure :: jm_isUp_1 => PCKeyFactory_jm_isUp_1
    procedure :: jm_isDown_1 => PCKeyFactory_jm_isDown_1
    procedure :: jm_isLeft_1 => PCKeyFactory_jm_isLeft_1
    procedure :: jm_isRight_1 => PCKeyFactory_jm_isRight_1
    procedure :: jm_isEnter_1 => PCKeyFactory_jm_isEnter_1
  end type

  class(PCKeyFactory), pointer, save :: PCKeyFactory_jcell_SINGLETON => null()
  logical, save :: PCKeyFactory_jset_SINGLETON = .false.

contains

  function PCKeyFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PCKeyFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PCKeyFactory)
      jresult => object
    end select
  end function

  function PCKeyFactory_jstatic_SINGLETON() result(jresult)
    class(PCKeyFactory), pointer :: jresult
    if (.not. PCKeyFactory_jset_SINGLETON) then
      PCKeyFactory_jset_SINGLETON = .true.
      PCKeyFactory_jcell_SINGLETON => PCKeyFactory_jnew_0()
    end if
    jresult => PCKeyFactory_jcell_SINGLETON
  end function

  subroutine PCKeyFactory_jsetstatic_SINGLETON(jvalue)
    class(PCKeyFactory), target, optional :: jvalue
    PCKeyFactory_jset_SINGLETON = .true.
    if (present(jvalue)) then
      PCKeyFactory_jcell_SINGLETON => jvalue
    else
      PCKeyFactory_jcell_SINGLETON => null()
    end if
  end subroutine

  function PCKeyFactory_jnew_0() result(this)
    class(PCKeyFactory), pointer :: this
    class(PositionStrings), pointer :: jtemp1
    class(PositionStrings), pointer :: jtemp2
    class(CommonPhoneStrings), pointer :: jtemp3
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
    class(CommonSeps), pointer :: jtemp18
    allocate(this)
    this%jclass = 'PCKeyFactory'
    this%f_UNKNOWN => PCGameKey_jnew_2(254, 'UNKNOWN')
    this%f_ENTER => PCGameKey_jnew_2(13, 'Enter')
    this%f__A => PCGameKey_jnew_2(65, 'A')
    this%f__B => PCGameKey_jnew_2(66, 'B')
    this%f__C => PCGameKey_jnew_2(67, 'C')
    this%f__D => PCGameKey_jnew_2(68, 'D')
    this%f__E => PCGameKey_jnew_2(69, 'E')
    this%f__F => PCGameKey_jnew_2(70, 'F')
    this%f__G => PCGameKey_jnew_2(71, 'G')
    this%f__H => PCGameKey_jnew_2(72, 'H')
    this%f__I => PCGameKey_jnew_2(73, 'I')
    this%f__J => PCGameKey_jnew_2(74, 'J')
    this%f__K => PCGameKey_jnew_2(75, 'K')
    this%f__L => PCGameKey_jnew_2(76, 'L')
    this%f__M => PCGameKey_jnew_2(77, 'M')
    this%f__N => PCGameKey_jnew_2(78, 'N')
    this%f__O => PCGameKey_jnew_2(79, 'O')
    this%f__P => PCGameKey_jnew_2(80, 'P')
    this%f__Q => PCGameKey_jnew_2(81, 'Q')
    this%f__R => PCGameKey_jnew_2(82, 'R')
    this%f__S => PCGameKey_jnew_2(83, 'S')
    this%f__T => PCGameKey_jnew_2(84, 'T')
    this%f__U => PCGameKey_jnew_2(85, 'U')
    this%f__V => PCGameKey_jnew_2(86, 'V')
    this%f__W => PCGameKey_jnew_2(87, 'W')
    this%f__X => PCGameKey_jnew_2(88, 'X')
    this%f__Y => PCGameKey_jnew_2(89, 'Y')
    this%f__Z => PCGameKey_jnew_2(90, 'Z')
    this%f_a => PCGameKey_jnew_2(97, 'a')
    this%f_b => PCGameKey_jnew_2(98, 'b')
    this%f_c => PCGameKey_jnew_2(99, 'c')
    this%f_d => PCGameKey_jnew_2(100, 'd')
    this%f_e => PCGameKey_jnew_2(101, 'e')
    this%f_f => PCGameKey_jnew_2(102, 'f')
    this%f_g => PCGameKey_jnew_2(103, 'g')
    this%f_h => PCGameKey_jnew_2(104, 'h')
    this%f_i => PCGameKey_jnew_2(105, 'i')
    this%f_j => PCGameKey_jnew_2(106, 'j')
    this%f_k => PCGameKey_jnew_2(107, 'k')
    this%f_l => PCGameKey_jnew_2(108, 'l')
    this%f_m => PCGameKey_jnew_2(109, 'm')
    this%f_n => PCGameKey_jnew_2(110, 'n')
    this%f_o => PCGameKey_jnew_2(111, 'o')
    this%f_p => PCGameKey_jnew_2(112, 'p')
    this%f_q => PCGameKey_jnew_2(113, 'q')
    this%f_r => PCGameKey_jnew_2(114, 'r')
    this%f_s => PCGameKey_jnew_2(115, 's')
    this%f_t => PCGameKey_jnew_2(116, 't')
    this%f_u => PCGameKey_jnew_2(117, 'u')
    this%f_v => PCGameKey_jnew_2(118, 'v')
    this%f_w => PCGameKey_jnew_2(119, 'w')
    jtemp1 => PositionStrings_jm_getInstance_0()
    this%f_x => PCGameKey_jnew_2(120, jtemp1%f_X_u1)
    jtemp2 => PositionStrings_jm_getInstance_0()
    this%f_y => PCGameKey_jnew_2(121, jtemp2%f_Y_u1)
    this%f_z => PCGameKey_jnew_2(122, 'z')
    jtemp3 => CommonPhoneStrings_jm_getInstance_0()
    this%f_ZERO => PCGameKey_jnew_2(48, jtemp3%f_ZERO)
    jtemp4 => CommonPhoneStrings_jm_getInstance_0()
    this%f_ONE => PCGameKey_jnew_2(49, jtemp4%f_ONE)
    jtemp5 => CommonPhoneStrings_jm_getInstance_0()
    this%f_TWO => PCGameKey_jnew_2(50, jtemp5%f_TWO)
    jtemp6 => CommonPhoneStrings_jm_getInstance_0()
    this%f_THREE => PCGameKey_jnew_2(51, jtemp6%f_THREE)
    jtemp7 => CommonPhoneStrings_jm_getInstance_0()
    this%f_FOUR => PCGameKey_jnew_2(52, jtemp7%f_FOUR)
    jtemp8 => CommonPhoneStrings_jm_getInstance_0()
    this%f_FIVE => PCGameKey_jnew_2(53, jtemp8%f_FIVE)
    jtemp9 => CommonPhoneStrings_jm_getInstance_0()
    this%f_SIX => PCGameKey_jnew_2(54, jtemp9%f_SIX)
    jtemp10 => CommonPhoneStrings_jm_getInstance_0()
    this%f_SEVEN => PCGameKey_jnew_2(55, jtemp10%f_SEVEN)
    jtemp11 => CommonPhoneStrings_jm_getInstance_0()
    this%f_EIGHT => PCGameKey_jnew_2(56, jtemp11%f_EIGHT)
    jtemp12 => CommonPhoneStrings_jm_getInstance_0()
    this%f_NINE => PCGameKey_jnew_2(57, jtemp12%f_NINE)
    jtemp13 => CommonPhoneStrings_jm_getInstance_0()
    this%f_DPAD_UP => PCGameKey_jnew_2(38, jtemp13%f_UP)
    jtemp14 => CommonPhoneStrings_jm_getInstance_0()
    this%f_DPAD_DOWN => PCGameKey_jnew_2(40, jtemp14%f_DOWN)
    jtemp15 => CommonPhoneStrings_jm_getInstance_0()
    this%f_DPAD_LEFT => PCGameKey_jnew_2(37, jtemp15%f_LEFT)
    jtemp16 => CommonPhoneStrings_jm_getInstance_0()
    this%f_DPAD_RIGHT => PCGameKey_jnew_2(39, jtemp16%f_RIGHT)
    this%f_DPAD_UP2 => this%f_DPAD_UP
    this%f_DPAD_DOWN2 => this%f_DPAD_DOWN
    this%f_DPAD_LEFT2 => this%f_DPAD_LEFT
    this%f_DPAD_RIGHT2 => this%f_DPAD_RIGHT
    this%f_COMMA => PCGameKey_jnew_2(44, 'COMMA')
    this%f_SPACE => PCGameKey_jnew_2(32, 'SPACE')
    this%f_DEL => PCGameKey_jnew_2(46, 'DEL')
    jtemp17 => CommonPhoneStrings_jm_getInstance_0()
    this%f_STAR => PCGameKey_jnew_2(42, jtemp17%f_STAR)
    this%f_QUESTION => PCGameKey_jnew_2(47, '?')
    jtemp18 => CommonSeps_jm_getInstance_0()
    this%f_PERIOD => PCGameKey_jnew_2(46, jtemp18%f_PERIOD)
    this%f_ESCAPE => PCGameKey_jnew_2(27, 'Esc')
    this%f_BACK_SPACE => PCGameKey_jnew_2(8, 'Backspace')
  end function

  recursive function PCKeyFactory_jm_getInstance_0() result(jresult)
    class(PCKeyFactory), pointer :: jresult
        jresult => PCKeyFactory_jstatic_SINGLETON()
        return
  end function

  recursive function PCKeyFactory_jm_isSubmission_1(this, j_input) result(jresult)
    class(PCKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
        if (JR_same(j_input, this%f_ENTER)) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function PCKeyFactory_jm_isDelete_1(this, j_input) result(jresult)
    class(PCKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
        if (JR_same(j_input, this%f_DEL)) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function PCKeyFactory_jm_isBackSpace_1(this, j_input) result(jresult)
    class(PCKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
        if (JR_same(j_input, this%f_BACK_SPACE)) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function PCKeyFactory_jm_isUp_1(this, j_input) result(jresult)
    class(PCKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
        if ((JR_same(j_input, this%f_DPAD_UP) .or. JR_same(j_input, this%f_DPAD_UP2))) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function PCKeyFactory_jm_isDown_1(this, j_input) result(jresult)
    class(PCKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
        if ((JR_same(j_input, this%f_DPAD_DOWN) .or. JR_same(j_input, this%f_DPAD_DOWN2))) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function PCKeyFactory_jm_isLeft_1(this, j_input) result(jresult)
    class(PCKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
        if ((JR_same(j_input, this%f_DPAD_LEFT) .or. JR_same(j_input, this%f_DPAD_LEFT2))) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function PCKeyFactory_jm_isRight_1(this, j_input) result(jresult)
    class(PCKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
        if ((JR_same(j_input, this%f_DPAD_RIGHT) .or. JR_same(j_input, this%f_DPAD_RIGHT2))) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function PCKeyFactory_jm_isEnter_1(this, j_input) result(jresult)
    class(PCKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
        if (JR_same(j_input, this%f_ENTER)) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function
end module PCKeyFactory_m

