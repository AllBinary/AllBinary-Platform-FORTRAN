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
! package org.allbinary.device
module LoadTextures_m
  use JR_m
  use GL10_m
  implicit none

  type, extends(JObject) :: LoadTextures
  contains
    procedure :: jm_load_1 => LoadTextures_jm_load_1
  end type


contains

  function LoadTextures_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LoadTextures), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LoadTextures)
      jresult => object
    end select
  end function

  function LoadTextures_jnew_0() result(this)
    class(LoadTextures), pointer :: this
    allocate(this)
    this%jclass = 'LoadTextures'
  end function

  recursive subroutine LoadTextures_jm_load_1(this, j_gl)
    class(LoadTextures), target :: this
    class(GL10), target, optional :: j_gl
    continue
  end subroutine
end module LoadTextures_m

