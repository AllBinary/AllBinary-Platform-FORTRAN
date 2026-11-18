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
module StoreAppClientInformation_m
  use JR_m
  use LongArrayIdentifierInterface_m
  use AbeClientInformation_m
  implicit none

  type, extends(AbeClientInformation) :: StoreAppClientInformation
    integer(8), allocatable :: f_longArrayIdentifier(:)
  contains
    procedure :: jm_getLongArrayIdentifier_0 => StoreAppClientInformation_jm_getLongArrayIdentifier_0
  end type

  ! StoreAppClientInformation used as a LongArrayIdentifierInterface
  type, extends(LongArrayIdentifierInterface) :: StoreAppClientInformation_jas_LongArrayIdentifierInterface
    class(StoreAppClientInformation), pointer :: jtarget => null()
  contains
    procedure :: jm_getLongArrayIdentifier_0 => StoreAppClientInformation_jas_LongArrayIdentifierInterface_jm_getLongArrayIdentifier_0
  end type


contains

  function StoreAppClientInformation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(StoreAppClientInformation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (StoreAppClientInformation)
      jresult => object
    end select
  end function

  function StoreAppClientInformation_jas_LongArrayIdentifierInterface_jnew(object) result(jresult)
    class(StoreAppClientInformation), target :: object
    class(StoreAppClientInformation_jas_LongArrayIdentifierInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'StoreAppClientInformation'
    jresult%jtarget => object
  end function

  recursive function StoreAppClientInformation_jas_LongArrayIdentifierInterface_jm_getLongArrayIdentifier_0(this) result(jresult)
    class(StoreAppClientInformation_jas_LongArrayIdentifierInterface), target :: this
    integer(8), allocatable :: jresult(:)
    jresult = this%jtarget%jm_getLongArrayIdentifier_0()
  end function

  recursive function StoreAppClientInformation_jnew_5(j_name, j_version, j_specialName, j_shortName, j_longArrayIdentifier) result(this)
    character(len=*), intent(in) :: j_name
    character(len=*), intent(in) :: j_version
    character(len=*), intent(in) :: j_specialName
    character(len=*), intent(in) :: j_shortName
    integer(8) :: j_longArrayIdentifier(:)
    class(StoreAppClientInformation), pointer :: this
    allocate(this)
    this%jclass = 'StoreAppClientInformation'
    
        continue ! super()
        this%f_longArrayIdentifier = j_longArrayIdentifier
  end function

  recursive function StoreAppClientInformation_jm_getLongArrayIdentifier_0(this) result(jresult)
    class(StoreAppClientInformation), target :: this
    integer(8), allocatable :: jresult(:)
        jresult = this%f_longArrayIdentifier
        return
  end function
end module StoreAppClientInformation_m

