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
! package org.allbinary.game.physics.velocity
module VelocityProperties_m
  use JR_m
  use BasicVelocityProperties_m
  use VelocityInterface_m
  implicit none

  type, extends(BasicVelocityProperties) :: VelocityProperties
    integer(4) :: f_maxForwardVelocity = 0
    integer(4) :: f_maxReverseVelocity = 0
  contains
    procedure :: jm_getMaxForwardVelocity_0 => VelocityProperties_jm_getMaxForwardVelocity_0
    procedure :: jm_setMaxForwardVelocity_1 => VelocityProperties_jm_setMaxForwardVelocity_1
    procedure :: jm_getMaxReverseVelocity_0 => VelocityProperties_jm_getMaxReverseVelocity_0
    procedure :: jm_setMaxReverseVelocity_1 => VelocityProperties_jm_setMaxReverseVelocity_1
    procedure :: jm_limitMaxXYForwardVelocity_0 => VelocityProperties_jm_limitMaxXYForwardVelocity_0
    procedure :: jm_limitMaxXYReverseVelocity_0 => VelocityProperties_jm_limitMaxXYReverseVelocity_0
    procedure :: jm_limitMaxYForwardVelocity_0 => VelocityProperties_jm_limitMaxYForwardVelocity_0
    procedure :: jm_limitMaxYReverseVelocity_0 => VelocityProperties_jm_limitMaxYReverseVelocity_0
    procedure :: jm_limitMaxXForwardVelocity_0 => VelocityProperties_jm_limitMaxXForwardVelocity_0
    procedure :: jm_limitMaxXReverseVelocity_0 => VelocityProperties_jm_limitMaxXReverseVelocity_0
    procedure :: jm_isOverXYMaxForwardVelocity_0 => VelocityProperties_jm_isOverXYMaxForwardVelocity_0
    procedure :: jm_isOverXYMaxReverseVelocity_0 => VelocityProperties_jm_isOverXYMaxReverseVelocity_0
    procedure :: jm_limitXYToForwardAndReverseMaxVelocity_0 => VelocityProperties_jm_limitXYToForwardAndReverseMaxVelocity_0
    procedure :: jm_limitMaxXYVelocity_1 => VelocityProperties_jm_limitMaxXYVelocity_1
    procedure :: jm_limitMaxPositiveYVelocity_1 => VelocityProperties_jm_limitMaxPositiveYVelocity_1
    procedure :: jm_limitMaxNegativeYVelocity_1 => VelocityProperties_jm_limitMaxNegativeYVelocity_1
    procedure :: jm_limitMaxYVelocity_1 => VelocityProperties_jm_limitMaxYVelocity_1
    procedure :: jm_limitMaxXVelocity_1 => VelocityProperties_jm_limitMaxXVelocity_1
    procedure :: jm_isOverXYMaxVelocity_1 => VelocityProperties_jm_isOverXYMaxVelocity_1
    procedure :: jm_setVelocityi_3 => VelocityProperties_jm_setVelocityi_3
    procedure :: jm_addVelocityi_3 => VelocityProperties_jm_addVelocityi_3
  end type

  ! VelocityProperties used as a VelocityInterface
  type, extends(VelocityInterface) :: VelocityProperties_jas_VelocityInterface
    class(VelocityProperties), pointer :: jtarget => null()
  contains
    procedure :: jm_getMaxForwardVelocity_0 => VelocityProperties_jas_VelocityInterface_jm_getMaxForwardVelocity_0
    procedure :: jm_setMaxForwardVelocity_1 => VelocityProperties_jas_VelocityInterface_jm_setMaxForwardVelocity_1
    procedure :: jm_getMaxReverseVelocity_0 => VelocityProperties_jas_VelocityInterface_jm_getMaxReverseVelocity_0
    procedure :: jm_setMaxReverseVelocity_1 => VelocityProperties_jas_VelocityInterface_jm_setMaxReverseVelocity_1
    procedure :: jm_limitMaxXYForwardVelocity_0 => VelocityProperties_jas_VelocityInterface_jm_limitMaxXYForwardVelocity_0
    procedure :: jm_limitMaxXYReverseVelocity_0 => VelocityProperties_jas_VelocityInterface_jm_limitMaxXYReverseVelocity_0
    procedure :: jm_limitXYToForwardAndReverseMaxVelocity_0 => VelocityProperties_jas_VelocityInterface_jm_limitXYToForwardAndReverseMaxVelocity_0
    procedure :: jm_limitMaxXYVelocity_1 => VelocityProperties_jas_VelocityInterface_jm_limitMaxXYVelocity_1
  end type

  class(VelocityProperties), pointer, save :: VelocityProperties_jcell_NULL_VELOCITY_PROPERTIES => null()
  logical, save :: VelocityProperties_jset_NULL_VELOCITY_PROPERTIES = .false.

contains

  function VelocityProperties_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VelocityProperties), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VelocityProperties)
      jresult => object
    end select
  end function

  function VelocityProperties_jas_VelocityInterface_jnew(object) result(jresult)
    class(VelocityProperties), target :: object
    class(VelocityProperties_jas_VelocityInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'VelocityProperties'
    jresult%jtarget => object
  end function

  recursive function VelocityProperties_jas_VelocityInterface_jm_getMaxForwardVelocity_0(this) result(jresult)
    class(VelocityProperties_jas_VelocityInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getMaxForwardVelocity_0()
  end function

  recursive subroutine VelocityProperties_jas_VelocityInterface_jm_setMaxForwardVelocity_1(this, j_maxForwardVelocity)
    class(VelocityProperties_jas_VelocityInterface), target :: this
    integer(4), value :: j_maxForwardVelocity
    call this%jtarget%jm_setMaxForwardVelocity_1(j_maxForwardVelocity)
  end subroutine

  recursive function VelocityProperties_jas_VelocityInterface_jm_getMaxReverseVelocity_0(this) result(jresult)
    class(VelocityProperties_jas_VelocityInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getMaxReverseVelocity_0()
  end function

  recursive subroutine VelocityProperties_jas_VelocityInterface_jm_setMaxReverseVelocity_1(this, j_maxReverseVelocity)
    class(VelocityProperties_jas_VelocityInterface), target :: this
    integer(4), value :: j_maxReverseVelocity
    call this%jtarget%jm_setMaxReverseVelocity_1(j_maxReverseVelocity)
  end subroutine

  recursive subroutine VelocityProperties_jas_VelocityInterface_jm_limitMaxXYForwardVelocity_0(this)
    class(VelocityProperties_jas_VelocityInterface), target :: this
    call this%jtarget%jm_limitMaxXYForwardVelocity_0()
  end subroutine

  recursive subroutine VelocityProperties_jas_VelocityInterface_jm_limitMaxXYReverseVelocity_0(this)
    class(VelocityProperties_jas_VelocityInterface), target :: this
    call this%jtarget%jm_limitMaxXYReverseVelocity_0()
  end subroutine

  recursive subroutine VelocityProperties_jas_VelocityInterface_jm_limitXYToForwardAndReverseMaxVelocity_0(this)
    class(VelocityProperties_jas_VelocityInterface), target :: this
    call this%jtarget%jm_limitXYToForwardAndReverseMaxVelocity_0()
  end subroutine

  recursive subroutine VelocityProperties_jas_VelocityInterface_jm_limitMaxXYVelocity_1(this, j_maxVelocity)
    class(VelocityProperties_jas_VelocityInterface), target :: this
    integer(4), value :: j_maxVelocity
    call this%jtarget%jm_limitMaxXYVelocity_1(j_maxVelocity)
  end subroutine

  function VelocityProperties_jstatic_NULL_VELOCITY_PROPERTIES() result(jresult)
    class(VelocityProperties), pointer :: jresult
    if (.not. VelocityProperties_jset_NULL_VELOCITY_PROPERTIES) then
      VelocityProperties_jset_NULL_VELOCITY_PROPERTIES = .true.
      VelocityProperties_jcell_NULL_VELOCITY_PROPERTIES => VelocityProperties_jnew_2(0, 0)
    end if
    jresult => VelocityProperties_jcell_NULL_VELOCITY_PROPERTIES
  end function

  subroutine VelocityProperties_jsetstatic_NULL_VELOCITY_PROPERTIES(jvalue)
    class(VelocityProperties), target, optional :: jvalue
    VelocityProperties_jset_NULL_VELOCITY_PROPERTIES = .true.
    if (present(jvalue)) then
      VelocityProperties_jcell_NULL_VELOCITY_PROPERTIES => jvalue
    else
      VelocityProperties_jcell_NULL_VELOCITY_PROPERTIES => null()
    end if
  end subroutine

  recursive function VelocityProperties_jnew_2(j_maxForwardVelocity, j_maxReverseVelocity) result(this)
    integer(4), value :: j_maxForwardVelocity
    integer(4), value :: j_maxReverseVelocity
    class(VelocityProperties), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'VelocityProperties'
    
    
        call this%jm_setMaxForwardVelocity_1(j_maxForwardVelocity)
        call this%jm_setMaxReverseVelocity_1(j_maxReverseVelocity)
  end function

  recursive function VelocityProperties_jm_getMaxForwardVelocity_0(this) result(jresult)
    class(VelocityProperties), target :: this
    integer(4) :: jresult
        jresult = this%f_maxForwardVelocity
        return
  end function

  recursive subroutine VelocityProperties_jm_setMaxForwardVelocity_1(this, j_maxForwardVelocity)
    class(VelocityProperties), target :: this
    integer(4), value :: j_maxForwardVelocity
        this%f_maxForwardVelocity = j_maxForwardVelocity
  end subroutine

  recursive function VelocityProperties_jm_getMaxReverseVelocity_0(this) result(jresult)
    class(VelocityProperties), target :: this
    integer(4) :: jresult
        jresult = this%f_maxReverseVelocity
        return
  end function

  recursive subroutine VelocityProperties_jm_setMaxReverseVelocity_1(this, j_maxReverseVelocity)
    class(VelocityProperties), target :: this
    integer(4), value :: j_maxReverseVelocity
        this%f_maxReverseVelocity = j_maxReverseVelocity
  end subroutine

  recursive subroutine VelocityProperties_jm_limitMaxXYForwardVelocity_0(this)
    class(VelocityProperties), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_limitMaxXYVelocity_1(this%jm_getMaxForwardVelocity_0())
  end subroutine

  recursive subroutine VelocityProperties_jm_limitMaxXYReverseVelocity_0(this)
    class(VelocityProperties), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_limitMaxXYVelocity_1(this%jm_getMaxReverseVelocity_0())
  end subroutine

  recursive subroutine VelocityProperties_jm_limitMaxYForwardVelocity_0(this)
    class(VelocityProperties), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_limitMaxYVelocity_1(this%jm_getMaxForwardVelocity_0())
  end subroutine

  recursive subroutine VelocityProperties_jm_limitMaxYReverseVelocity_0(this)
    class(VelocityProperties), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_limitMaxYVelocity_1(this%jm_getMaxReverseVelocity_0())
  end subroutine

  recursive subroutine VelocityProperties_jm_limitMaxXForwardVelocity_0(this)
    class(VelocityProperties), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_limitMaxXVelocity_1(this%jm_getMaxForwardVelocity_0())
  end subroutine

  recursive subroutine VelocityProperties_jm_limitMaxXReverseVelocity_0(this)
    class(VelocityProperties), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_limitMaxXVelocity_1(this%jm_getMaxReverseVelocity_0())
  end subroutine

  recursive function VelocityProperties_jm_isOverXYMaxForwardVelocity_0(this) result(jresult)
    class(VelocityProperties), target :: this
    logical :: jresult
        jresult = this%jm_isOverXYMaxVelocity_1(this%jm_getMaxForwardVelocity_0())
        return
  end function

  recursive function VelocityProperties_jm_isOverXYMaxReverseVelocity_0(this) result(jresult)
    class(VelocityProperties), target :: this
    logical :: jresult
        jresult = this%jm_isOverXYMaxVelocity_1(this%jm_getMaxReverseVelocity_0())
        return
  end function

  recursive subroutine VelocityProperties_jm_limitXYToForwardAndReverseMaxVelocity_0(this)
    class(VelocityProperties), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_limitMaxXYForwardVelocity_0()
        call this%jm_limitMaxXYReverseVelocity_0()
  end subroutine

  recursive subroutine VelocityProperties_jm_limitMaxXYVelocity_1(this, j_maxVelocity)
    class(VelocityProperties), target :: this
    integer(4), value :: j_maxVelocity
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_limitMaxXVelocity_1(j_maxVelocity)
        call this%jm_limitMaxYVelocity_1(j_maxVelocity)
  end subroutine

  recursive subroutine VelocityProperties_jm_limitMaxPositiveYVelocity_1(this, j_maxVelocity)
    class(VelocityProperties), target :: this
    integer(4), value :: j_maxVelocity
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((this%f_velocityYBasicDecimal%jm_getUnscaled_0() > int(j_maxVelocity, 8))) then
            call this%f_velocityYBasicDecimal%jm_setint_1(j_maxVelocity)
        end if
  end subroutine

  recursive subroutine VelocityProperties_jm_limitMaxNegativeYVelocity_1(this, j_maxVelocity)
    class(VelocityProperties), target :: this
    integer(4), value :: j_maxVelocity
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((this%f_velocityYBasicDecimal%jm_getUnscaled_0() < int((-j_maxVelocity), 8))) then
            call this%f_velocityYBasicDecimal%jm_setint_1((-j_maxVelocity))
        end if
  end subroutine

  recursive subroutine VelocityProperties_jm_limitMaxYVelocity_1(this, j_maxVelocity)
    class(VelocityProperties), target :: this
    integer(4), value :: j_maxVelocity
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_limitMaxPositiveYVelocity_1(j_maxVelocity)
        call this%jm_limitMaxNegativeYVelocity_1(j_maxVelocity)
  end subroutine

  recursive subroutine VelocityProperties_jm_limitMaxXVelocity_1(this, j_maxVelocity)
    class(VelocityProperties), target :: this
    integer(4), value :: j_maxVelocity
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((this%f_velocityXBasicDecimal%jm_getUnscaled_0() > int(j_maxVelocity, 8))) then
            call this%f_velocityXBasicDecimal%jm_setint_1(j_maxVelocity)
        end if
        if ((this%f_velocityXBasicDecimal%jm_getUnscaled_0() < int((-j_maxVelocity), 8))) then
            call this%f_velocityXBasicDecimal%jm_setint_1((-j_maxVelocity))
        end if
  end subroutine

  recursive function VelocityProperties_jm_isOverXYMaxVelocity_1(this, j_maxVelocity) result(jresult)
    class(VelocityProperties), target :: this
    integer(4), value :: j_maxVelocity
    logical :: jresult
        if ((this%f_velocityXBasicDecimal%jm_getUnscaled_0() > int(j_maxVelocity, 8))) then
            jresult = .true.
            return
        end if
        if ((this%f_velocityXBasicDecimal%jm_getUnscaled_0() < int((-j_maxVelocity), 8))) then
            jresult = .true.
            return
        end if
        if ((this%f_velocityYBasicDecimal%jm_getUnscaled_0() > int(j_maxVelocity, 8))) then
            jresult = .true.
            return
        end if
        if ((this%f_velocityYBasicDecimal%jm_getUnscaled_0() < int((-j_maxVelocity), 8))) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive subroutine VelocityProperties_jm_setVelocityi_3(this, j_magnitude, j_angle, j_otherAngle)
    class(VelocityProperties), target :: this
    integer(8), value :: j_magnitude
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%BasicVelocityProperties%jm_setVelocityi_3(j_magnitude, j_angle, j_otherAngle)
        call this%jm_limitXYToForwardAndReverseMaxVelocity_0()
  end subroutine

  recursive subroutine VelocityProperties_jm_addVelocityi_3(this, j_magnitude, j_angle, j_otherAngle)
    class(VelocityProperties), target :: this
    integer(8), value :: j_magnitude
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%BasicVelocityProperties%jm_addVelocityi_3(j_magnitude, j_angle, j_otherAngle)
        call this%jm_limitXYToForwardAndReverseMaxVelocity_0()
  end subroutine
end module VelocityProperties_m

function VelocityProperties_jnew_2_jext(p1, p2) result(this)
  use VelocityProperties_m, only: JObject, VelocityProperties_jnew_2
  implicit none
      integer(4), value :: p1
      integer(4), value :: p2
  class(JObject), pointer :: this
  this => VelocityProperties_jnew_2(p1, p2)
end function

