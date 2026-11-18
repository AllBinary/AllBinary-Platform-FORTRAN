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
! package org.allbinary.bounds
module RectangleLayerBounds_m
  use JR_m
  use Rectangle_m
  use LayerBounds_m
  use BoundsVisitorInterface_m
  implicit none

  type, extends(LayerBounds) :: RectangleLayerBounds
  contains
    procedure :: jm_visit_1 => RectangleLayerBounds_jm_visit_1
  end type


contains

  function RectangleLayerBounds_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RectangleLayerBounds), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RectangleLayerBounds)
      jresult => object
    end select
  end function

  recursive function RectangleLayerBounds_jnew_1(j_rectangle) result(this)
    class(Rectangle), target, optional :: j_rectangle
    class(RectangleLayerBounds), pointer :: this
    allocate(this)
    this%jclass = 'RectangleLayerBounds'
        continue ! super()
  end function

  recursive subroutine RectangleLayerBounds_jm_visit_1(this, j_boundsVisitorInterface)
    class(RectangleLayerBounds), target :: this
    class(BoundsVisitorInterface), target, optional :: j_boundsVisitorInterface
    class(GPoint), pointer :: jtemp1
    class(GPoint), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((j_boundsVisitorInterface%jm_getX_0() > this%f_rectangle%jm_getMaxX_0())) then
            call j_boundsVisitorInterface%jm_maxX_0()
        end if
        if ((j_boundsVisitorInterface%jm_getY_0() > this%f_rectangle%jm_getMaxY_0())) then
            call j_boundsVisitorInterface%jm_maxY_0()
        end if
        jtemp1 => this%f_rectangle%jm_getPoint_0()
        if ((j_boundsVisitorInterface%jm_getX_0() < jtemp1%jm_getX_0())) then
            call j_boundsVisitorInterface%jm_minX_0()
        end if
        jtemp2 => this%f_rectangle%jm_getPoint_0()
        if ((j_boundsVisitorInterface%jm_getY_0() < jtemp2%jm_getY_0())) then
            call j_boundsVisitorInterface%jm_minY_0()
        end if
  end subroutine
end module RectangleLayerBounds_m

