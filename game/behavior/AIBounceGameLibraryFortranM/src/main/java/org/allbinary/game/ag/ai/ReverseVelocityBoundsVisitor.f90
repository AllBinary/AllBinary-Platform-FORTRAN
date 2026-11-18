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
! package org.allbinary.game.ag.ai
module ReverseVelocityBoundsVisitor_m
  use JR_m
  use BoundsVisitorInterface_m
  use VelocityInterface_m
  use VelocityInterfaceCompositeInterface_m
  use LayerInterface_m
  use LogUtil_m
  implicit none

  type, extends(BoundsVisitorInterface) :: ReverseVelocityBoundsVisitor
    class(LogUtil), pointer :: f_logUtil => null()
    class(VelocityInterface), pointer :: f_velocityInterface => null()
    class(LayerInterface), pointer :: f_layerInterface => null()
  contains
    procedure :: jm_getX_0 => ReverseVelocityBoundsVisitor_jm_getX_0
    procedure :: jm_getY_0 => ReverseVelocityBoundsVisitor_jm_getY_0
    procedure :: jm_minX_0 => ReverseVelocityBoundsVisitor_jm_minX_0
    procedure :: jm_maxX_0 => ReverseVelocityBoundsVisitor_jm_maxX_0
    procedure :: jm_minY_0 => ReverseVelocityBoundsVisitor_jm_minY_0
    procedure :: jm_maxY_0 => ReverseVelocityBoundsVisitor_jm_maxY_0
  end type


contains

  function ReverseVelocityBoundsVisitor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ReverseVelocityBoundsVisitor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ReverseVelocityBoundsVisitor)
      jresult => object
    end select
  end function

  recursive function ReverseVelocityBoundsVisitor_jnew_1(j_layerInterface) result(this)
    class(LayerInterface), target, optional :: j_layerInterface
    class(ReverseVelocityBoundsVisitor), pointer :: this
    class(VelocityInterfaceCompositeInterface), pointer :: j_velocityInterfaceCompositeInterface
    allocate(this)
    this%jclass = 'ReverseVelocityBoundsVisitor'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
    
        this%f_layerInterface => j_layerInterface
        j_velocityInterfaceCompositeInterface => VelocityInterfaceCompositeInterface_jcast(j_layerInterface)
        this%f_velocityInterface => VelocityInterface_jcast(j_velocityInterfaceCompositeInterface%jm_getVelocityProperties_0())
  end function

  recursive function ReverseVelocityBoundsVisitor_jm_getX_0(this) result(jresult)
    class(ReverseVelocityBoundsVisitor), target :: this
    integer(4) :: jresult
        jresult = this%f_layerInterface%jm_getXP_0()
        return
  end function

  recursive function ReverseVelocityBoundsVisitor_jm_getY_0(this) result(jresult)
    class(ReverseVelocityBoundsVisitor), target :: this
    integer(4) :: jresult
        jresult = this%f_layerInterface%jm_getYP_0()
        return
  end function

  recursive subroutine ReverseVelocityBoundsVisitor_jm_minX_0(this)
    class(ReverseVelocityBoundsVisitor), target :: this
    class(JObject), pointer :: jtemp1
    class(JObject), pointer :: jtemp2
        jtemp1 => this%f_velocityInterface%jm_getVelocityXBasicDecimalP_0()
        if ((jtemp1%jm_getUnscaled_0() < 0_8)) then
            jtemp2 => this%f_velocityInterface%jm_getVelocityXBasicDecimalP_0()
        call jtemp2%jm_multiplyint_1((-1))
        end if
  end subroutine

  recursive subroutine ReverseVelocityBoundsVisitor_jm_maxX_0(this)
    class(ReverseVelocityBoundsVisitor), target :: this
    class(JObject), pointer :: jtemp3
    class(JObject), pointer :: jtemp4
        jtemp3 => this%f_velocityInterface%jm_getVelocityXBasicDecimalP_0()
        if ((jtemp3%jm_getUnscaled_0() > 0_8)) then
            jtemp4 => this%f_velocityInterface%jm_getVelocityXBasicDecimalP_0()
        call jtemp4%jm_multiplyint_1((-1))
        end if
  end subroutine

  recursive subroutine ReverseVelocityBoundsVisitor_jm_minY_0(this)
    class(ReverseVelocityBoundsVisitor), target :: this
    class(JObject), pointer :: jtemp5
    class(JObject), pointer :: jtemp6
        jtemp5 => this%f_velocityInterface%jm_getVelocityYBasicDecimalP_0()
        if ((jtemp5%jm_getUnscaled_0() < 0_8)) then
            jtemp6 => this%f_velocityInterface%jm_getVelocityYBasicDecimalP_0()
        call jtemp6%jm_multiplyint_1((-1))
        end if
  end subroutine

  recursive subroutine ReverseVelocityBoundsVisitor_jm_maxY_0(this)
    class(ReverseVelocityBoundsVisitor), target :: this
    class(JObject), pointer :: jtemp7
    class(JObject), pointer :: jtemp8
        jtemp7 => this%f_velocityInterface%jm_getVelocityYBasicDecimalP_0()
        if ((jtemp7%jm_getUnscaled_0() > 0_8)) then
            jtemp8 => this%f_velocityInterface%jm_getVelocityYBasicDecimalP_0()
        call jtemp8%jm_multiplyint_1((-1))
        end if
  end subroutine
end module ReverseVelocityBoundsVisitor_m

