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
! package org.allbinary.emulator
module InitEmulatorFactory_m
  use JR_m
  implicit none

  type, extends(JObject) :: InitEmulatorFactory
    logical :: f_initEmulator = .false.
  contains
    procedure :: jm_setInitEmulator_1 => InitEmulatorFactory_jm_setInitEmulator_1
    procedure :: jm_isInitEmulator_0 => InitEmulatorFactory_jm_isInitEmulator_0
  end type

  class(InitEmulatorFactory), pointer, save :: InitEmulatorFactory_jcell_instance => null()
  logical, save :: InitEmulatorFactory_jset_instance = .false.

contains

  function InitEmulatorFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InitEmulatorFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InitEmulatorFactory)
      jresult => object
    end select
  end function

  function InitEmulatorFactory_jstatic_instance() result(jresult)
    class(InitEmulatorFactory), pointer :: jresult
    if (.not. InitEmulatorFactory_jset_instance) then
      InitEmulatorFactory_jset_instance = .true.
      InitEmulatorFactory_jcell_instance => InitEmulatorFactory_jnew_0()
    end if
    jresult => InitEmulatorFactory_jcell_instance
  end function

  subroutine InitEmulatorFactory_jsetstatic_instance(jvalue)
    class(InitEmulatorFactory), target, optional :: jvalue
    InitEmulatorFactory_jset_instance = .true.
    if (present(jvalue)) then
      InitEmulatorFactory_jcell_instance => jvalue
    else
      InitEmulatorFactory_jcell_instance => null()
    end if
  end subroutine

  function InitEmulatorFactory_jnew_0() result(this)
    class(InitEmulatorFactory), pointer :: this
    allocate(this)
    this%jclass = 'InitEmulatorFactory'
    this%f_initEmulator = .false.
  end function

  recursive function InitEmulatorFactory_jm_getInstance_0() result(jresult)
    class(InitEmulatorFactory), pointer :: jresult
        jresult => InitEmulatorFactory_jstatic_instance()
        return
  end function

  recursive subroutine InitEmulatorFactory_jm_setInitEmulator_1(this, j_initEmulator)
    class(InitEmulatorFactory), target :: this
    logical, value :: j_initEmulator
        this%f_initEmulator = j_initEmulator
  end subroutine

  recursive function InitEmulatorFactory_jm_isInitEmulator_0(this) result(jresult)
    class(InitEmulatorFactory), target :: this
    logical :: jresult
        jresult = this%f_initEmulator
        return
  end function
end module InitEmulatorFactory_m

