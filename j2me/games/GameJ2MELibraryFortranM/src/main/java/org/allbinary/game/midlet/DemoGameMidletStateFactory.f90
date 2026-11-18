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
! package org.allbinary.game.midlet
module DemoGameMidletStateFactory_m
  use JR_m
  use DemoGameMidletState_m
  implicit none

  type, extends(JObject) :: DemoGameMidletStateFactory
    class(DemoGameMidletState), pointer :: f_NONE => null()
    class(DemoGameMidletState), pointer :: f_START_DEMO => null()
    class(DemoGameMidletState), pointer :: f_START_GAME => null()
    class(DemoGameMidletState), pointer :: f_START_INPUT_MAPPING => null()
  end type

  class(DemoGameMidletStateFactory), pointer, save :: DemoGameMidletStateFactory_jcell_STATE => null()
  logical, save :: DemoGameMidletStateFactory_jset_STATE = .false.

contains

  function DemoGameMidletStateFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DemoGameMidletStateFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DemoGameMidletStateFactory)
      jresult => object
    end select
  end function

  function DemoGameMidletStateFactory_jstatic_STATE() result(jresult)
    class(DemoGameMidletStateFactory), pointer :: jresult
    if (.not. DemoGameMidletStateFactory_jset_STATE) then
      DemoGameMidletStateFactory_jset_STATE = .true.
      DemoGameMidletStateFactory_jcell_STATE => DemoGameMidletStateFactory_jnew_0()
    end if
    jresult => DemoGameMidletStateFactory_jcell_STATE
  end function

  subroutine DemoGameMidletStateFactory_jsetstatic_STATE(jvalue)
    class(DemoGameMidletStateFactory), target, optional :: jvalue
    DemoGameMidletStateFactory_jset_STATE = .true.
    if (present(jvalue)) then
      DemoGameMidletStateFactory_jcell_STATE => jvalue
    else
      DemoGameMidletStateFactory_jcell_STATE => null()
    end if
  end subroutine

  recursive function DemoGameMidletStateFactory_jnew_0() result(this)
    class(DemoGameMidletStateFactory), pointer :: this
    allocate(this)
    this%jclass = 'DemoGameMidletStateFactory'
    this%f_NONE => DemoGameMidletState_jnew_0()
    this%f_START_DEMO => DemoGameMidletState_jnew_0()
    this%f_START_GAME => DemoGameMidletState_jnew_0()
    this%f_START_INPUT_MAPPING => DemoGameMidletState_jnew_0()
        continue
  end function

  recursive function DemoGameMidletStateFactory_jm_getInstance_0() result(jresult)
    class(DemoGameMidletStateFactory), pointer :: jresult
        jresult => DemoGameMidletStateFactory_jstatic_STATE()
        return
  end function
end module DemoGameMidletStateFactory_m

