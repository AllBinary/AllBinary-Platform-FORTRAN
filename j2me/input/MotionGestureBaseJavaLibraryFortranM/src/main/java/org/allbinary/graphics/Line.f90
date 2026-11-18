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
! package org.allbinary.graphics
module Line_m
  use JR_m
  use GPoint_m
  use PointFactory_m
  implicit none

  type, extends(JObject) :: Line
    class(GPoint), pointer :: f_p1 => null()
    class(GPoint), pointer :: f_p2 => null()
    real(8) :: f_deltaX = 0.0d0
    real(8) :: f_deltaY = 0.0d0
  contains
    procedure :: jm_getGradient_0 => Line_jm_getGradient_0
    procedure :: jm_update_0 => Line_jm_update_0
    procedure :: jm_getDeltaX_0 => Line_jm_getDeltaX_0
    procedure :: jm_getDeltaY_0 => Line_jm_getDeltaY_0
    procedure :: jm_getP1_0 => Line_jm_getP1_0
    procedure :: jm_getP2_0 => Line_jm_getP2_0
    procedure :: jm_setP1_1 => Line_jm_setP1_1
    procedure :: jm_setP2_1 => Line_jm_setP2_1
  end type


contains

  function Line_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Line), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Line)
      jresult => object
    end select
  end function

  recursive function Line_jnew_2(j_p1, j_p2) result(this)
    class(GPoint), target, optional :: j_p1
    class(GPoint), target, optional :: j_p2
    class(Line), pointer :: this
    class(PointFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'Line'
    
    
    
    
        jtemp1 => PointFactory_jm_getInstance_0()
        this%f_p1 => jtemp1%f_ZERO_ZERO
        this%f_p2 => this%f_p1
        call this%jm_setP1_1(j_p1)
        call this%jm_setP2_1(j_p2)
  end function

  recursive function Line_jm_getGradient_0(this) result(jresult)
    class(Line), target :: this
    real(8) :: jresult
        jresult = (this%jm_getDeltaY_0() / this%jm_getDeltaX_0())
        return
  end function

  recursive subroutine Line_jm_update_0(this)
    class(Line), target :: this
    class(GPoint), pointer :: jtemp2
    class(GPoint), pointer :: jtemp3
    class(GPoint), pointer :: jtemp4
    class(GPoint), pointer :: jtemp5
        jtemp2 => this%jm_getP1_0()
        jtemp3 => this%jm_getP2_0()
        this%f_deltaX = (real(jtemp2%jm_getX_0(), 8) - real(jtemp3%jm_getX_0(), 8))
        jtemp4 => this%jm_getP1_0()
        jtemp5 => this%jm_getP2_0()
        this%f_deltaY = (real(jtemp4%jm_getY_0(), 8) - real(jtemp5%jm_getY_0(), 8))
  end subroutine

  recursive function Line_jm_getDeltaX_0(this) result(jresult)
    class(Line), target :: this
    real(8) :: jresult
        jresult = this%f_deltaX
        return
  end function

  recursive function Line_jm_getDeltaY_0(this) result(jresult)
    class(Line), target :: this
    real(8) :: jresult
        jresult = this%f_deltaY
        return
  end function

  recursive function Line_jm_getP1_0(this) result(jresult)
    class(Line), target :: this
    class(GPoint), pointer :: jresult
        jresult => this%f_p1
        return
  end function

  recursive function Line_jm_getP2_0(this) result(jresult)
    class(Line), target :: this
    class(GPoint), pointer :: jresult
        jresult => this%f_p2
        return
  end function

  recursive subroutine Line_jm_setP1_1(this, j_p1)
    class(Line), target :: this
    class(GPoint), target, optional :: j_p1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_p1 => j_p1
        call this%jm_update_0()
  end subroutine

  recursive subroutine Line_jm_setP2_1(this, j_p2)
    class(Line), target :: this
    class(GPoint), target, optional :: j_p2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_p2 => j_p2
        call this%jm_update_0()
  end subroutine
end module Line_m

