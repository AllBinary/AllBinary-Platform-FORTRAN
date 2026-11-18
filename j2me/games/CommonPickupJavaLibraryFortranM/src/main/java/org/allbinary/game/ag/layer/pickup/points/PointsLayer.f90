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
! package org.allbinary.game.ag.layer.pickup.points
module PointsLayer_m
  use JR_m
  use ScoreableInterface_m
  use PointFactory_m
  use Rectangle_m
  use AllBinaryLayer_m
  use StringUtil_m
  use ViewPosition_m
  implicit none

  type, extends(AllBinaryLayer) :: PointsLayer
    integer(4) :: f_points = 0
  contains
    procedure :: jm_paint_1 => PointsLayer_jm_paint_1
    procedure :: jm_visit_1 => PointsLayer_jm_visit_1
  end type


contains

  function PointsLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PointsLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PointsLayer)
      jresult => object
    end select
  end function

  recursive function PointsLayer_jnew_1(j_points) result(this)
    integer(4), value :: j_points
    class(PointsLayer), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(PointFactory), pointer :: jtemp2
    allocate(this)
    this%jclass = 'PointsLayer'
    
        jtemp2 => PointFactory_jm_getInstance_0()
        jtemp1 => StringUtil_jm_getInstance_0()
        continue ! super()
        this%f_points = j_points
  end function

  recursive subroutine PointsLayer_jm_paint_1(this, j_graphics)
    class(PointsLayer), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive subroutine PointsLayer_jm_visit_1(this, j_scoreableInterface)
    class(PointsLayer), target :: this
    class(ScoreableInterface), target, optional :: j_scoreableInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_scoreableInterface%jm_addPoints_1(this%f_points)
  end subroutine
end module PointsLayer_m

function PointsLayer_jnew_1_jext(p1) result(this)
  use PointsLayer_m, only: JObject, PointsLayer_jnew_1
  implicit none
      integer(4), value :: p1
  class(JObject), pointer :: this
  this => PointsLayer_jnew_1(p1)
end function

