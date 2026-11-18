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
module ThirdPartyInApplicationPurchaseInterface_m
  use JR_m
  use LockableFeature_m
  implicit none

  type, extends(JObject) :: ThirdPartyInApplicationPurchaseInterface
  contains
    procedure :: jm_isPurchased_1 => ThirdPartyInApplicationPurchaseInterface_jm_isPurchased_1
    procedure :: jm_onCreate_2 => ThirdPartyInApplicationPurchaseInterface_jm_onCreate_2
    procedure :: jm_onDestroy_0 => ThirdPartyInApplicationPurchaseInterface_jm_onDestroy_0
    procedure :: jm_onStart_0 => ThirdPartyInApplicationPurchaseInterface_jm_onStart_0
    procedure :: jm_onActivityResult_3 => ThirdPartyInApplicationPurchaseInterface_jm_onActivityResult_3
    procedure :: jm_onSaveInstanceState_1 => ThirdPartyInApplicationPurchaseInterface_jm_onSaveInstanceState_1
    procedure :: jm_onStop_0 => ThirdPartyInApplicationPurchaseInterface_jm_onStop_0
    procedure :: jm_requestPurchase_1 => ThirdPartyInApplicationPurchaseInterface_jm_requestPurchase_1
    procedure :: jm_requestReceipts_0 => ThirdPartyInApplicationPurchaseInterface_jm_requestReceipts_0
    procedure :: jm_add_1 => ThirdPartyInApplicationPurchaseInterface_jm_add_1
    procedure :: jm_getUserName_0 => ThirdPartyInApplicationPurchaseInterface_jm_getUserName_0
    procedure :: jm_isEnabled_0 => ThirdPartyInApplicationPurchaseInterface_jm_isEnabled_0
  end type


contains

  function ThirdPartyInApplicationPurchaseInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ThirdPartyInApplicationPurchaseInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ThirdPartyInApplicationPurchaseInterface)
      jresult => object
    end select
  end function

  function ThirdPartyInApplicationPurchaseInterface_jnew_0() result(this)
    class(ThirdPartyInApplicationPurchaseInterface), pointer :: this
    allocate(this)
    this%jclass = 'ThirdPartyInApplicationPurchaseInterface'
  end function

  recursive function ThirdPartyInApplicationPurchaseInterface_jm_isPurchased_1(this, j_lockableFeature) result(jresult)
    class(ThirdPartyInApplicationPurchaseInterface), target :: this
    class(LockableFeature), target, optional :: j_lockableFeature
    logical :: jresult
    error stop 'AbstractMethodError: ThirdPartyInApplicationPurchaseInterface.isPurchased'
  end function

  recursive subroutine ThirdPartyInApplicationPurchaseInterface_jm_onCreate_2(this, j_anyType, j_stateObject)
    class(ThirdPartyInApplicationPurchaseInterface), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), target, optional :: j_stateObject
    error stop 'AbstractMethodError: ThirdPartyInApplicationPurchaseInterface.onCreate'
  end subroutine

  recursive subroutine ThirdPartyInApplicationPurchaseInterface_jm_onDestroy_0(this)
    class(ThirdPartyInApplicationPurchaseInterface), target :: this
    error stop 'AbstractMethodError: ThirdPartyInApplicationPurchaseInterface.onDestroy'
  end subroutine

  recursive subroutine ThirdPartyInApplicationPurchaseInterface_jm_onStart_0(this)
    class(ThirdPartyInApplicationPurchaseInterface), target :: this
    error stop 'AbstractMethodError: ThirdPartyInApplicationPurchaseInterface.onStart'
  end subroutine

  recursive subroutine ThirdPartyInApplicationPurchaseInterface_jm_onActivityResult_3(this, j_requestCode, j_resultCode, j_dataObject)
    class(ThirdPartyInApplicationPurchaseInterface), target :: this
    integer(4), value :: j_requestCode
    integer(4), value :: j_resultCode
    class(JObject), target, optional :: j_dataObject
    error stop 'AbstractMethodError: ThirdPartyInApplicationPurchaseInterface.onActivityResult'
  end subroutine

  recursive subroutine ThirdPartyInApplicationPurchaseInterface_jm_onSaveInstanceState_1(this, j_anyType)
    class(ThirdPartyInApplicationPurchaseInterface), target :: this
    class(JObject), target, optional :: j_anyType
    error stop 'AbstractMethodError: ThirdPartyInApplicationPurchaseInterface.onSaveInstanceState'
  end subroutine

  recursive subroutine ThirdPartyInApplicationPurchaseInterface_jm_onStop_0(this)
    class(ThirdPartyInApplicationPurchaseInterface), target :: this
    error stop 'AbstractMethodError: ThirdPartyInApplicationPurchaseInterface.onStop'
  end subroutine

  recursive subroutine ThirdPartyInApplicationPurchaseInterface_jm_requestPurchase_1(this, j_lockableFeature)
    class(ThirdPartyInApplicationPurchaseInterface), target :: this
    class(LockableFeature), target, optional :: j_lockableFeature
    error stop 'AbstractMethodError: ThirdPartyInApplicationPurchaseInterface.requestPurchase'
  end subroutine

  recursive subroutine ThirdPartyInApplicationPurchaseInterface_jm_requestReceipts_0(this)
    class(ThirdPartyInApplicationPurchaseInterface), target :: this
    error stop 'AbstractMethodError: ThirdPartyInApplicationPurchaseInterface.requestReceipts'
  end subroutine

  recursive subroutine ThirdPartyInApplicationPurchaseInterface_jm_add_1(this, j_lockableFeature)
    class(ThirdPartyInApplicationPurchaseInterface), target :: this
    class(LockableFeature), target, optional :: j_lockableFeature
    error stop 'AbstractMethodError: ThirdPartyInApplicationPurchaseInterface.add'
  end subroutine

  recursive function ThirdPartyInApplicationPurchaseInterface_jm_getUserName_0(this) result(jresult)
    class(ThirdPartyInApplicationPurchaseInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: ThirdPartyInApplicationPurchaseInterface.getUserName'
  end function

  recursive function ThirdPartyInApplicationPurchaseInterface_jm_isEnabled_0(this) result(jresult)
    class(ThirdPartyInApplicationPurchaseInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: ThirdPartyInApplicationPurchaseInterface.isEnabled'
  end function
end module ThirdPartyInApplicationPurchaseInterface_m

