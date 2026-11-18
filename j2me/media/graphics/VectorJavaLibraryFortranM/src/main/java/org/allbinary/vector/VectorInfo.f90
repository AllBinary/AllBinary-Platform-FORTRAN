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
! package org.allbinary.vector
module VectorInfo_m
  use JR_m
  implicit none

  type, extends(JObject) :: VectorInfo
    integer(4) :: f_width = 0
    integer(4) :: f_height = 0
    integer(4), allocatable :: f_points(:,:)
    integer(4) :: f_totalFrames = 0
  contains
    procedure :: jm_getWidth_0 => VectorInfo_jm_getWidth_0
    procedure :: jm_setWidth_1 => VectorInfo_jm_setWidth_1
    procedure :: jm_getHeight_0 => VectorInfo_jm_getHeight_0
    procedure :: jm_setHeight_1 => VectorInfo_jm_setHeight_1
    procedure :: jm_getPoints_0 => VectorInfo_jm_getPoints_0
    procedure :: jm_setPoints_1 => VectorInfo_jm_setPoints_1
    procedure :: jm_getTotalFrames_0 => VectorInfo_jm_getTotalFrames_0
    procedure :: jm_setTotalFrames_1 => VectorInfo_jm_setTotalFrames_1
  end type


contains

  function VectorInfo_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VectorInfo), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VectorInfo)
      jresult => object
    end select
  end function

  recursive function VectorInfo_jnew_4(j_width, j_height, j_points, j_totalFrames) result(this)
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4) :: j_points(:,:)
    integer(4), value :: j_totalFrames
    class(VectorInfo), pointer :: this
    allocate(this)
    this%jclass = 'VectorInfo'
    
    
    
    
        this%f_width = j_width
        this%f_height = j_height
        this%f_points = j_points
        this%f_totalFrames = j_totalFrames
  end function

  recursive function VectorInfo_jm_getWidth_0(this) result(jresult)
    class(VectorInfo), target :: this
    integer(4) :: jresult
        jresult = this%f_width
        return
  end function

  recursive subroutine VectorInfo_jm_setWidth_1(this, j_width)
    class(VectorInfo), target :: this
    integer(4), value :: j_width
        this%f_width = j_width
  end subroutine

  recursive function VectorInfo_jm_getHeight_0(this) result(jresult)
    class(VectorInfo), target :: this
    integer(4) :: jresult
        jresult = this%f_height
        return
  end function

  recursive subroutine VectorInfo_jm_setHeight_1(this, j_height)
    class(VectorInfo), target :: this
    integer(4), value :: j_height
        this%f_height = j_height
  end subroutine

  recursive function VectorInfo_jm_getPoints_0(this) result(jresult)
    class(VectorInfo), target :: this
    integer(4), allocatable :: jresult(:,:)
        jresult = this%f_points
        return
  end function

  recursive subroutine VectorInfo_jm_setPoints_1(this, j_points)
    class(VectorInfo), target :: this
    integer(4) :: j_points(:,:)
        this%f_points = j_points
  end subroutine

  recursive function VectorInfo_jm_getTotalFrames_0(this) result(jresult)
    class(VectorInfo), target :: this
    integer(4) :: jresult
        jresult = this%f_totalFrames
        return
  end function

  recursive subroutine VectorInfo_jm_setTotalFrames_1(this, j_totalFrames)
    class(VectorInfo), target :: this
    integer(4), value :: j_totalFrames
        this%f_totalFrames = j_totalFrames
  end subroutine
end module VectorInfo_m

