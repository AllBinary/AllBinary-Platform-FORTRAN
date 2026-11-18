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
! package org.allbinary.layer
module AllBinaryLayerFactoryInterface_m
  use JR_m
  use AllBinaryLayer_m
  implicit none

  type, extends(JObject) :: AllBinaryLayerFactoryInterface
  contains
    procedure :: jm_getInstance_0 => AllBinaryLayerFactoryInterface_jm_getInstance_0
  end type


contains

  function AllBinaryLayerFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryLayerFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryLayerFactoryInterface)
      jresult => object
    end select
  end function

  function AllBinaryLayerFactoryInterface_jnew_0() result(this)
    class(AllBinaryLayerFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryLayerFactoryInterface'
  end function

  recursive function AllBinaryLayerFactoryInterface_jm_getInstance_0(this) result(jresult)
    class(AllBinaryLayerFactoryInterface), target :: this
    class(AllBinaryLayer), pointer :: jresult
    error stop 'AbstractMethodError: AllBinaryLayerFactoryInterface.getInstance'
  end function
end module AllBinaryLayerFactoryInterface_m

