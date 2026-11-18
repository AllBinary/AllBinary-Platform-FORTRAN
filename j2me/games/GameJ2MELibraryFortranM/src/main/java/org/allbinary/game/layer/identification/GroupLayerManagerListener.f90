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
! package org.allbinary.game.layer.identification
module GroupLayerManagerListener_m
  use JR_m
  use Group_m
  use GroupInterfaceCompositeInterface_m
  use AllBinaryLayer_m
  use LayerManagerEvent_m
  use LayerManagerEventHandler_m
  use LayerManagerEventListener_m
  use ForcedLogUtil_m
  use LogUtil_m
  use StringMaker_m
  use AllBinaryEventObject_m
  use EventStrings_m
  use CommonLabels_m
  use CommonSeps_m
  use BasicArrayList_m
  use BasicArrayListD_m
  implicit none

  type, extends(LayerManagerEventListener) :: GroupLayerManagerListener
    class(LogUtil), pointer :: f_logUtil => null()
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_clear_0 => GroupLayerManagerListener_jm_clear_0
    procedure :: jm_getGroupSizeFromInterface_1 => GroupLayerManagerListener_jm_getGroupSizeFromInterface_1
    procedure :: jm_getGroupSize_1 => GroupLayerManagerListener_jm_getGroupSize_1
    procedure :: jm_getList_1 => GroupLayerManagerListener_jm_getList_1
    procedure :: jm_getListById_1 => GroupLayerManagerListener_jm_getListById_1
    procedure :: jm_getGroupSizeById_1 => GroupLayerManagerListener_jm_getGroupSizeById_1
    procedure :: jm_areAllOtherGroupsEmpty_1 => GroupLayerManagerListener_jm_areAllOtherGroupsEmpty_1
    procedure :: jm_isIdInList_2 => GroupLayerManagerListener_jm_isIdInList_2
    procedure :: jm_areAllOtherGroupsLessThan_2 => GroupLayerManagerListener_jm_areAllOtherGroupsLessThan_2
    procedure :: jm_init_1 => GroupLayerManagerListener_jm_init_1
    procedure :: jm_onEvent_1 => GroupLayerManagerListener_jm_onEvent_1
    procedure :: jm_onCreateLayerManagerEvent_1 => GroupLayerManagerListener_jm_onCreateLayerManagerEvent_1
    procedure :: jm_onDeleteLayerManagerEvent_1 => GroupLayerManagerListener_jm_onDeleteLayerManagerEvent_1
    procedure :: jm_log_0 => GroupLayerManagerListener_jm_log_0
  end type

  class(GroupLayerManagerListener), pointer, save :: GroupLayerManagerListener_jcell_SINGLETON => null()
  logical, save :: GroupLayerManagerListener_jset_SINGLETON = .false.

contains

  function GroupLayerManagerListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GroupLayerManagerListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GroupLayerManagerListener)
      jresult => object
    end select
  end function

  function GroupLayerManagerListener_jstatic_SINGLETON() result(jresult)
    class(GroupLayerManagerListener), pointer :: jresult
    if (.not. GroupLayerManagerListener_jset_SINGLETON) then
      GroupLayerManagerListener_jset_SINGLETON = .true.
      GroupLayerManagerListener_jcell_SINGLETON => GroupLayerManagerListener_jnew_0()
    end if
    jresult => GroupLayerManagerListener_jcell_SINGLETON
  end function

  subroutine GroupLayerManagerListener_jsetstatic_SINGLETON(jvalue)
    class(GroupLayerManagerListener), target, optional :: jvalue
    GroupLayerManagerListener_jset_SINGLETON = .true.
    if (present(jvalue)) then
      GroupLayerManagerListener_jcell_SINGLETON => jvalue
    else
      GroupLayerManagerListener_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function GroupLayerManagerListener_jnew_0() result(this)
    class(GroupLayerManagerListener), pointer :: this
    class(LayerManagerEventHandler), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'GroupLayerManagerListener'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_list => BasicArrayListD_jnew_0()
        jtemp1 => LayerManagerEventHandler_jm_getInstance_0()
        call jtemp1%jm_addListener_1(this)
  end function

  recursive function GroupLayerManagerListener_jm_getInstance_0() result(jresult)
    class(GroupLayerManagerListener), pointer :: jresult
        jresult => GroupLayerManagerListener_jstatic_SINGLETON()
        return
  end function

  recursive subroutine GroupLayerManagerListener_jm_clear_0(this)
    class(GroupLayerManagerListener), target :: this
    class(BasicArrayList), pointer :: j_groupList
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
        j_index = (j_size - 1)
        do while ((j_index >= 0))
            j_groupList => BasicArrayList_jcast(this%f_list%f_objectArray((j_index) + 1)%v)
            call j_groupList%jm_clear_0()
            j_index = j_index - 1
        end do
  end subroutine

  recursive function GroupLayerManagerListener_jm_getGroupSizeFromInterface_1(this, j_groupInterfaceCompositeInterface) result(jresult)
    class(GroupLayerManagerListener), target :: this
    class(GroupInterfaceCompositeInterface), target, optional :: j_groupInterfaceCompositeInterface
    integer(4) :: jresult
    type(JRef), allocatable :: j_groupInterfaceArray(:)
        j_groupInterfaceArray = j_groupInterfaceCompositeInterface%jm_getGroupInterface_0()
        jresult = this%jm_getGroupSize_1(Group_jcast(j_groupInterfaceArray((0) + 1)%v))
        return
  end function

  recursive function GroupLayerManagerListener_jm_getGroupSize_1(this, j_groupInterface) result(jresult)
    class(GroupLayerManagerListener), target :: this
    class(Group), target, optional :: j_groupInterface
    integer(4) :: jresult
    integer(4) :: j_id
        j_id = j_groupInterface%jm_getGroupId_0()
        jresult = this%jm_getGroupSizeById_1(j_id)
        return
  end function

  recursive function GroupLayerManagerListener_jm_getList_1(this, j_groupInterface) result(jresult)
    class(GroupLayerManagerListener), target :: this
    class(Group), target, optional :: j_groupInterface
    class(BasicArrayList), pointer :: jresult
    integer(4) :: j_id
        j_id = j_groupInterface%jm_getGroupId_0()
        jresult => this%jm_getListById_1(j_id)
        return
  end function

  recursive function GroupLayerManagerListener_jm_getListById_1(this, j_groupId) result(jresult)
    class(GroupLayerManagerListener), target :: this
    integer(4), value :: j_groupId
    class(BasicArrayList), pointer :: jresult
    class(BasicArrayList), pointer :: j_groupList
        j_groupList => BasicArrayList_jcast(this%f_list%f_objectArray((j_groupId) + 1)%v)
        jresult => j_groupList
        return
  end function

  recursive function GroupLayerManagerListener_jm_getGroupSizeById_1(this, j_groupId) result(jresult)
    class(GroupLayerManagerListener), target :: this
    integer(4), value :: j_groupId
    integer(4) :: jresult
    class(BasicArrayList), pointer :: j_groupList
    integer(4) :: j_size
        j_groupList => BasicArrayList_jcast(this%f_list%f_objectArray((j_groupId) + 1)%v)
        j_size = j_groupList%jm_size_0()
        jresult = j_size
        return
  end function

  recursive function GroupLayerManagerListener_jm_areAllOtherGroupsEmpty_1(this, j_groupInterface) result(jresult)
    class(GroupLayerManagerListener), target :: this
    class(Group), target, optional :: j_groupInterface
    logical :: jresult
    integer(4) :: j_id
    integer(4) :: j_size
    integer(4) :: j_groupSize
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_id = j_groupInterface%jm_getGroupId_0()
        j_size = this%f_list%jm_size_0()
        j_index = (j_size - 1)
        do while ((j_index >= 0))
            if ((j_id /= j_index)) then
                j_groupSize = this%jm_getGroupSizeById_1(j_index)
                if ((j_groupSize /= 0)) then
                    jtemp4 => StringMaker_jnew_0()
                    jtemp3 => jtemp4%jm_append_1('Group Size: ')
                    jtemp2 => jtemp3%jm_appendint_1(j_groupSize)
                    call this%f_logUtil%jm_putF_3(jtemp2%jm_toString_0(), this, 'areAllOtherGroupsEmpty')
                    jresult = .false.
                    return
                end if
            end if
            j_index = j_index - 1
        end do
        jresult = .true.
        return
  end function

  recursive function GroupLayerManagerListener_jm_isIdInList_2(this, j_id, j_excludeGroupList) result(jresult)
    class(GroupLayerManagerListener), target :: this
    integer(4), value :: j_id
    class(BasicArrayList), target, optional :: j_excludeGroupList
    logical :: jresult
    integer(4) :: j_size
    type(JRef), allocatable :: j_groupInterfaceArray(:)
    class(Group), pointer :: j_groupInterface
    integer(4) :: j_groupId
    integer(4) :: j_size2
    integer(4) :: j_index2
    integer(4) :: j_index
        j_size = j_excludeGroupList%jm_size_0()
        continue
        continue
        continue
        j_index = (j_size - 1)
        do while ((j_index >= 0))
            j_groupInterfaceArray = j_excludeGroupList%f_objectArray((j_index) + 1)%v
            j_size2 = size(j_groupInterfaceArray, 1)
            j_index2 = 0
            do while ((j_index2 < j_size2))
                j_groupInterface => Group_jcast(j_groupInterfaceArray((j_index2) + 1)%v)
                j_groupId = j_groupInterface%jm_getGroupId_0()
                if ((j_groupId == j_id)) then
                    jresult = .true.
                    return
                end if
                j_index2 = j_index2 + 1
            end do
            j_index = j_index - 1
        end do
        jresult = .false.
        return
  end function

  recursive function GroupLayerManagerListener_jm_areAllOtherGroupsLessThan_2(this, j_excludeGroupList, j_maxSize) result(jresult)
    class(GroupLayerManagerListener), target :: this
    class(BasicArrayList), target, optional :: j_excludeGroupList
    integer(4), value :: j_maxSize
    logical :: jresult
    integer(4) :: j_size
    integer(4) :: j_groupSize
    integer(4) :: j_index
        j_size = this%f_list%jm_size_0()
        j_index = (j_size - 1)
        do while ((j_index >= 0))
            if ((.not. this%jm_isIdInList_2(j_index, j_excludeGroupList))) then
                j_groupSize = this%jm_getGroupSizeById_1(j_index)
                if ((j_groupSize >= j_maxSize)) then
                    jresult = .false.
                    return
                end if
            end if
            j_index = j_index - 1
        end do
        jresult = .true.
        return
  end function

  recursive subroutine GroupLayerManagerListener_jm_init_1(this, j_total)
    class(GroupLayerManagerListener), target :: this
    integer(4), value :: j_total
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        do while ((this%f_list%jm_size_0() <= (j_total + 1)))
            jdiscardBoolean = this%f_list%jm_add_1(BasicArrayListD_jnew_0())
        end do
  end subroutine

  recursive subroutine GroupLayerManagerListener_jm_onEvent_1(this, j_eventObject)
    class(GroupLayerManagerListener), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventStrings), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp5 => EventStrings_jm_getInstance_0()
        call ForcedLogUtil_jm_log_2(jtemp5%f_PERFORMANCE_MESSAGE, this)
  end subroutine

  recursive subroutine GroupLayerManagerListener_jm_onCreateLayerManagerEvent_1(this, j_layerManagerEvent)
    class(GroupLayerManagerListener), target :: this
    class(LayerManagerEvent), target, optional :: j_layerManagerEvent
    class(AllBinaryLayer), pointer :: j_layerInterface
    type(JRef), allocatable :: j_groupInterfaceArray(:)
    integer(4) :: j_size
    integer(4) :: j_id
    class(BasicArrayList), pointer :: j_groupList
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_layerInterface => j_layerManagerEvent%jm_getLayerInterface_0()
        j_groupInterfaceArray = j_layerInterface%jm_getGroupInterface_0()
        j_size = size(j_groupInterfaceArray, 1)
        continue
        continue
        j_index = 0
        do while ((j_index < j_size))
            associate (jstaticref1 => Group_jcast(j_groupInterfaceArray((j_index) + 1)%v))
            j_id = jstaticref1%jm_getGroupId_0()
            end associate
            j_groupList => BasicArrayList_jcast(this%f_list%f_objectArray((j_id) + 1)%v)
            if ((.not. associated(j_groupList))) then
                jtemp8 => StringMaker_jnew_0()
                jtemp7 => jtemp8%jm_append_1('id: ')
                jtemp6 => jtemp7%jm_appendint_1(j_id)
                call this%f_logUtil%jm_putF_3(jtemp6%jm_toString_0(), this, 'onCreateLayerManagerEvent')
            end if
            if ((.not. j_groupList%jm_contains_1(j_layerInterface))) then
                jdiscardBoolean = j_groupList%jm_add_1(j_layerInterface)
            else
                continue
            end if
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine GroupLayerManagerListener_jm_onDeleteLayerManagerEvent_1(this, j_layerManagerEvent)
    class(GroupLayerManagerListener), target :: this
    class(LayerManagerEvent), target, optional :: j_layerManagerEvent
    class(AllBinaryLayer), pointer :: j_layerInterface
    type(JRef), allocatable :: j_groupInterfaceArray(:)
    integer(4) :: j_size
    integer(4) :: j_id
    class(BasicArrayList), pointer :: j_groupList
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_layerInterface => j_layerManagerEvent%jm_getLayerInterface_0()
        j_groupInterfaceArray = j_layerInterface%jm_getGroupInterface_0()
        j_size = size(j_groupInterfaceArray, 1)
        continue
        continue
        j_index = 0
        do while ((j_index < j_size))
            associate (jstaticref2 => Group_jcast(j_groupInterfaceArray((j_index) + 1)%v))
            j_id = jstaticref2%jm_getGroupId_0()
            end associate
            j_groupList => BasicArrayList_jcast(this%f_list%f_objectArray((j_id) + 1)%v)
            jdiscardBoolean = j_groupList%jm_remove_1(j_layerInterface)
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine GroupLayerManagerListener_jm_log_0(this)
    class(GroupLayerManagerListener), target :: this
    class(StringMaker), pointer :: j_stringBuffer
    character(len=:), allocatable :: j_GROUP
    character(len=:), allocatable :: j_SPACE
    character(len=:), allocatable :: j_TOTAL_LABEL
    integer(4) :: j_size
    class(BasicArrayList), pointer :: j_groupList
    integer(4) :: j_index
    class(CommonSeps), pointer :: jtemp9
    class(CommonLabels), pointer :: jtemp10
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        j_GROUP = 'Group: '
        jtemp9 => CommonSeps_jm_getInstance_0()
        j_SPACE = jtemp9%f_SPACE
        jtemp10 => CommonLabels_jm_getInstance_0()
        j_TOTAL_LABEL = jtemp10%f_TOTAL_LABEL
        j_size = this%f_list%jm_size_0()
        j_index = (j_size - 1)
        do while ((j_index >= 0))
            j_groupList => BasicArrayList_jcast(this%f_list%f_objectArray((j_index) + 1)%v)
            jdiscardRef => j_stringBuffer%jm_append_1(j_GROUP)
            jdiscardRef => j_stringBuffer%jm_appendint_1(j_index)
            jdiscardRef => j_stringBuffer%jm_append_1(j_SPACE)
            jdiscardRef => j_stringBuffer%jm_append_1(j_TOTAL_LABEL)
            jdiscardRef => j_stringBuffer%jm_appendint_1(j_groupList%jm_size_0())
            jdiscardRef => j_stringBuffer%jm_append_1(j_SPACE)
            j_index = j_index - 1
        end do
        call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, 'log')
  end subroutine
end module GroupLayerManagerListener_m

function GroupLayerManagerListener_jnew_0_jext() result(this)
  use GroupLayerManagerListener_m, only: JObject, GroupLayerManagerListener_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => GroupLayerManagerListener_jnew_0()
end function

