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
module AllAnalogControllerVisitor_m
  use JR_m
  use AnalogLocationInput_m
  use AnalogLocationInputFactory_m
  use AllBinaryLayerManager_m
  use BasicArrayList_m
  use AnalogControllerVisitor_m
  use AnalogLocationInputProcessor_m
  implicit none

  type, extends(AnalogControllerVisitor) :: AllAnalogControllerVisitor
  contains
    procedure :: jm_process_2 => AllAnalogControllerVisitor_jm_process_2
  end type


contains

  function AllAnalogControllerVisitor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllAnalogControllerVisitor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllAnalogControllerVisitor)
      jresult => object
    end select
  end function

  function AllAnalogControllerVisitor_jnew_0() result(this)
    class(AllAnalogControllerVisitor), pointer :: this
    allocate(this)
    this%jclass = 'AllAnalogControllerVisitor'
  end function

  recursive subroutine AllAnalogControllerVisitor_jm_process_2(this, j_allbinaryLayerManager, j_analogLocationInputProcessor)
    class(AllAnalogControllerVisitor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    class(AnalogLocationInputProcessor), target, optional :: j_analogLocationInputProcessor
    class(BasicArrayList), pointer :: j_analogLocationInputList
    class(AnalogLocationInput), pointer :: j_analogLocationInput
    integer(4) :: j_index
    class(AnalogLocationInputFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => AnalogLocationInputFactory_jm_getInstance_0()
        j_analogLocationInputList => jtemp1%jm_getList_0()
        continue
        j_index = (j_analogLocationInputList%jm_size_0() - 1)
        do while ((j_index >= 0))
            j_analogLocationInput => AnalogLocationInput_jcast(j_analogLocationInputList%jm_get_1(j_index))
            call j_analogLocationInputProcessor%jm_process_2(j_allbinaryLayerManager, j_analogLocationInput)
            j_index = j_index - 1
        end do
  end subroutine
end module AllAnalogControllerVisitor_m

function AllAnalogControllerVisitor_jnew_0_jext() result(this)
  use AllAnalogControllerVisitor_m, only: JObject, AllAnalogControllerVisitor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => AllAnalogControllerVisitor_jnew_0()
end function

