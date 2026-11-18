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
! package org.allbinary.thirdparty.store
module ThirdPartyStoreFactory_m
  use JR_m
  use NoThirdPartyStore_m
  use ThirdPartyStore_m
  implicit none

  type, extends(JObject) :: ThirdPartyStoreFactory
  end type

  class(NoThirdPartyStore), pointer, save :: ThirdPartyStoreFactory_jcell_instance => null()
  logical, save :: ThirdPartyStoreFactory_jset_instance = .false.

contains

  function ThirdPartyStoreFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ThirdPartyStoreFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ThirdPartyStoreFactory)
      jresult => object
    end select
  end function

  function ThirdPartyStoreFactory_jstatic_instance() result(jresult)
    class(NoThirdPartyStore), pointer :: jresult
    if (.not. ThirdPartyStoreFactory_jset_instance) then
      ThirdPartyStoreFactory_jset_instance = .true.
      ThirdPartyStoreFactory_jcell_instance => NoThirdPartyStore_jnew_0()
    end if
    jresult => ThirdPartyStoreFactory_jcell_instance
  end function

  subroutine ThirdPartyStoreFactory_jsetstatic_instance(jvalue)
    class(NoThirdPartyStore), target, optional :: jvalue
    ThirdPartyStoreFactory_jset_instance = .true.
    if (present(jvalue)) then
      ThirdPartyStoreFactory_jcell_instance => jvalue
    else
      ThirdPartyStoreFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function ThirdPartyStoreFactory_jnew_0() result(this)
    class(ThirdPartyStoreFactory), pointer :: this
    allocate(this)
    this%jclass = 'ThirdPartyStoreFactory'
        continue
  end function

  recursive function ThirdPartyStoreFactory_jm_getInstance_0() result(jresult)
    class(ThirdPartyStore), pointer :: jresult
        jresult => ThirdPartyStoreFactory_jstatic_instance()
        return
  end function
end module ThirdPartyStoreFactory_m

