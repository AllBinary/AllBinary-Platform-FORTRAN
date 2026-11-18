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
! package org.allbinary.logic.control.validate
module ValidatorBase_m
  use JR_m
  use StdUtil_m
  use BooleanFactory_m
  use StringUtil_m
  use BasicArrayList_m
  use BasicArrayListUtil_m
  use ABHashtable_m
  use Boolean_m
  use ValidatorBaseInterface_m
  implicit none

  type, extends(ValidatorBaseInterface) :: ValidatorBase
  contains
    procedure :: jm_isValid_0 => ValidatorBase_jm_isValid_0
    procedure :: jm_validationInfo_0 => ValidatorBase_jm_validationInfo_0
    procedure :: jm_toHashtable_0 => ValidatorBase_jm_toHashtable_0
    procedure :: jm_toList_0 => ValidatorBase_jm_toList_0
  end type

  class(ValidatorBase), pointer, save :: ValidatorBase_jcell_instance => null()
  logical, save :: ValidatorBase_jset_instance = .false.

contains

  function ValidatorBase_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ValidatorBase), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ValidatorBase)
      jresult => object
    end select
  end function

  function ValidatorBase_jstatic_instance() result(jresult)
    class(ValidatorBase), pointer :: jresult
    if (.not. ValidatorBase_jset_instance) then
      ValidatorBase_jset_instance = .true.
      ValidatorBase_jcell_instance => ValidatorBase_jnew_0()
    end if
    jresult => ValidatorBase_jcell_instance
  end function

  subroutine ValidatorBase_jsetstatic_instance(jvalue)
    class(ValidatorBase), target, optional :: jvalue
    ValidatorBase_jset_instance = .true.
    if (present(jvalue)) then
      ValidatorBase_jcell_instance => jvalue
    else
      ValidatorBase_jcell_instance => null()
    end if
  end subroutine

  recursive function ValidatorBase_jnew_0() result(this)
    class(ValidatorBase), pointer :: this
    allocate(this)
    this%jclass = 'ValidatorBase'
        continue
  end function

  recursive function ValidatorBase_jm_getInstance_0() result(jresult)
    class(ValidatorBase), pointer :: jresult
        jresult => ValidatorBase_jstatic_instance()
        return
  end function

  recursive function ValidatorBase_jm_isValid_0(this) result(jresult)
    class(ValidatorBase), target :: this
    logical :: jresult
    class(BooleanFactory), pointer :: jtemp1
        jtemp1 => BooleanFactory_jm_getInstance_0()
        jresult = jtemp1%f_TRUE
        return
  end function

  recursive function ValidatorBase_jm_validationInfo_0(this) result(jresult)
    class(ValidatorBase), target :: this
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp2
        jtemp2 => StringUtil_jm_getInstance_0()
        jresult = jtemp2%f_EMPTY_STRING
        return
  end function

  recursive function ValidatorBase_jm_toHashtable_0(this) result(jresult)
    class(ValidatorBase), target :: this
    class(ABHashtable), pointer :: jresult
    class(StdUtil), pointer :: jtemp3
        jtemp3 => StdUtil_jm_getInstance_0()
        jresult => jtemp3%f_NULL_TABLE
        return
  end function

  recursive function ValidatorBase_jm_toList_0(this) result(jresult)
    class(ValidatorBase), target :: this
    class(BasicArrayList), pointer :: jresult
    class(BasicArrayListUtil), pointer :: jtemp4
        jtemp4 => BasicArrayListUtil_jm_getInstance_0()
        jresult => jtemp4%jm_getImmutableInstance_0()
        return
  end function
end module ValidatorBase_m

