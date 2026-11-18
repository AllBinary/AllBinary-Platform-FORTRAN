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
module AnalogControllerVisitor_m
  use JR_m
  use AllBinaryLayerManager_m
  use AnalogLocationInputProcessor_m
  implicit none

  type, extends(JObject) :: AnalogControllerVisitor
  contains
    procedure :: jm_process_2 => AnalogControllerVisitor_jm_process_2
  end type


contains

  function AnalogControllerVisitor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnalogControllerVisitor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnalogControllerVisitor)
      jresult => object
    end select
  end function

  function AnalogControllerVisitor_jnew_0() result(this)
    class(AnalogControllerVisitor), pointer :: this
    allocate(this)
    this%jclass = 'AnalogControllerVisitor'
  end function

  recursive subroutine AnalogControllerVisitor_jm_process_2(this, j_allbinaryLayerManager, j_analogLocationInputProcessor)
    class(AnalogControllerVisitor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    class(AnalogLocationInputProcessor), target, optional :: j_analogLocationInputProcessor
    continue
  end subroutine
end module AnalogControllerVisitor_m

