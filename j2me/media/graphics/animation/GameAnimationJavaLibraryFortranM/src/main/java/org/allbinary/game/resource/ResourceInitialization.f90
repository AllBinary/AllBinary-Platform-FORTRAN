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
! package org.allbinary.game.resource
module ResourceInitialization_m
  use JR_m
  use Init_m
  implicit none

  type, extends(Init) :: ResourceInitialization
  end type


contains

  function ResourceInitialization_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ResourceInitialization), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ResourceInitialization)
      jresult => object
    end select
  end function

  function ResourceInitialization_jnew_0() result(this)
    class(ResourceInitialization), pointer :: this
    allocate(this)
    this%jclass = 'ResourceInitialization'
  end function
end module ResourceInitialization_m

function ResourceInitialization_jnew_0_jext() result(this)
  use ResourceInitialization_m, only: JObject, ResourceInitialization_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ResourceInitialization_jnew_0()
end function

