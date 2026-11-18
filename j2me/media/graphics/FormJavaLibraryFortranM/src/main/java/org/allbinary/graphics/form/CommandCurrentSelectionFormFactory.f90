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
! package org.allbinary.graphics.form
module CommandCurrentSelectionFormFactory_m
  use JR_m
  use Features_m
  use TouchFeatureFactory_m
  use Rectangle_m
  use BasicColor_m
  use ABCustomItem_m
  use ScrollSelectionFormNoneFactory_m
  use CommandCurrentSelectionForm_m
  use ScrollSelectionForm_m
  use FormType_m
  implicit none

  type, extends(JObject) :: CommandCurrentSelectionFormFactory
  end type


contains

  function CommandCurrentSelectionFormFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CommandCurrentSelectionFormFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CommandCurrentSelectionFormFactory)
      jresult => object
    end select
  end function

  function CommandCurrentSelectionFormFactory_jnew_0() result(this)
    class(CommandCurrentSelectionFormFactory), pointer :: this
    allocate(this)
    this%jclass = 'CommandCurrentSelectionFormFactory'
  end function

  recursive function CommandCurrentSelectionFormFactory_jm_getInstance_8(j_title, j_items, j_rectangle, j_formType, j_border, j_moveForSmallScreen, j_backgroundBasicColor, j_foregroundBasicColor) result(jresult)
    character(len=*), intent(in) :: j_title
    type(JRef) :: j_items(:)
    class(Rectangle), target, optional :: j_rectangle
    class(FormType), target, optional :: j_formType
    integer(4), value :: j_border
    logical, value :: j_moveForSmallScreen
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(ScrollSelectionForm), pointer :: jresult
    class(ScrollSelectionForm), pointer :: j_scrollSelectionForm
    class(Features), pointer :: jtemp1
    class(TouchFeatureFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => TouchFeatureFactory_jm_getInstance_0()
        jtemp1 => Features_jm_getInstance_0()
        if (jtemp1%jm_isFeature_1(jtemp2%f_TOUCH_ENABLED)) then
            j_scrollSelectionForm => CommandCurrentSelectionForm_jnew_6(j_title, j_items, j_border, j_moveForSmallScreen, j_backgroundBasicColor, j_foregroundBasicColor)
            call j_scrollSelectionForm%jm_init_2(j_rectangle, j_formType)
            jresult => j_scrollSelectionForm
            return
        else
            jresult => ScrollSelectionFormNoneFactory_jm_getInstance_0()
            return
        end if
  end function
end module CommandCurrentSelectionFormFactory_m

