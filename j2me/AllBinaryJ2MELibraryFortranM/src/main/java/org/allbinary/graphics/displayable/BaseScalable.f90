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
module BaseScalable_m
  use JR_m
  use ScalableListener_m
  implicit none

  type, extends(ScalableListener) :: BaseScalable
  contains
    procedure :: jm_getRatio_1 => BaseScalable_jm_getRatio_1
    procedure :: jm_getLeft_1 => BaseScalable_jm_getLeft_1
    procedure :: jm_getTop_1 => BaseScalable_jm_getTop_1
    procedure :: jm_scale_1 => BaseScalable_jm_scale_1
  end type


contains

  function BaseScalable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BaseScalable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BaseScalable)
      jresult => object
    end select
  end function

  function BaseScalable_jnew_0() result(this)
    class(BaseScalable), pointer :: this
    allocate(this)
    this%jclass = 'BaseScalable'
  end function

  recursive function BaseScalable_jm_getRatio_1(this, j_ratio) result(jresult)
    class(BaseScalable), target :: this
    real(4), value :: j_ratio
    real(4) :: jresult
        jresult = 1.0
        return
  end function

  recursive function BaseScalable_jm_getLeft_1(this, j_xOffset) result(jresult)
    class(BaseScalable), target :: this
    integer(4), value :: j_xOffset
    integer(4) :: jresult
        jresult = (-1)
        return
  end function

  recursive function BaseScalable_jm_getTop_1(this, j_yOffset) result(jresult)
    class(BaseScalable), target :: this
    integer(4), value :: j_yOffset
    integer(4) :: jresult
        jresult = (-1)
        return
  end function

  recursive subroutine BaseScalable_jm_scale_1(this, j_ratio)
    class(BaseScalable), target :: this
    real(4), value :: j_ratio
    continue
  end subroutine
end module BaseScalable_m

