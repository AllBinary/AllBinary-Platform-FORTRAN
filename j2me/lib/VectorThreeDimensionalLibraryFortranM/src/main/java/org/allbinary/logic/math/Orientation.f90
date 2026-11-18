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
! package org.allbinary.logic.math
module Orientation_m
  use JR_m
  use StringMaker_m
  use BasicDecimal_m
  implicit none

  type, extends(JObject) :: Orientation
    class(BasicDecimal), pointer :: f_yaw => null()
    class(BasicDecimal), pointer :: f_pitch => null()
    class(BasicDecimal), pointer :: f_roll => null()
  contains
    procedure :: jm_toString_0 => Orientation_jm_toString_0
  end type

  class(Orientation), pointer, save :: Orientation_jcell_NONE => null()
  logical, save :: Orientation_jset_NONE = .false.
  class(Orientation), pointer, save :: Orientation_jcell_SINGLETON => null()
  logical, save :: Orientation_jset_SINGLETON = .false.

contains

  function Orientation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Orientation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Orientation)
      jresult => object
    end select
  end function

  function Orientation_jstatic_NONE() result(jresult)
    class(Orientation), pointer :: jresult
    if (.not. Orientation_jset_NONE) then
      Orientation_jset_NONE = .true.
      Orientation_jcell_NONE => Orientation_jnew_3(0, 0, 0)
    end if
    jresult => Orientation_jcell_NONE
  end function

  subroutine Orientation_jsetstatic_NONE(jvalue)
    class(Orientation), target, optional :: jvalue
    Orientation_jset_NONE = .true.
    if (present(jvalue)) then
      Orientation_jcell_NONE => jvalue
    else
      Orientation_jcell_NONE => null()
    end if
  end subroutine

  function Orientation_jstatic_SINGLETON() result(jresult)
    class(Orientation), pointer :: jresult
    if (.not. Orientation_jset_SINGLETON) then
      Orientation_jset_SINGLETON = .true.
      Orientation_jcell_SINGLETON => Orientation_jnew_3(0, 0, 0)
    end if
    jresult => Orientation_jcell_SINGLETON
  end function

  subroutine Orientation_jsetstatic_SINGLETON(jvalue)
    class(Orientation), target, optional :: jvalue
    Orientation_jset_SINGLETON = .true.
    if (present(jvalue)) then
      Orientation_jcell_SINGLETON => jvalue
    else
      Orientation_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function Orientation_jnew_3(j_yaw, j_pitch, j_roll) result(this)
    integer(4), value :: j_yaw
    integer(4), value :: j_pitch
    integer(4), value :: j_roll
    class(Orientation), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'Orientation'
    this%f_yaw => BasicDecimal_jnew_1(int(0, 8))
    this%f_pitch => BasicDecimal_jnew_1(int(0, 8))
    this%f_roll => BasicDecimal_jnew_1(int(0, 8))
        call this%f_yaw%jm_setint_1(j_yaw)
        call this%f_pitch%jm_setint_1(j_pitch)
        call this%f_roll%jm_setint_1(j_roll)
  end function

  recursive function Orientation_jm_getInstance_3(j_yaw, j_pitch, j_roll) result(jresult)
    integer(4), value :: j_yaw
    integer(4), value :: j_pitch
    integer(4), value :: j_roll
    class(Orientation), pointer :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstatic_N66238 => Orientation_jstatic_SINGLETON())
        call jstatic_N66238%f_yaw%jm_setint_1(j_yaw)
        end associate
        associate (jstatic_N66285 => Orientation_jstatic_SINGLETON())
        call jstatic_N66285%f_pitch%jm_setint_1(j_pitch)
        end associate
        associate (jstatic_N66332 => Orientation_jstatic_SINGLETON())
        call jstatic_N66332%f_roll%jm_setint_1(j_roll)
        end associate
        jresult => Orientation_jstatic_SINGLETON()
        return
  end function

  recursive function Orientation_jm_toString_0(this) result(jresult)
    class(Orientation), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1('Y: ')
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_yaw%jm_toString_0())
        jdiscardRef => j_stringBuffer%jm_append_1(' P: ')
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_pitch%jm_toString_0())
        jdiscardRef => j_stringBuffer%jm_append_1(' R: ')
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_roll%jm_toString_0())
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module Orientation_m

