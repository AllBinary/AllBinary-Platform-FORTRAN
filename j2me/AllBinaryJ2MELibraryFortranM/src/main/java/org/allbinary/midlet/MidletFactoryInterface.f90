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
! package org.allbinary.midlet
module MidletFactoryInterface_m
  use JR_m
  use AllBinaryMidlet_m
  implicit none

  type, extends(JObject) :: MidletFactoryInterface
  contains
    procedure :: jm_getInstance_0 => MidletFactoryInterface_jm_getInstance_0
  end type


contains

  function MidletFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MidletFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MidletFactoryInterface)
      jresult => object
    end select
  end function

  function MidletFactoryInterface_jnew_0() result(this)
    class(MidletFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'MidletFactoryInterface'
  end function

  recursive function MidletFactoryInterface_jm_getInstance_0(this) result(jresult)
    class(MidletFactoryInterface), target :: this
    class(MIDlet), pointer :: jresult
        jresult => AllBinaryMidlet_jm_getNullInstance_0()
        return
  end function
end module MidletFactoryInterface_m

