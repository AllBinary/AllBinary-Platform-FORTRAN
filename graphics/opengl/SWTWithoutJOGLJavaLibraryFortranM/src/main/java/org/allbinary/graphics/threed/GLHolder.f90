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
! package org.allbinary.graphics.threed
module GLHolder_m
  use JR_m
  implicit none

  type, extends(JObject) :: GLHolder
    logical :: f_isCreated = .false.
  contains
    procedure :: jm_runOnSurfaceCreated_1 => GLHolder_jm_runOnSurfaceCreated_1
    procedure :: jm_runOnSurfaceChanged_3 => GLHolder_jm_runOnSurfaceChanged_3
    procedure :: jm_run_1 => GLHolder_jm_run_1
  end type


contains

  function GLHolder_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GLHolder), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GLHolder)
      jresult => object
    end select
  end function

  recursive function GLHolder_jnew_0() result(this)
    class(GLHolder), pointer :: this
    allocate(this)
    this%jclass = 'GLHolder'
    this%f_isCreated = .true.
        continue
  end function

  recursive subroutine GLHolder_jm_runOnSurfaceCreated_1(this, j_renderer)
    class(GLHolder), target :: this
    class(JObject), target, optional :: j_renderer
    continue
  end subroutine

  recursive subroutine GLHolder_jm_runOnSurfaceChanged_3(this, j_renderer, j_width, j_height)
    class(GLHolder), target :: this
    class(JObject), target, optional :: j_renderer
    integer(4), value :: j_width
    integer(4), value :: j_height
    continue
  end subroutine

  recursive subroutine GLHolder_jm_run_1(this, j_renderer)
    class(GLHolder), target :: this
    class(JObject), target, optional :: j_renderer
    continue
  end subroutine
end module GLHolder_m

