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
! package org.allbinary.graphics.form.item
module CommandTextItemArrayFactory_m
  use JR_m
  use ImageItem_m
  use BasicColor_m
  use DisplayInfoSingleton_m
  use ScreenInfo_m
  use VectorUtil_m
  use StringUtil_m
  use Visitor_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use Boolean_m
  use CommandTextItem_m
  use ABCustomItem_m
  implicit none

  type, extends(JObject) :: CommandTextItemArrayFactory
    class(BasicArrayList), pointer :: f_list => null()
    class(Visitor), pointer :: f_visitorInterface => null()
  contains
    procedure :: jm_getInstance_3 => CommandTextItemArrayFactory_jm_getInstance_3
  end type


contains

  function CommandTextItemArrayFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CommandTextItemArrayFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CommandTextItemArrayFactory)
      jresult => object
    end select
  end function

  recursive function CommandTextItemArrayFactory_jnew_1(j_visitorInterface) result(this)
    class(Visitor), target, optional :: j_visitorInterface
    class(CommandTextItemArrayFactory), pointer :: this
    allocate(this)
    this%jclass = 'CommandTextItemArrayFactory'
    this%f_list => BasicArrayListD_jnew_0()
    
        this%f_visitorInterface => j_visitorInterface
  end function

  recursive function CommandTextItemArrayFactory_jm_getInstance_3(this, j_vector, j_backgroundBasicColor, j_foregroundBasicColor) result(jresult)
    class(CommandTextItemArrayFactory), target :: this
    class(JObject), target, optional :: j_vector
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    type(JRef), allocatable :: jresult(:)
    class(VectorUtil), pointer :: j_vectorUtil
    integer(4) :: j_size
    class(CommandTextItem), pointer :: j_textItem
    integer(4) :: j_priorityLimit
    class(DisplayInfoSingleton), pointer :: j_displayInfo
    logical :: j_isLargeEnoughDisplayForBigMenu
    class(Command), pointer :: j_command
    logical :: j_aBoolean
    integer(4) :: j_index
    type(JRef), allocatable :: j_textItemArray(:)
    integer(4) :: j_size2
    class(ScreenInfo), pointer :: jtemp1
    class(ScreenInfo), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_vectorUtil => VectorUtil_jm_getInstance_0()
        j_size = j_vectorUtil%jm_getSize_1(j_vector)
        call this%f_list%jm_clear_0()
        continue
        j_priorityLimit = 7
        j_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
        jtemp1 => ScreenInfo_jm_getInstance_0()
        jtemp2 => ScreenInfo_jm_getInstance_0()
        j_isLargeEnoughDisplayForBigMenu = (((j_displayInfo%jm_isPortrait_0() .and. (j_displayInfo%jm_getLastHeight_0() >= jtemp1%f_MEDIUM_WIDTH))) .or. (((.not. j_displayInfo%jm_isPortrait_0()) .and. (j_displayInfo%jm_getLastWidth_0() >= jtemp2%f_MEDIUM_WIDTH))))
        if (((.not. j_isLargeEnoughDisplayForBigMenu) .and. (j_size > 3))) then
            j_priorityLimit = 3
        end if
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_command => Command_jcast(j_vectorUtil%jm_elementAt_2(j_vector, j_index))
            if ((j_command%jm_getPriority_0() < j_priorityLimit)) then
                j_aBoolean = JR_unboxBoolean(this%f_visitorInterface%jm_visit_1(j_command))
                if (j_aBoolean) then
                    jtemp3 => StringUtil_jm_getInstance_0()
                    j_textItem => CommandTextItem_jnew_5(j_command, ImageItem_jstatic_LAYOUT_DEFAULT(), jtemp3%f_EMPTY_STRING, j_backgroundBasicColor, j_foregroundBasicColor)
                    jdiscardBoolean = this%f_list%jm_add_1(j_textItem)
                end if
            end if
            j_index = j_index + 1
        end do
        j_textItemArray = JR_newRefArray(this%f_list%jm_size_0())
        j_size2 = size(j_textItemArray, 1)
        j_index = 0
        do while ((j_index < j_size2))
            j_textItemArray((j_index) + 1)%v => ABCustomItem_jcast(this%f_list%f_objectArray((j_index) + 1)%v)
            j_index = j_index + 1
        end do
        jresult = j_textItemArray
        return
  end function
end module CommandTextItemArrayFactory_m

