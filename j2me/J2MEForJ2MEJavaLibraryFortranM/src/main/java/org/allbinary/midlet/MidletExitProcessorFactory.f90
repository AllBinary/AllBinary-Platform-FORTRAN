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
! package org.allbinary.midlet
module MidletExitProcessorFactory_m
  use JR_m
  use AppletUtil_m
  use J2MEUtil_m
  use Processor_m
  use MidletExitProcessor_m
  implicit none

  type, extends(JObject) :: MidletExitProcessorFactory
  contains
    procedure :: jm_getExitInstance_1 => MidletExitProcessorFactory_jm_getExitInstance_1
  end type

  class(MidletExitProcessorFactory), pointer, save :: MidletExitProcessorFactory_jcell_instance => null()
  logical, save :: MidletExitProcessorFactory_jset_instance = .false.

contains

  function MidletExitProcessorFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MidletExitProcessorFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MidletExitProcessorFactory)
      jresult => object
    end select
  end function

  function MidletExitProcessorFactory_jstatic_instance() result(jresult)
    class(MidletExitProcessorFactory), pointer :: jresult
    if (.not. MidletExitProcessorFactory_jset_instance) then
      MidletExitProcessorFactory_jset_instance = .true.
      MidletExitProcessorFactory_jcell_instance => MidletExitProcessorFactory_jnew_0()
    end if
    jresult => MidletExitProcessorFactory_jcell_instance
  end function

  subroutine MidletExitProcessorFactory_jsetstatic_instance(jvalue)
    class(MidletExitProcessorFactory), target, optional :: jvalue
    MidletExitProcessorFactory_jset_instance = .true.
    if (present(jvalue)) then
      MidletExitProcessorFactory_jcell_instance => jvalue
    else
      MidletExitProcessorFactory_jcell_instance => null()
    end if
  end subroutine

  function MidletExitProcessorFactory_jnew_0() result(this)
    class(MidletExitProcessorFactory), pointer :: this
    allocate(this)
    this%jclass = 'MidletExitProcessorFactory'
  end function

  recursive function MidletExitProcessorFactory_jm_getInstance_0() result(jresult)
    class(MidletExitProcessorFactory), pointer :: jresult
        jresult => MidletExitProcessorFactory_jstatic_instance()
        return
  end function

  recursive function MidletExitProcessorFactory_jm_getExitInstance_1(this, j_midlet) result(jresult)
    class(MidletExitProcessorFactory), target :: this
    class(MIDlet), target, optional :: j_midlet
    class(Processor), pointer :: jresult
        if ((AppletUtil_jm_isAppletLoader_1(j_midlet) .or. J2MEUtil_jm_isJ2ME_0())) then
            jresult => Processor_jm_getInstance_0()
            return
        else
            jresult => MidletExitProcessor_jnew_1(j_midlet)
            return
        end if
  end function
end module MidletExitProcessorFactory_m

