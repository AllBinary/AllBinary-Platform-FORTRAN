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
! package org.allbinary.logic.util.event
module AllBinaryEventObjectFactoryInterface_m
  use JR_m
  use AllBinaryEventObject_m
  implicit none

  type, extends(JObject) :: AllBinaryEventObjectFactoryInterface
  contains
    procedure :: jm_getInstance_0 => AllBinaryEventObjectFactoryInterface_jm_getInstance_0
  end type


contains

  function AllBinaryEventObjectFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryEventObjectFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryEventObjectFactoryInterface)
      jresult => object
    end select
  end function

  function AllBinaryEventObjectFactoryInterface_jnew_0() result(this)
    class(AllBinaryEventObjectFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryEventObjectFactoryInterface'
  end function

  recursive function AllBinaryEventObjectFactoryInterface_jm_getInstance_0(this) result(jresult)
    class(AllBinaryEventObjectFactoryInterface), target :: this
    class(AllBinaryEventObject), pointer :: jresult
    error stop 'AbstractMethodError: AllBinaryEventObjectFactoryInterface.getInstance'
  end function
end module AllBinaryEventObjectFactoryInterface_m

