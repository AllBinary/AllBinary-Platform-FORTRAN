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
module IconLayerFactory_m
  use JR_m
  use Animation_m
  use IconLayer_m
  implicit none

  type, extends(JObject) :: IconLayerFactory
  end type


contains

  function IconLayerFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(IconLayerFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (IconLayerFactory)
      jresult => object
    end select
  end function

  function IconLayerFactory_jnew_0() result(this)
    class(IconLayerFactory), pointer :: this
    allocate(this)
    this%jclass = 'IconLayerFactory'
  end function

  recursive function IconLayerFactory_jm_getInstance_3(j_animationInterface, j_width, j_height) result(jresult)
    class(Animation), target, optional :: j_animationInterface
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(IconLayer), pointer :: jresult
        jresult => IconLayer_jnew_3(j_animationInterface, j_width, j_height)
        return
  end function
end module IconLayerFactory_m

