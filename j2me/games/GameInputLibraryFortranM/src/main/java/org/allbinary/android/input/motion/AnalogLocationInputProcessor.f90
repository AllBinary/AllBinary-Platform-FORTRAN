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
! package org.allbinary.android.input.motion
module AnalogLocationInputProcessor_m
  use JR_m
  use AnalogLocationInput_m
  use AllBinaryLayerManager_m
  implicit none

  type, extends(JObject) :: AnalogLocationInputProcessor
  contains
    procedure :: jm_process_2 => AnalogLocationInputProcessor_jm_process_2
  end type


contains

  function AnalogLocationInputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnalogLocationInputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnalogLocationInputProcessor)
      jresult => object
    end select
  end function

  function AnalogLocationInputProcessor_jnew_0() result(this)
    class(AnalogLocationInputProcessor), pointer :: this
    allocate(this)
    this%jclass = 'AnalogLocationInputProcessor'
  end function

  recursive subroutine AnalogLocationInputProcessor_jm_process_2(this, j_allbinaryLayerManager, j_analogLocationInput)
    class(AnalogLocationInputProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    class(AnalogLocationInput), target, optional :: j_analogLocationInput
    continue
  end subroutine
end module AnalogLocationInputProcessor_m

