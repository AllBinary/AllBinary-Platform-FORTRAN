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
! package org.allbinary.game.ag.layer.pickup.life
module LifeLayer_m
  use JR_m
  use Life_m
  use LifeVisitorInterface_m
  use PointFactory_m
  use Rectangle_m
  use AllBinaryLayer_m
  use StringUtil_m
  use ViewPosition_m
  implicit none

  type, extends(AllBinaryLayer) :: LifeLayer
  contains
    procedure :: jm_paint_1 => LifeLayer_jm_paint_1
    procedure :: jm_visit_1 => LifeLayer_jm_visit_1
  end type

  ! LifeLayer used as a LifeVisitorInterface
  type, extends(LifeVisitorInterface) :: LifeLayer_jas_LifeVisitorInterface
    class(LifeLayer), pointer :: jtarget => null()
  contains
    procedure :: jm_visit_1 => LifeLayer_jas_LifeVisitorInterface_jm_visit_1
  end type


contains

  function LifeLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LifeLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LifeLayer)
      jresult => object
    end select
  end function

  function LifeLayer_jas_LifeVisitorInterface_jnew(object) result(jresult)
    class(LifeLayer), target :: object
    class(LifeLayer_jas_LifeVisitorInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'LifeLayer'
    jresult%jtarget => object
  end function

  recursive subroutine LifeLayer_jas_LifeVisitorInterface_jm_visit_1(this, j_lifeInterface)
    class(LifeLayer_jas_LifeVisitorInterface), target :: this
    class(Life), target, optional :: j_lifeInterface
    call this%jtarget%jm_visit_1(j_lifeInterface)
  end subroutine

  recursive function LifeLayer_jnew_0() result(this)
    class(LifeLayer), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(PointFactory), pointer :: jtemp2
    allocate(this)
    this%jclass = 'LifeLayer'
        jtemp2 => PointFactory_jm_getInstance_0()
        jtemp1 => StringUtil_jm_getInstance_0()
        continue ! super()
  end function

  recursive subroutine LifeLayer_jm_paint_1(this, j_graphics)
    class(LifeLayer), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive subroutine LifeLayer_jm_visit_1(this, j_lifeInterface)
    class(LifeLayer), target :: this
    class(Life), target, optional :: j_lifeInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_lifeInterface%jm_add_1(JR_i16(1))
  end subroutine
end module LifeLayer_m

function LifeLayer_jnew_0_jext() result(this)
  use LifeLayer_m, only: JObject, LifeLayer_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => LifeLayer_jnew_0()
end function

