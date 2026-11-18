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
! package org.allbinary.game.ag.layer.pickup.health
module HealLayer_m
  use JR_m
  use HealthInterface_m
  use HealthVisitorInterface_m
  use PointFactory_m
  use Rectangle_m
  use AllBinaryLayer_m
  use StringUtil_m
  use ViewPosition_m
  implicit none

  type, extends(AllBinaryLayer) :: HealLayer
  contains
    procedure :: jm_paint_1 => HealLayer_jm_paint_1
    procedure :: jm_visit_1 => HealLayer_jm_visit_1
  end type

  ! HealLayer used as a HealthVisitorInterface
  type, extends(HealthVisitorInterface) :: HealLayer_jas_HealthVisitorInterface
    class(HealLayer), pointer :: jtarget => null()
  contains
    procedure :: jm_visit_1 => HealLayer_jas_HealthVisitorInterface_jm_visit_1
  end type


contains

  function HealLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HealLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HealLayer)
      jresult => object
    end select
  end function

  function HealLayer_jas_HealthVisitorInterface_jnew(object) result(jresult)
    class(HealLayer), target :: object
    class(HealLayer_jas_HealthVisitorInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'HealLayer'
    jresult%jtarget => object
  end function

  recursive subroutine HealLayer_jas_HealthVisitorInterface_jm_visit_1(this, j_healthInterface)
    class(HealLayer_jas_HealthVisitorInterface), target :: this
    class(HealthInterface), target, optional :: j_healthInterface
    call this%jtarget%jm_visit_1(j_healthInterface)
  end subroutine

  recursive function HealLayer_jnew_0() result(this)
    class(HealLayer), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(PointFactory), pointer :: jtemp2
    allocate(this)
    this%jclass = 'HealLayer'
        jtemp2 => PointFactory_jm_getInstance_0()
        jtemp1 => StringUtil_jm_getInstance_0()
        continue ! super()
  end function

  recursive subroutine HealLayer_jm_paint_1(this, j_graphics)
    class(HealLayer), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive subroutine HealLayer_jm_visit_1(this, j_healthInterface)
    class(HealLayer), target :: this
    class(HealthInterface), target, optional :: j_healthInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (j_healthInterface%jm_isAlive_0()) then
            call j_healthInterface%jm_healMax_0()
        else
            call this%f_logUtil%jm_putF_3('Heal attempt on dead: Does not currently occur', this, 'visit')
        end if
  end subroutine
end module HealLayer_m

function HealLayer_jnew_0_jext() result(this)
  use HealLayer_m, only: JObject, HealLayer_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => HealLayer_jnew_0()
end function

