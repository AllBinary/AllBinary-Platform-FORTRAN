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
module SingleAnalogControllerVisitor_m
  use JR_m
  use AnalogLocationInput_m
  use AnalogLocationInputFactory_m
  use AllBinaryLayerManager_m
  use AnalogControllerVisitor_m
  use AnalogLocationInputProcessor_m
  implicit none

  type, extends(AnalogControllerVisitor) :: SingleAnalogControllerVisitor
    integer(4) :: f_playerInputId = 0
  contains
    procedure :: jm_process_2 => SingleAnalogControllerVisitor_jm_process_2
  end type


contains

  function SingleAnalogControllerVisitor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SingleAnalogControllerVisitor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SingleAnalogControllerVisitor)
      jresult => object
    end select
  end function

  recursive function SingleAnalogControllerVisitor_jnew_1(j_playerInputId) result(this)
    integer(4), value :: j_playerInputId
    class(SingleAnalogControllerVisitor), pointer :: this
    allocate(this)
    this%jclass = 'SingleAnalogControllerVisitor'
    
        this%f_playerInputId = j_playerInputId
  end function

  recursive subroutine SingleAnalogControllerVisitor_jm_process_2(this, j_allbinaryLayerManager, j_analogLocationInputProcessor)
    class(SingleAnalogControllerVisitor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    class(AnalogLocationInputProcessor), target, optional :: j_analogLocationInputProcessor
    class(AnalogLocationInput), pointer :: j_analogLocationInput
    class(AnalogLocationInputFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => AnalogLocationInputFactory_jm_getInstance_0()
        j_analogLocationInput => jtemp1%jm_getInstanceForPlayer_1(this%f_playerInputId)
        call j_analogLocationInputProcessor%jm_process_2(j_allbinaryLayerManager, j_analogLocationInput)
  end subroutine
end module SingleAnalogControllerVisitor_m

function SingleAnalogControllerVisitor_jnew_1_jext(p1) result(this)
  use SingleAnalogControllerVisitor_m, only: JObject, SingleAnalogControllerVisitor_jnew_1
  implicit none
      integer(4), value :: p1
  class(JObject), pointer :: this
  this => SingleAnalogControllerVisitor_jnew_1(p1)
end function

