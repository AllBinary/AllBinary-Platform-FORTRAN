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
module BasicLayerProcessor_m
  use JR_m
  use LogUtil_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  implicit none

  type, extends(JObject) :: BasicLayerProcessor
    class(LogUtil), pointer :: f_logUtil => null()
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_add_1 => BasicLayerProcessor_jm_add_1
    procedure :: jm_process_1 => BasicLayerProcessor_jm_process_1
    procedure :: jm_getList_0 => BasicLayerProcessor_jm_getList_0
  end type

  class(BasicLayerProcessor), pointer, save :: BasicLayerProcessor_jcell_NULL_LAYER_PROCESSOR => null()
  logical, save :: BasicLayerProcessor_jset_NULL_LAYER_PROCESSOR = .false.

contains

  function BasicLayerProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicLayerProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicLayerProcessor)
      jresult => object
    end select
  end function

  function BasicLayerProcessor_jstatic_NULL_LAYER_PROCESSOR() result(jresult)
    class(BasicLayerProcessor), pointer :: jresult
    if (.not. BasicLayerProcessor_jset_NULL_LAYER_PROCESSOR) then
      BasicLayerProcessor_jset_NULL_LAYER_PROCESSOR = .true.
      BasicLayerProcessor_jcell_NULL_LAYER_PROCESSOR => BasicLayerProcessor_jnew_0()
    end if
    jresult => BasicLayerProcessor_jcell_NULL_LAYER_PROCESSOR
  end function

  subroutine BasicLayerProcessor_jsetstatic_NULL_LAYER_PROCESSOR(jvalue)
    class(BasicLayerProcessor), target, optional :: jvalue
    BasicLayerProcessor_jset_NULL_LAYER_PROCESSOR = .true.
    if (present(jvalue)) then
      BasicLayerProcessor_jcell_NULL_LAYER_PROCESSOR => jvalue
    else
      BasicLayerProcessor_jcell_NULL_LAYER_PROCESSOR => null()
    end if
  end subroutine

  recursive function BasicLayerProcessor_jnew_0() result(this)
    class(BasicLayerProcessor), pointer :: this
    allocate(this)
    this%jclass = 'BasicLayerProcessor'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_list => BasicArrayListD_jnew_0()
        continue
  end function

  recursive subroutine BasicLayerProcessor_jm_add_1(this, j_layerInterface)
    class(BasicLayerProcessor), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_list%jm_contains_1(j_layerInterface))) then
            jdiscardBoolean = this%f_list%jm_add_1(j_layerInterface)
        end if
  end subroutine

  recursive subroutine BasicLayerProcessor_jm_process_1(this, j_allBinaryLayerManager)
    class(BasicLayerProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    class(CommonStrings), pointer :: jtemp1
        jtemp1 => CommonStrings_jm_getInstance_0()
        error stop JR_toString(JR_newJObject('Exception'))
  end subroutine

  recursive function BasicLayerProcessor_jm_getList_0(this) result(jresult)
    class(BasicLayerProcessor), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_list
        return
  end function
end module BasicLayerProcessor_m

