! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.logic.util.cache
module J2SECacheInterface_m
  use JR_m
  use Set_m
  use AutomaticCacheInterface_m
  implicit none

  type, extends(AutomaticCacheInterface) :: J2SECacheInterface
  contains
    procedure :: jm_keySet_0 => J2SECacheInterface_jm_keySet_0
  end type


contains

  function J2SECacheInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(J2SECacheInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (J2SECacheInterface)
      jresult => object
    end select
  end function

  function J2SECacheInterface_jnew_0() result(this)
    class(J2SECacheInterface), pointer :: this
    allocate(this)
    this%jclass = 'J2SECacheInterface'
  end function

  recursive function J2SECacheInterface_jm_keySet_0(this) result(jresult)
    class(J2SECacheInterface), target :: this
    class(JObject), pointer :: jresult
    error stop 'AbstractMethodError: J2SECacheInterface.keySet'
  end function
end module J2SECacheInterface_m

