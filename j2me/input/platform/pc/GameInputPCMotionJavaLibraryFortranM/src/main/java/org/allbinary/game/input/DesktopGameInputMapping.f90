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
! package org.allbinary.game.input
module DesktopGameInputMapping_m
  use JR_m
  use InputToGameKeyMapping_m
  use PCGameInputMapping_m
  use DesktopDefaultGameInputMapping_m
  implicit none

  type, extends(PCGameInputMapping) :: DesktopGameInputMapping
  contains
    procedure :: jm_getDefault_0 => DesktopGameInputMapping_jm_getDefault_0
  end type


contains

  function DesktopGameInputMapping_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DesktopGameInputMapping), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DesktopGameInputMapping)
      jresult => object
    end select
  end function

  function DesktopGameInputMapping_jnew_0() result(this)
    class(DesktopGameInputMapping), pointer :: this
    allocate(this)
    this%jclass = 'DesktopGameInputMapping'
  end function

  recursive function DesktopGameInputMapping_jm_getDefault_0(this) result(jresult)
    class(DesktopGameInputMapping), target :: this
    class(InputToGameKeyMapping), pointer :: jresult
    class(DesktopDefaultGameInputMapping), pointer :: jtemp1
        jtemp1 => DesktopDefaultGameInputMapping_jnew_0()
        jresult => jtemp1%jm_getInputMapping_0()
        return
  end function
end module DesktopGameInputMapping_m

function DesktopGameInputMapping_jnew_0_jext() result(this)
  use DesktopGameInputMapping_m, only: JObject, DesktopGameInputMapping_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => DesktopGameInputMapping_jnew_0()
end function

