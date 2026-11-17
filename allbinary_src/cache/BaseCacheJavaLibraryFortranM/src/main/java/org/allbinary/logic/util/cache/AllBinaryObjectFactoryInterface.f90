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
! package org.allbinary.logic.util.cache
module AllBinaryObjectFactoryInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: AllBinaryObjectFactoryInterface
  contains
    procedure :: jm_getInstance_0 => AllBinaryObjectFactoryInterface_jm_getInstance_0
  end type


contains

  function AllBinaryObjectFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryObjectFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryObjectFactoryInterface)
      jresult => object
    end select
  end function

  function AllBinaryObjectFactoryInterface_jnew_0() result(this)
    class(AllBinaryObjectFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryObjectFactoryInterface'
  end function

  recursive function AllBinaryObjectFactoryInterface_jm_getInstance_0(this) result(jresult)
    class(AllBinaryObjectFactoryInterface), target :: this
    class(JObject), pointer :: jresult
    error stop 'AbstractMethodError: AllBinaryObjectFactoryInterface.getInstance'
  end function
end module AllBinaryObjectFactoryInterface_m

