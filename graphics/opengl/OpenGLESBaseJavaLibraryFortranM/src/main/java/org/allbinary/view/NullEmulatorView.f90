! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
! package org.allbinary.view
module NullEmulatorView_m
  use JR_m
  use EmulatorViewInterface_m
  implicit none

  type, extends(EmulatorViewInterface) :: NullEmulatorView
  contains
    procedure :: jm_setMidlet_1 => NullEmulatorView_jm_setMidlet_1
    procedure :: jm_onEmulatorInitComplete_1 => NullEmulatorView_jm_onEmulatorInitComplete_1
    procedure :: jm_onSetDisplayable_1 => NullEmulatorView_jm_onSetDisplayable_1
  end type

  class(NullEmulatorView), pointer, save :: NullEmulatorView_jcell_NULL_EMULATOR_VIEW => null()
  logical, save :: NullEmulatorView_jset_NULL_EMULATOR_VIEW = .false.

contains

  function NullEmulatorView_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullEmulatorView), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullEmulatorView)
      jresult => object
    end select
  end function

  function NullEmulatorView_jstatic_NULL_EMULATOR_VIEW() result(jresult)
    class(NullEmulatorView), pointer :: jresult
    if (.not. NullEmulatorView_jset_NULL_EMULATOR_VIEW) then
      NullEmulatorView_jset_NULL_EMULATOR_VIEW = .true.
      NullEmulatorView_jcell_NULL_EMULATOR_VIEW => NullEmulatorView_jnew_0()
    end if
    jresult => NullEmulatorView_jcell_NULL_EMULATOR_VIEW
  end function

  subroutine NullEmulatorView_jsetstatic_NULL_EMULATOR_VIEW(jvalue)
    class(NullEmulatorView), target, optional :: jvalue
    NullEmulatorView_jset_NULL_EMULATOR_VIEW = .true.
    if (present(jvalue)) then
      NullEmulatorView_jcell_NULL_EMULATOR_VIEW => jvalue
    else
      NullEmulatorView_jcell_NULL_EMULATOR_VIEW => null()
    end if
  end subroutine

  function NullEmulatorView_jnew_0() result(this)
    class(NullEmulatorView), pointer :: this
    allocate(this)
    this%jclass = 'NullEmulatorView'
  end function

  recursive subroutine NullEmulatorView_jm_setMidlet_1(this, j_midlet)
    class(NullEmulatorView), target :: this
    class(MIDlet), target, optional :: j_midlet
    continue
  end subroutine

  recursive subroutine NullEmulatorView_jm_onEmulatorInitComplete_1(this, j_midletActivity)
    class(NullEmulatorView), target :: this
    class(JObject), target, optional :: j_midletActivity
    continue
  end subroutine

  recursive subroutine NullEmulatorView_jm_onSetDisplayable_1(this, j_displayable)
    class(NullEmulatorView), target :: this
    class(Displayable), target, optional :: j_displayable
    continue
  end subroutine
end module NullEmulatorView_m

