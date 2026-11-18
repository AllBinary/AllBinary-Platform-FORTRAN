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
! package org.allbinary.logic.system.security.licensing
module InApplicationPurchaseFactory_m
  use JR_m
  use StringUtil_m
  use LockableFeature_m
  implicit none

  type, extends(JObject) :: InApplicationPurchaseFactory
  contains
    procedure :: jm_init_2 => InApplicationPurchaseFactory_jm_init_2
    procedure :: jm_onCreate_2 => InApplicationPurchaseFactory_jm_onCreate_2
    procedure :: jm_onStart_0 => InApplicationPurchaseFactory_jm_onStart_0
    procedure :: jm_onResult_3 => InApplicationPurchaseFactory_jm_onResult_3
    procedure :: jm_onSaveState_1 => InApplicationPurchaseFactory_jm_onSaveState_1
    procedure :: jm_onStop_0 => InApplicationPurchaseFactory_jm_onStop_0
    procedure :: jm_onDestroy_0 => InApplicationPurchaseFactory_jm_onDestroy_0
    procedure :: jm_purchase_1 => InApplicationPurchaseFactory_jm_purchase_1
    procedure :: jm_isPurchased_1 => InApplicationPurchaseFactory_jm_isPurchased_1
    procedure :: jm_add_1 => InApplicationPurchaseFactory_jm_add_1
    procedure :: jm_getUserName_0 => InApplicationPurchaseFactory_jm_getUserName_0
    procedure :: jm_isEnabled_0 => InApplicationPurchaseFactory_jm_isEnabled_0
  end type

  class(InApplicationPurchaseFactory), pointer, save :: InApplicationPurchaseFactory_jcell_instance => null()
  logical, save :: InApplicationPurchaseFactory_jset_instance = .false.

contains

  function InApplicationPurchaseFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InApplicationPurchaseFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InApplicationPurchaseFactory)
      jresult => object
    end select
  end function

  function InApplicationPurchaseFactory_jstatic_instance() result(jresult)
    class(InApplicationPurchaseFactory), pointer :: jresult
    if (.not. InApplicationPurchaseFactory_jset_instance) then
      InApplicationPurchaseFactory_jset_instance = .true.
      InApplicationPurchaseFactory_jcell_instance => InApplicationPurchaseFactory_jnew_0()
    end if
    jresult => InApplicationPurchaseFactory_jcell_instance
  end function

  subroutine InApplicationPurchaseFactory_jsetstatic_instance(jvalue)
    class(InApplicationPurchaseFactory), target, optional :: jvalue
    InApplicationPurchaseFactory_jset_instance = .true.
    if (present(jvalue)) then
      InApplicationPurchaseFactory_jcell_instance => jvalue
    else
      InApplicationPurchaseFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function InApplicationPurchaseFactory_jnew_0() result(this)
    class(InApplicationPurchaseFactory), pointer :: this
    allocate(this)
    this%jclass = 'InApplicationPurchaseFactory'
        continue
  end function

  recursive function InApplicationPurchaseFactory_jm_getInstance_0() result(jresult)
    class(InApplicationPurchaseFactory), pointer :: jresult
        jresult => InApplicationPurchaseFactory_jstatic_instance()
        return
  end function

  recursive subroutine InApplicationPurchaseFactory_jm_init_2(this, j_anyType, j_stateObject)
    class(InApplicationPurchaseFactory), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), target, optional :: j_stateObject
    continue
  end subroutine

  recursive subroutine InApplicationPurchaseFactory_jm_onCreate_2(this, j_anyType, j_stateObject)
    class(InApplicationPurchaseFactory), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), target, optional :: j_stateObject
    continue
  end subroutine

  recursive subroutine InApplicationPurchaseFactory_jm_onStart_0(this)
    class(InApplicationPurchaseFactory), target :: this
    continue
  end subroutine

  recursive subroutine InApplicationPurchaseFactory_jm_onResult_3(this, j_requestCode, j_resultCode, j_data)
    class(InApplicationPurchaseFactory), target :: this
    integer(4), value :: j_requestCode
    integer(4), value :: j_resultCode
    class(JObject), target, optional :: j_data
    continue
  end subroutine

  recursive subroutine InApplicationPurchaseFactory_jm_onSaveState_1(this, j_anyType)
    class(InApplicationPurchaseFactory), target :: this
    class(JObject), target, optional :: j_anyType
    continue
  end subroutine

  recursive subroutine InApplicationPurchaseFactory_jm_onStop_0(this)
    class(InApplicationPurchaseFactory), target :: this
    continue
  end subroutine

  recursive subroutine InApplicationPurchaseFactory_jm_onDestroy_0(this)
    class(InApplicationPurchaseFactory), target :: this
    continue
  end subroutine

  recursive subroutine InApplicationPurchaseFactory_jm_purchase_1(this, j_lockableFeature)
    class(InApplicationPurchaseFactory), target :: this
    class(LockableFeature), target, optional :: j_lockableFeature
    continue
  end subroutine

  recursive function InApplicationPurchaseFactory_jm_isPurchased_1(this, j_lockableFeature) result(jresult)
    class(InApplicationPurchaseFactory), target :: this
    class(LockableFeature), target, optional :: j_lockableFeature
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine InApplicationPurchaseFactory_jm_add_1(this, j_lockableFeature)
    class(InApplicationPurchaseFactory), target :: this
    class(LockableFeature), target, optional :: j_lockableFeature
    continue
  end subroutine

  recursive function InApplicationPurchaseFactory_jm_getUserName_0(this) result(jresult)
    class(InApplicationPurchaseFactory), target :: this
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp1
        jtemp1 => StringUtil_jm_getInstance_0()
        jresult = jtemp1%f_EMPTY_STRING
        return
  end function

  recursive function InApplicationPurchaseFactory_jm_isEnabled_0(this) result(jresult)
    class(InApplicationPurchaseFactory), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function
end module InApplicationPurchaseFactory_m

