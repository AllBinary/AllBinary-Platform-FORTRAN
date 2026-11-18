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
! package org.allbinary.media.audio
module Controllable2_m
  use JR_m
  implicit none

  type, extends(JObject) :: Controllable2
  contains
    procedure :: jm_setVolume_2 => Controllable2_jm_setVolume_2
  end type


contains

  function Controllable2_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Controllable2), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Controllable2)
      jresult => object
    end select
  end function

  function Controllable2_jnew_0() result(this)
    class(Controllable2), pointer :: this
    allocate(this)
    this%jclass = 'Controllable2'
  end function

  recursive subroutine Controllable2_jm_setVolume_2(this, j_leftVolume, j_rightVolume)
    class(Controllable2), target :: this
    integer(4), value :: j_leftVolume
    integer(4), value :: j_rightVolume
    error stop 'AbstractMethodError: Controllable2.setVolume'
  end subroutine
end module Controllable2_m

