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
! package org.allbinary.game.physics.velocity
module NoDragVelocityBehavior_m
  use JR_m
  use VelocityBehaviorBase_m
  implicit none

  type, extends(VelocityBehaviorBase) :: NoDragVelocityBehavior
  end type

  class(NoDragVelocityBehavior), pointer, save :: NoDragVelocityBehavior_jcell_instance => null()
  logical, save :: NoDragVelocityBehavior_jset_instance = .false.

contains

  function NoDragVelocityBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoDragVelocityBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoDragVelocityBehavior)
      jresult => object
    end select
  end function

  function NoDragVelocityBehavior_jstatic_instance() result(jresult)
    class(NoDragVelocityBehavior), pointer :: jresult
    if (.not. NoDragVelocityBehavior_jset_instance) then
      NoDragVelocityBehavior_jset_instance = .true.
      NoDragVelocityBehavior_jcell_instance => NoDragVelocityBehavior_jnew_0()
    end if
    jresult => NoDragVelocityBehavior_jcell_instance
  end function

  subroutine NoDragVelocityBehavior_jsetstatic_instance(jvalue)
    class(NoDragVelocityBehavior), target, optional :: jvalue
    NoDragVelocityBehavior_jset_instance = .true.
    if (present(jvalue)) then
      NoDragVelocityBehavior_jcell_instance => jvalue
    else
      NoDragVelocityBehavior_jcell_instance => null()
    end if
  end subroutine

  function NoDragVelocityBehavior_jnew_0() result(this)
    class(NoDragVelocityBehavior), pointer :: this
    allocate(this)
    this%jclass = 'NoDragVelocityBehavior'
  end function
end module NoDragVelocityBehavior_m

function NoDragVelocityBehavior_jnew_0_jext() result(this)
  use NoDragVelocityBehavior_m, only: JObject, NoDragVelocityBehavior_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NoDragVelocityBehavior_jnew_0()
end function

