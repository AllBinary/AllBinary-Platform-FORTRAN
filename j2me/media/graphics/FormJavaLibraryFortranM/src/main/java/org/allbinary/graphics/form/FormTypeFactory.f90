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
module FormTypeFactory_m
  use JR_m
  use DisplayInfoSingleton_m
  use StringUtil_m
  use FormType_m
  implicit none

  type, extends(JObject) :: FormTypeFactory
    character(len=:), allocatable :: f_UNK
    class(FormType), pointer :: f_NULL_FORM_TYPE => null()
    class(FormType), pointer :: f_TEMP_HORIZONTAL_FORM => null()
    class(FormType), pointer :: f_HORIZONTAL_FORM => null()
    class(FormType), pointer :: f_VERTICAL_CENTER_FORM => null()
  contains
    procedure :: jm_getFormType_0 => FormTypeFactory_jm_getFormType_0
  end type

  class(FormTypeFactory), pointer, save :: FormTypeFactory_jcell_instance => null()
  logical, save :: FormTypeFactory_jset_instance = .false.

contains

  function FormTypeFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FormTypeFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FormTypeFactory)
      jresult => object
    end select
  end function

  function FormTypeFactory_jstatic_instance() result(jresult)
    class(FormTypeFactory), pointer :: jresult
    if (.not. FormTypeFactory_jset_instance) then
      FormTypeFactory_jset_instance = .true.
      FormTypeFactory_jcell_instance => FormTypeFactory_jnew_0()
    end if
    jresult => FormTypeFactory_jcell_instance
  end function

  subroutine FormTypeFactory_jsetstatic_instance(jvalue)
    class(FormTypeFactory), target, optional :: jvalue
    FormTypeFactory_jset_instance = .true.
    if (present(jvalue)) then
      FormTypeFactory_jcell_instance => jvalue
    else
      FormTypeFactory_jcell_instance => null()
    end if
  end subroutine

  function FormTypeFactory_jnew_0() result(this)
    class(FormTypeFactory), pointer :: this
    class(StringUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'FormTypeFactory'
    this%f_UNK = ''
    this%f_UNK = 'Unknown FormType'
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_NULL_FORM_TYPE => FormType_jnew_1(jtemp1%f_NULL_STRING)
    this%f_TEMP_HORIZONTAL_FORM => FormType_jnew_1('TempHorizontal')
    this%f_HORIZONTAL_FORM => FormType_jnew_1('Horizontal')
    this%f_VERTICAL_CENTER_FORM => FormType_jnew_1('Vertical')
  end function

  recursive function FormTypeFactory_jm_getInstance_0() result(jresult)
    class(FormTypeFactory), pointer :: jresult
        jresult => FormTypeFactory_jstatic_instance()
        return
  end function

  recursive function FormTypeFactory_jm_getFormType_0(this) result(jresult)
    class(FormTypeFactory), target :: this
    class(FormType), pointer :: jresult
    class(DisplayInfoSingleton), pointer :: j_displayInfo
    class(FormType), pointer :: j_formType
        j_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
        continue
        if (j_displayInfo%jm_isPortrait_0()) then
            j_formType => this%f_VERTICAL_CENTER_FORM
        else
            j_formType => this%f_HORIZONTAL_FORM
        end if
        jresult => j_formType
        return
  end function
end module FormTypeFactory_m

