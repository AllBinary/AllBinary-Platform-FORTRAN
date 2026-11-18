! Generated Code Do Not Modify
! package org.allbinary.layer
module ABLayerManager_m
  use JR_m
  use TsUtil_m
  use LogUtil_m
  use CommonStrings_m
  use SynchObject_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use ABSystemWrapper_m
  use LayerManagerLoggingBase_m
  use AllBinaryLayer_m
  use ABLayer_m
  implicit none

  type, extends(JObject) :: ABLayerManager
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(ABSystemWrapper), pointer :: f_systemWrapper => null()
    class(TsUtil), pointer :: f_tsUtil => null()
    class(LayerManagerLoggingBase), pointer :: f_layerManagerLogging => null()
    class(BasicArrayList), pointer :: f_list => null()
    class(SynchObject), pointer :: f_anyType => null()
  contains
    procedure :: jm_contains_1 => ABLayerManager_jm_contains_1
    procedure :: jm_update_1 => ABLayerManager_jm_update_1
    procedure :: jm_insert_1 => ABLayerManager_jm_insert_1
    procedure :: jm_append_1 => ABLayerManager_jm_append_1
    procedure :: jm_appendAt_2 => ABLayerManager_jm_appendAt_2
    procedure :: jm_remove_1 => ABLayerManager_jm_remove_1
    procedure :: jm_getLayerAt_1 => ABLayerManager_jm_getLayerAt_1
    procedure :: jm_getSize_0 => ABLayerManager_jm_getSize_0
    procedure :: jm_cleanup_0 => ABLayerManager_jm_cleanup_0
    procedure :: jm_paint_3 => ABLayerManager_jm_paint_3
  end type


contains

  function ABLayerManager_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABLayerManager), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABLayerManager)
      jresult => object
    end select
  end function

  recursive function ABLayerManager_jnew_1(j_layerManagerLogging) result(this)
    class(LayerManagerLoggingBase), target, optional :: j_layerManagerLogging
    class(ABLayerManager), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'ABLayerManager'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_systemWrapper => ABSystemWrapper_jm_getInstance_0()
    this%f_tsUtil => TsUtil_jm_getInstance_0()
    
    this%f_list => BasicArrayListD_jnew_0()
    this%f_anyType => SynchObject_jnew_0()
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_CONSTRUCTOR)
        this%f_layerManagerLogging => j_layerManagerLogging
  end function

  recursive function ABLayerManager_jm_contains_1(this, j_layerInterface) result(jresult)
    class(ABLayerManager), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    logical :: jresult
        jresult = this%f_list%jm_contains_1(j_layerInterface)
        return
  end function

  recursive subroutine ABLayerManager_jm_update_1(this, j_layerInterface)
    class(ABLayerManager), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    logical :: j_had
    class(AllBinaryLayer), pointer :: j_nextLayerInterface
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_had = this%f_list%jm_remove_1(j_layerInterface)
        if (j_had) then
            continue
            j_size = this%f_list%jm_size_0()
            j_index = 0
            do while ((j_index < j_size))
                j_nextLayerInterface => AllBinaryLayer_jcast(this%f_list%jm_get_1(j_index))
                if ((j_layerInterface%jm_getZP_0() > j_nextLayerInterface%jm_getZP_0())) then
                    call this%f_list%jm_addAt_2(j_index, j_layerInterface)
                    return
                end if
                j_index = j_index + 1
            end do
            jdiscardBoolean = this%f_list%jm_add_1(j_layerInterface)
        end if
  end subroutine

  recursive subroutine ABLayerManager_jm_insert_1(this, j_layerInterface)
    class(ABLayerManager), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(AllBinaryLayer), pointer :: j_nextLayerInterface
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue
        j_size = this%f_list%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_nextLayerInterface => AllBinaryLayer_jcast(this%f_list%jm_get_1(j_index))
            if ((j_layerInterface%jm_getZP_0() > j_nextLayerInterface%jm_getZP_0())) then
                call this%jm_appendAt_2(j_layerInterface, j_index)
                return
            end if
            j_index = j_index + 1
        end do
        call this%jm_append_1(j_layerInterface)
  end subroutine

  recursive subroutine ABLayerManager_jm_append_1(this, j_layerInterface)
    class(ABLayerManager), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_layerManagerLogging%jm_append_1(j_layerInterface)
        jdiscardBoolean = this%f_list%jm_add_1(j_layerInterface)
  end subroutine

  recursive subroutine ABLayerManager_jm_appendAt_2(this, j_layerInterface, j_index)
    class(ABLayerManager), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    integer(4), value :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_layerManagerLogging%jm_appendAt_2(j_layerInterface, j_index)
        call this%f_list%jm_addAt_2(j_index, j_layerInterface)
  end subroutine

  recursive subroutine ABLayerManager_jm_remove_1(this, j_layerInterface)
    class(ABLayerManager), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    logical :: j_result
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! synchronized
            call this%f_layerManagerLogging%jm_remove_1(j_layerInterface)
            j_result = this%f_list%jm_remove_1(j_layerInterface)
            call this%f_layerManagerLogging%jm_removeResult_3(this, j_layerInterface, j_result)
  end subroutine

  recursive function ABLayerManager_jm_getLayerAt_1(this, j_index) result(jresult)
    class(ABLayerManager), target :: this
    integer(4), value :: j_index
    class(ABLayer), pointer :: jresult
        jresult => ABLayer_jcast(this%f_list%f_objectArray((j_index) + 1)%v)
        return
  end function

  recursive function ABLayerManager_jm_getSize_0(this) result(jresult)
    class(ABLayerManager), target :: this
    integer(4) :: jresult
        jresult = this%f_list%jm_size_0()
        return
  end function

  recursive subroutine ABLayerManager_jm_cleanup_0(this)
    class(ABLayerManager), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! synchronized
            call this%f_list%jm_clear_0()
            call this%f_layerManagerLogging%jm_clear_0()
            call this%f_tsUtil%jm_gc_0()
            call this%f_tsUtil%jm_gc_0()
  end subroutine

  recursive subroutine ABLayerManager_jm_paint_3(this, j_g, j_x, j_y)
    class(ABLayerManager), target :: this
    class(Graphics), target, optional :: j_g
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(ABLayer), pointer :: j_comp
    integer(4) :: j_index
    integer(4) :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! synchronized
            continue
            j_index = j_index - 1
            jtemp1 = j_index
            j_index = this%f_list%jm_size_0()
            do while ((jtemp1 >= 0))
                j_comp => ABLayer_jcast(this%f_list%f_objectArray((j_index) + 1)%v)
                if ((associated(j_comp) .and. j_comp%jm_isVisible_0())) then
                    call j_comp%jm_paint_1(j_g)
                end if
            end do
  end subroutine
end module ABLayerManager_m

