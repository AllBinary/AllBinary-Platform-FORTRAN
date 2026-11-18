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
module ThirdPartyInApplicationPurchase_m
  use JR_m
  use StringUtil_m
  use ThirdPartyInApplicationPurchaseInterface_m
  use LockableFeature_m
  implicit none

  type, extends(ThirdPartyInApplicationPurchaseInterface) :: ThirdPartyInApplicationPurchase
  contains
    procedure :: jm_isPurchased_1 => ThirdPartyInApplicationPurchase_jm_isPurchased_1
    procedure :: jm_onCreate_2 => ThirdPartyInApplicationPurchase_jm_onCreate_2
    procedure :: jm_onDestroy_0 => ThirdPartyInApplicationPurchase_jm_onDestroy_0
    procedure :: jm_onStart_0 => ThirdPartyInApplicationPurchase_jm_onStart_0
    procedure :: jm_onActivityResult_3 => ThirdPartyInApplicationPurchase_jm_onActivityResult_3
    procedure :: jm_onSaveInstanceState_1 => ThirdPartyInApplicationPurchase_jm_onSaveInstanceState_1
    procedure :: jm_onStop_0 => ThirdPartyInApplicationPurchase_jm_onStop_0
    procedure :: jm_requestPurchase_1 => ThirdPartyInApplicationPurchase_jm_requestPurchase_1
    procedure :: jm_requestReceipts_0 => ThirdPartyInApplicationPurchase_jm_requestReceipts_0
    procedure :: jm_add_1 => ThirdPartyInApplicationPurchase_jm_add_1
    procedure :: jm_getUserName_0 => ThirdPartyInApplicationPurchase_jm_getUserName_0
    procedure :: jm_isEnabled_0 => ThirdPartyInApplicationPurchase_jm_isEnabled_0
    procedure :: jm_requestProducts_0 => ThirdPartyInApplicationPurchase_jm_requestProducts_0
  end type


contains

  function ThirdPartyInApplicationPurchase_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ThirdPartyInApplicationPurchase), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ThirdPartyInApplicationPurchase)
      jresult => object
    end select
  end function

  function ThirdPartyInApplicationPurchase_jnew_0() result(this)
    class(ThirdPartyInApplicationPurchase), pointer :: this
    allocate(this)
    this%jclass = 'ThirdPartyInApplicationPurchase'
  end function

  recursive function ThirdPartyInApplicationPurchase_jm_isPurchased_1(this, j_lockableFeature) result(jresult)
    class(ThirdPartyInApplicationPurchase), target :: this
    class(LockableFeature), target, optional :: j_lockableFeature
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine ThirdPartyInApplicationPurchase_jm_onCreate_2(this, j_anyType, j_stateObject)
    class(ThirdPartyInApplicationPurchase), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), target, optional :: j_stateObject
    continue
  end subroutine

  recursive subroutine ThirdPartyInApplicationPurchase_jm_onDestroy_0(this)
    class(ThirdPartyInApplicationPurchase), target :: this
    continue
  end subroutine

  recursive subroutine ThirdPartyInApplicationPurchase_jm_onStart_0(this)
    class(ThirdPartyInApplicationPurchase), target :: this
    continue
  end subroutine

  recursive subroutine ThirdPartyInApplicationPurchase_jm_onActivityResult_3(this, j_requestCode, j_resultCode, j_dataObject)
    class(ThirdPartyInApplicationPurchase), target :: this
    integer(4), value :: j_requestCode
    integer(4), value :: j_resultCode
    class(JObject), target, optional :: j_dataObject
    continue
  end subroutine

  recursive subroutine ThirdPartyInApplicationPurchase_jm_onSaveInstanceState_1(this, j_anyType)
    class(ThirdPartyInApplicationPurchase), target :: this
    class(JObject), target, optional :: j_anyType
    continue
  end subroutine

  recursive subroutine ThirdPartyInApplicationPurchase_jm_onStop_0(this)
    class(ThirdPartyInApplicationPurchase), target :: this
    continue
  end subroutine

  recursive subroutine ThirdPartyInApplicationPurchase_jm_requestPurchase_1(this, j_lockableFeature)
    class(ThirdPartyInApplicationPurchase), target :: this
    class(LockableFeature), target, optional :: j_lockableFeature
    continue
  end subroutine

  recursive subroutine ThirdPartyInApplicationPurchase_jm_requestReceipts_0(this)
    class(ThirdPartyInApplicationPurchase), target :: this
    continue
  end subroutine

  recursive subroutine ThirdPartyInApplicationPurchase_jm_add_1(this, j_lockableFeature)
    class(ThirdPartyInApplicationPurchase), target :: this
    class(LockableFeature), target, optional :: j_lockableFeature
    continue
  end subroutine

  recursive function ThirdPartyInApplicationPurchase_jm_getUserName_0(this) result(jresult)
    class(ThirdPartyInApplicationPurchase), target :: this
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp1
        jtemp1 => StringUtil_jm_getInstance_0()
        jresult = jtemp1%f_EMPTY_STRING
        return
  end function

  recursive function ThirdPartyInApplicationPurchase_jm_isEnabled_0(this) result(jresult)
    class(ThirdPartyInApplicationPurchase), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine ThirdPartyInApplicationPurchase_jm_requestProducts_0(this)
    class(ThirdPartyInApplicationPurchase), target :: this
    continue
  end subroutine
end module ThirdPartyInApplicationPurchase_m

