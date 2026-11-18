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
! package org.allbinary.graphics.displayable
module ScalableListener_m
  use JR_m
  implicit none

  type, extends(JObject) :: ScalableListener
  contains
    procedure :: jm_getRatio_1 => ScalableListener_jm_getRatio_1
    procedure :: jm_getLeft_1 => ScalableListener_jm_getLeft_1
    procedure :: jm_getTop_1 => ScalableListener_jm_getTop_1
    procedure :: jm_scale_1 => ScalableListener_jm_scale_1
  end type


contains

  function ScalableListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScalableListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScalableListener)
      jresult => object
    end select
  end function

  function ScalableListener_jnew_0() result(this)
    class(ScalableListener), pointer :: this
    allocate(this)
    this%jclass = 'ScalableListener'
  end function

  recursive function ScalableListener_jm_getRatio_1(this, j_ratio) result(jresult)
    class(ScalableListener), target :: this
    real(4), value :: j_ratio
    real(4) :: jresult
    error stop 'AbstractMethodError: ScalableListener.getRatio'
  end function

  recursive function ScalableListener_jm_getLeft_1(this, j_xOffset) result(jresult)
    class(ScalableListener), target :: this
    integer(4), value :: j_xOffset
    integer(4) :: jresult
    error stop 'AbstractMethodError: ScalableListener.getLeft'
  end function

  recursive function ScalableListener_jm_getTop_1(this, j_yOffset) result(jresult)
    class(ScalableListener), target :: this
    integer(4), value :: j_yOffset
    integer(4) :: jresult
    error stop 'AbstractMethodError: ScalableListener.getTop'
  end function

  recursive subroutine ScalableListener_jm_scale_1(this, j_ratio)
    class(ScalableListener), target :: this
    real(4), value :: j_ratio
    error stop 'AbstractMethodError: ScalableListener.scale'
  end subroutine
end module ScalableListener_m

