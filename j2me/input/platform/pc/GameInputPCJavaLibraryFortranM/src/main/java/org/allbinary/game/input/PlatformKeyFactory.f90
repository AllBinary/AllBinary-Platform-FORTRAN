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
module PlatformKeyFactory_m
  use JR_m
  use NullUtil_m
  use PCGameKey_m
  use PCKeyFactory_m
  use Input_m
  implicit none

  type, extends(JObject) :: PlatformKeyFactory
  contains
    procedure :: jm_getString_1 => PlatformKeyFactory_jm_getString_1
    procedure :: jm_isSubmission_1 => PlatformKeyFactory_jm_isSubmission_1
    procedure :: jm_isDelete_1 => PlatformKeyFactory_jm_isDelete_1
    procedure :: jm_isBackSpace_1 => PlatformKeyFactory_jm_isBackSpace_1
    procedure :: jm_isUp_1 => PlatformKeyFactory_jm_isUp_1
    procedure :: jm_isDown_1 => PlatformKeyFactory_jm_isDown_1
    procedure :: jm_isEnter_1 => PlatformKeyFactory_jm_isEnter_1
    procedure :: jm_isLeft_1 => PlatformKeyFactory_jm_isLeft_1
    procedure :: jm_isRight_1 => PlatformKeyFactory_jm_isRight_1
  end type

  class(JObject), pointer, save :: PlatformKeyFactory_jcell_instance => null()
  logical, save :: PlatformKeyFactory_jset_instance = .false.

contains

  function PlatformKeyFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PlatformKeyFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PlatformKeyFactory)
      jresult => object
    end select
  end function

  function PlatformKeyFactory_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. PlatformKeyFactory_jset_instance) then
      PlatformKeyFactory_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    PlatformKeyFactory_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => PlatformKeyFactory_jcell_instance
  end function

  subroutine PlatformKeyFactory_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    PlatformKeyFactory_jset_instance = .true.
    if (present(jvalue)) then
      PlatformKeyFactory_jcell_instance => jvalue
    else
      PlatformKeyFactory_jcell_instance => null()
    end if
  end subroutine

  function PlatformKeyFactory_jnew_0() result(this)
    class(PlatformKeyFactory), pointer :: this
    allocate(this)
    this%jclass = 'PlatformKeyFactory'
  end function

  recursive function PlatformKeyFactory_jm_getInstance_0() result(jresult)
    class(PlatformKeyFactory), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(PlatformKeyFactory_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call PlatformKeyFactory_jsetstatic_instance(PlatformKeyFactory_jnew_0())
        end if
        jresult => PlatformKeyFactory_jcast(PlatformKeyFactory_jstatic_instance())
        return
  end function

  recursive function PlatformKeyFactory_jm_getString_1(this, j_keyCode) result(jresult)
    class(PlatformKeyFactory), target :: this
    integer(4), value :: j_keyCode
    character(len=:), allocatable :: jresult
        jresult = PCGameKey_jm_getString_1(j_keyCode)
        return
  end function

  recursive function PlatformKeyFactory_jm_isSubmission_1(this, j_input) result(jresult)
    class(PlatformKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
    class(PCKeyFactory), pointer :: jtemp3
        jtemp3 => PCKeyFactory_jm_getInstance_0()
        jresult = jtemp3%jm_isSubmission_1(j_input)
        return
  end function

  recursive function PlatformKeyFactory_jm_isDelete_1(this, j_input) result(jresult)
    class(PlatformKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
    class(PCKeyFactory), pointer :: jtemp4
        jtemp4 => PCKeyFactory_jm_getInstance_0()
        jresult = jtemp4%jm_isDelete_1(j_input)
        return
  end function

  recursive function PlatformKeyFactory_jm_isBackSpace_1(this, j_input) result(jresult)
    class(PlatformKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
    class(PCKeyFactory), pointer :: jtemp5
        jtemp5 => PCKeyFactory_jm_getInstance_0()
        jresult = jtemp5%jm_isBackSpace_1(j_input)
        return
  end function

  recursive function PlatformKeyFactory_jm_isUp_1(this, j_input) result(jresult)
    class(PlatformKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
    class(PCKeyFactory), pointer :: jtemp6
        jtemp6 => PCKeyFactory_jm_getInstance_0()
        jresult = jtemp6%jm_isUp_1(j_input)
        return
  end function

  recursive function PlatformKeyFactory_jm_isDown_1(this, j_input) result(jresult)
    class(PlatformKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
    class(PCKeyFactory), pointer :: jtemp7
        jtemp7 => PCKeyFactory_jm_getInstance_0()
        jresult = jtemp7%jm_isDown_1(j_input)
        return
  end function

  recursive function PlatformKeyFactory_jm_isEnter_1(this, j_input) result(jresult)
    class(PlatformKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
    class(PCKeyFactory), pointer :: jtemp8
        jtemp8 => PCKeyFactory_jm_getInstance_0()
        jresult = jtemp8%jm_isEnter_1(j_input)
        return
  end function

  recursive function PlatformKeyFactory_jm_isLeft_1(this, j_input) result(jresult)
    class(PlatformKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
    class(PCKeyFactory), pointer :: jtemp9
        jtemp9 => PCKeyFactory_jm_getInstance_0()
        jresult = jtemp9%jm_isLeft_1(j_input)
        return
  end function

  recursive function PlatformKeyFactory_jm_isRight_1(this, j_input) result(jresult)
    class(PlatformKeyFactory), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
    class(PCKeyFactory), pointer :: jtemp10
        jtemp10 => PCKeyFactory_jm_getInstance_0()
        jresult = jtemp10%jm_isRight_1(j_input)
        return
  end function
end module PlatformKeyFactory_m

