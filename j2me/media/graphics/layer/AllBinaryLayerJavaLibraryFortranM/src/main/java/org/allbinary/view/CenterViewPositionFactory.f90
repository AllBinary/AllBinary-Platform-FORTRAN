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
! package org.allbinary.view
module CenterViewPositionFactory_m
  use JR_m
  use CenterStaticViewPositionFactory_m
  implicit none

  type, extends(CenterStaticViewPositionFactory) :: CenterViewPositionFactory
  end type


contains

  function CenterViewPositionFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CenterViewPositionFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CenterViewPositionFactory)
      jresult => object
    end select
  end function

  function CenterViewPositionFactory_jnew_0() result(this)
    class(CenterViewPositionFactory), pointer :: this
    allocate(this)
    this%jclass = 'CenterViewPositionFactory'
  end function
end module CenterViewPositionFactory_m

function CenterViewPositionFactory_jnew_0_jext() result(this)
  use CenterViewPositionFactory_m, only: JObject, CenterViewPositionFactory_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => CenterViewPositionFactory_jnew_0()
end function

