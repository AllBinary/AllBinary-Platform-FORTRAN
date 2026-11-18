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
! package org.allbinary.graphics.displayable.screen
module ScreenRepaintProcessorFactory_m
  use JR_m
  use J2MEUtil_m
  use Processor_m
  use ScreenRepaintProcessor_m
  implicit none

  type, extends(JObject) :: ScreenRepaintProcessorFactory
  contains
    procedure :: jm_create_1 => ScreenRepaintProcessorFactory_jm_create_1
  end type

  class(ScreenRepaintProcessorFactory), pointer, save :: ScreenRepaintProcessorFactory_jcell_instance => null()
  logical, save :: ScreenRepaintProcessorFactory_jset_instance = .false.

contains

  function ScreenRepaintProcessorFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScreenRepaintProcessorFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScreenRepaintProcessorFactory)
      jresult => object
    end select
  end function

  function ScreenRepaintProcessorFactory_jstatic_instance() result(jresult)
    class(ScreenRepaintProcessorFactory), pointer :: jresult
    if (.not. ScreenRepaintProcessorFactory_jset_instance) then
      ScreenRepaintProcessorFactory_jset_instance = .true.
      ScreenRepaintProcessorFactory_jcell_instance => ScreenRepaintProcessorFactory_jnew_0()
    end if
    jresult => ScreenRepaintProcessorFactory_jcell_instance
  end function

  subroutine ScreenRepaintProcessorFactory_jsetstatic_instance(jvalue)
    class(ScreenRepaintProcessorFactory), target, optional :: jvalue
    ScreenRepaintProcessorFactory_jset_instance = .true.
    if (present(jvalue)) then
      ScreenRepaintProcessorFactory_jcell_instance => jvalue
    else
      ScreenRepaintProcessorFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function ScreenRepaintProcessorFactory_jnew_0() result(this)
    class(ScreenRepaintProcessorFactory), pointer :: this
    allocate(this)
    this%jclass = 'ScreenRepaintProcessorFactory'
        continue
  end function

  recursive function ScreenRepaintProcessorFactory_jm_getInstance_0() result(jresult)
    class(ScreenRepaintProcessorFactory), pointer :: jresult
        jresult => ScreenRepaintProcessorFactory_jstatic_instance()
        return
  end function

  recursive function ScreenRepaintProcessorFactory_jm_create_1(this, j_displayable) result(jresult)
    class(ScreenRepaintProcessorFactory), target :: this
    class(Displayable), target, optional :: j_displayable
    class(Processor), pointer :: jresult
        if ((.not. J2MEUtil_jm_isJ2ME_0())) then
            jresult => ScreenRepaintProcessor_jnew_1(j_displayable)
            return
        else
            jresult => Processor_jm_getInstance_0()
            return
        end if
  end function
end module ScreenRepaintProcessorFactory_m

