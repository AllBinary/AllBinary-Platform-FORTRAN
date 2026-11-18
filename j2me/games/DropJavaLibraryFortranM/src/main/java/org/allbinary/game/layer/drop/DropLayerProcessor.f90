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
! package org.allbinary.game.layer.drop
module DropLayerProcessor_m
  use JR_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use BasicLayerProcessor_m
  use BasicArrayList_m
  use DropLayerInterface_m
  implicit none

  type, extends(BasicLayerProcessor) :: DropLayerProcessor
  contains
    procedure :: jm_process_1 => DropLayerProcessor_jm_process_1
  end type

  class(BasicLayerProcessor), pointer, save :: DropLayerProcessor_jcell_LAYER_PROCESSOR => null()
  logical, save :: DropLayerProcessor_jset_LAYER_PROCESSOR = .false.

contains

  function DropLayerProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DropLayerProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DropLayerProcessor)
      jresult => object
    end select
  end function

  function DropLayerProcessor_jstatic_LAYER_PROCESSOR() result(jresult)
    class(BasicLayerProcessor), pointer :: jresult
    if (.not. DropLayerProcessor_jset_LAYER_PROCESSOR) then
      DropLayerProcessor_jset_LAYER_PROCESSOR = .true.
      DropLayerProcessor_jcell_LAYER_PROCESSOR => DropLayerProcessor_jnew_0()
    end if
    jresult => DropLayerProcessor_jcell_LAYER_PROCESSOR
  end function

  subroutine DropLayerProcessor_jsetstatic_LAYER_PROCESSOR(jvalue)
    class(BasicLayerProcessor), target, optional :: jvalue
    DropLayerProcessor_jset_LAYER_PROCESSOR = .true.
    if (present(jvalue)) then
      DropLayerProcessor_jcell_LAYER_PROCESSOR => jvalue
    else
      DropLayerProcessor_jcell_LAYER_PROCESSOR => null()
    end if
  end subroutine

  recursive function DropLayerProcessor_jnew_0() result(this)
    class(DropLayerProcessor), pointer :: this
    allocate(this)
    this%jclass = 'DropLayerProcessor'
        continue
  end function

  recursive function DropLayerProcessor_jm_getInstance_0() result(jresult)
    class(BasicLayerProcessor), pointer :: jresult
        jresult => DropLayerProcessor_jstatic_LAYER_PROCESSOR()
        return
  end function

  recursive subroutine DropLayerProcessor_jm_process_1(this, j_allBinaryLayerManager)
    class(DropLayerProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_size
    class(AllBinaryLayer), pointer :: j_layerInterface
    class(DropLayerInterface), pointer :: j_dropLayerInterface
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_list => this%jm_getList_0()
        j_size = j_list%jm_size_0()
        continue
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_layerInterface => AllBinaryLayer_jcast(j_list%f_objectArray((j_index) + 1)%v)
            j_dropLayerInterface => DropLayerInterface_jcast(j_layerInterface)
            j_layerInterface => AllBinaryLayer_jcast(j_dropLayerInterface%jm_getDroppedLayer_0())
            call j_allBinaryLayerManager%jm_append_1(j_layerInterface)
            j_index = j_index + 1
        end do
        call j_list%jm_clear_0()
  end subroutine
end module DropLayerProcessor_m

function DropLayerProcessor_jnew_0_jext() result(this)
  use DropLayerProcessor_m, only: JObject, DropLayerProcessor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => DropLayerProcessor_jnew_0()
end function

