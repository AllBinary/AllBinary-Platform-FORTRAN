! Generated Code Do Not Modify
! package org.allbinary.view
module AllBinaryMidletViewInterface_m
  use JR_m
  use GameInitializedListenerInterface_m
  use DemoGameMidletEventListener_m
  use MidletCompositeInterface_m
  use Displayable_m
  use MIDlet_m
  use DemoGameMidletEvent_m
  use AllBinaryEventObject_m
  use GameInitializedEvent_m
  use EmulatorViewInterface_m
  implicit none

  type, extends(MidletCompositeInterface) :: AllBinaryMidletViewInterface
  contains
    procedure :: jm_onResume_0 => AllBinaryMidletViewInterface_jm_onResume_0
    procedure :: jm_onPause_0 => AllBinaryMidletViewInterface_jm_onPause_0
    procedure :: jm_onDestroy_0 => AllBinaryMidletViewInterface_jm_onDestroy_0
  end type


contains

  function AllBinaryMidletViewInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryMidletViewInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryMidletViewInterface)
      jresult => object
    end select
  end function

  function AllBinaryMidletViewInterface_jnew_0() result(this)
    class(AllBinaryMidletViewInterface), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryMidletViewInterface'
  end function

  recursive subroutine AllBinaryMidletViewInterface_jm_onResume_0(this)
    class(AllBinaryMidletViewInterface), target :: this
    error stop 'AbstractMethodError: AllBinaryMidletViewInterface.onResume'
  end subroutine

  recursive subroutine AllBinaryMidletViewInterface_jm_onPause_0(this)
    class(AllBinaryMidletViewInterface), target :: this
    error stop 'AbstractMethodError: AllBinaryMidletViewInterface.onPause'
  end subroutine

  recursive subroutine AllBinaryMidletViewInterface_jm_onDestroy_0(this)
    class(AllBinaryMidletViewInterface), target :: this
    error stop 'AbstractMethodError: AllBinaryMidletViewInterface.onDestroy'
  end subroutine
end module AllBinaryMidletViewInterface_m

