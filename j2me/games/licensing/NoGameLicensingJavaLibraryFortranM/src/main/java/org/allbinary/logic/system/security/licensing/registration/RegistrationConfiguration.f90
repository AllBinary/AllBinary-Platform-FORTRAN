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
! package org.allbinary.logic.system.security.licensing.registration
module RegistrationConfiguration_m
  use JR_m
  use StringMaker_m
  implicit none

  type, extends(JObject) :: RegistrationConfiguration
    character(len=:), allocatable :: f_registrationCode
    character(len=:), allocatable :: f_NAME
  contains
    procedure :: jm_read_0 => RegistrationConfiguration_jm_read_0
    procedure :: jm_write_0 => RegistrationConfiguration_jm_write_0
    procedure :: jm_toString_0 => RegistrationConfiguration_jm_toString_0
    procedure :: jm_setRegistrationCode_1 => RegistrationConfiguration_jm_setRegistrationCode_1
    procedure :: jm_getRegistrationCode_0 => RegistrationConfiguration_jm_getRegistrationCode_0
  end type

  class(RegistrationConfiguration), pointer, save :: RegistrationConfiguration_jcell_SINGLETON => null()
  logical, save :: RegistrationConfiguration_jset_SINGLETON = .false.

contains

  function RegistrationConfiguration_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RegistrationConfiguration), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RegistrationConfiguration)
      jresult => object
    end select
  end function

  function RegistrationConfiguration_jstatic_SINGLETON() result(jresult)
    class(RegistrationConfiguration), pointer :: jresult
    if (.not. RegistrationConfiguration_jset_SINGLETON) then
      RegistrationConfiguration_jset_SINGLETON = .true.
      RegistrationConfiguration_jcell_SINGLETON => RegistrationConfiguration_jnew_0()
    end if
    jresult => RegistrationConfiguration_jcell_SINGLETON
  end function

  subroutine RegistrationConfiguration_jsetstatic_SINGLETON(jvalue)
    class(RegistrationConfiguration), target, optional :: jvalue
    RegistrationConfiguration_jset_SINGLETON = .true.
    if (present(jvalue)) then
      RegistrationConfiguration_jcell_SINGLETON => jvalue
    else
      RegistrationConfiguration_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function RegistrationConfiguration_jnew_0() result(this)
    class(RegistrationConfiguration), pointer :: this
    allocate(this)
    this%jclass = 'RegistrationConfiguration'
    this%f_registrationCode = ''
    this%f_NAME = ''
    this%f_registrationCode = 'No Registration Code'
    this%f_NAME = 'registrationid'
        continue
  end function

  recursive function RegistrationConfiguration_jm_getInstance_0() result(jresult)
    class(RegistrationConfiguration), pointer :: jresult
        jresult => RegistrationConfiguration_jstatic_SINGLETON()
        return
  end function

  recursive subroutine RegistrationConfiguration_jm_read_0(this)
    class(RegistrationConfiguration), target :: this
    continue
  end subroutine

  recursive subroutine RegistrationConfiguration_jm_write_0(this)
    class(RegistrationConfiguration), target :: this
    continue
  end subroutine

  recursive function RegistrationConfiguration_jm_toString_0(this) result(jresult)
    class(RegistrationConfiguration), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
        jtemp3 => StringMaker_jnew_0()
        jtemp2 => jtemp3%jm_append_1('Registration Code: ')
        jtemp1 => jtemp2%jm_append_1(this%jm_getRegistrationCode_0())
        jresult = jtemp1%jm_toString_0()
        return
  end function

  recursive subroutine RegistrationConfiguration_jm_setRegistrationCode_1(this, j_registrationCode)
    class(RegistrationConfiguration), target :: this
    character(len=*), intent(in) :: j_registrationCode
        this%f_registrationCode = j_registrationCode
  end subroutine

  recursive function RegistrationConfiguration_jm_getRegistrationCode_0(this) result(jresult)
    class(RegistrationConfiguration), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_registrationCode
        return
  end function
end module RegistrationConfiguration_m

