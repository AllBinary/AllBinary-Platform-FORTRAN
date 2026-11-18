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
! package org.allbinary.layer
module BasicLayerProcessorInterface_m
  use JR_m
  use AllBinaryLayerManager_m
  implicit none

  type, extends(JObject) :: BasicLayerProcessorInterface
  contains
    procedure :: jm_process_1 => BasicLayerProcessorInterface_jm_process_1
  end type


contains

  function BasicLayerProcessorInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicLayerProcessorInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicLayerProcessorInterface)
      jresult => object
    end select
  end function

  function BasicLayerProcessorInterface_jnew_0() result(this)
    class(BasicLayerProcessorInterface), pointer :: this
    allocate(this)
    this%jclass = 'BasicLayerProcessorInterface'
  end function

  recursive subroutine BasicLayerProcessorInterface_jm_process_1(this, j_allBinaryLayerManager)
    class(BasicLayerProcessorInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    error stop 'AbstractMethodError: BasicLayerProcessorInterface.process'
  end subroutine
end module BasicLayerProcessorInterface_m

