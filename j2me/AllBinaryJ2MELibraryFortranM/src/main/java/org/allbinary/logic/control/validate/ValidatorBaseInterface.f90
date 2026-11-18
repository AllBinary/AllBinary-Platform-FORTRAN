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
module ValidatorBaseInterface_m
  use JR_m
  use ABHashtable_m
  use BasicArrayList_m
  use Boolean_m
  implicit none

  type, extends(JObject) :: ValidatorBaseInterface
  contains
    procedure :: jm_isValid_0 => ValidatorBaseInterface_jm_isValid_0
    procedure :: jm_validationInfo_0 => ValidatorBaseInterface_jm_validationInfo_0
    procedure :: jm_toHashtable_0 => ValidatorBaseInterface_jm_toHashtable_0
    procedure :: jm_toList_0 => ValidatorBaseInterface_jm_toList_0
  end type


contains

  function ValidatorBaseInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ValidatorBaseInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ValidatorBaseInterface)
      jresult => object
    end select
  end function

  function ValidatorBaseInterface_jnew_0() result(this)
    class(ValidatorBaseInterface), pointer :: this
    allocate(this)
    this%jclass = 'ValidatorBaseInterface'
  end function

  recursive function ValidatorBaseInterface_jm_isValid_0(this) result(jresult)
    class(ValidatorBaseInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: ValidatorBaseInterface.isValid'
  end function

  recursive function ValidatorBaseInterface_jm_validationInfo_0(this) result(jresult)
    class(ValidatorBaseInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: ValidatorBaseInterface.validationInfo'
  end function

  recursive function ValidatorBaseInterface_jm_toHashtable_0(this) result(jresult)
    class(ValidatorBaseInterface), target :: this
    class(ABHashtable), pointer :: jresult
    error stop 'AbstractMethodError: ValidatorBaseInterface.toHashtable'
  end function

  recursive function ValidatorBaseInterface_jm_toList_0(this) result(jresult)
    class(ValidatorBaseInterface), target :: this
    class(BasicArrayList), pointer :: jresult
    error stop 'AbstractMethodError: ValidatorBaseInterface.toList'
  end function
end module ValidatorBaseInterface_m

