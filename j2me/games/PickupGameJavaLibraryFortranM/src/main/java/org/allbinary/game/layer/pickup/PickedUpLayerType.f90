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
! package org.allbinary.game.layer.pickup
module PickedUpLayerType_m
  use JR_m
  implicit none

  type, extends(JObject) :: PickedUpLayerType
    character(len=:), allocatable :: f_name
  contains
    procedure :: jm_toString_0 => PickedUpLayerType_jm_toString_0
  end type


contains

  function PickedUpLayerType_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PickedUpLayerType), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PickedUpLayerType)
      jresult => object
    end select
  end function

  recursive function PickedUpLayerType_jnew_1(j_name) result(this)
    character(len=*), intent(in) :: j_name
    class(PickedUpLayerType), pointer :: this
    allocate(this)
    this%jclass = 'PickedUpLayerType'
    this%f_name = ''
    
        this%f_name = j_name
  end function

  recursive function PickedUpLayerType_jm_toString_0(this) result(jresult)
    class(PickedUpLayerType), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function
end module PickedUpLayerType_m

