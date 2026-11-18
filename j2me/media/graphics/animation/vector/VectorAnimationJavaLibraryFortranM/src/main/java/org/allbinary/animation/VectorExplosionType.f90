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
! package org.allbinary.animation
module VectorExplosionType_m
  use JR_m
  implicit none

  type, extends(JObject) :: VectorExplosionType
  end type


contains

  function VectorExplosionType_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VectorExplosionType), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VectorExplosionType)
      jresult => object
    end select
  end function

  function VectorExplosionType_jnew_0() result(this)
    class(VectorExplosionType), pointer :: this
    allocate(this)
    this%jclass = 'VectorExplosionType'
  end function
end module VectorExplosionType_m

