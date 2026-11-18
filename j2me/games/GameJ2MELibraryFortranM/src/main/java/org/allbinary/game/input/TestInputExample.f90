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
! package org.allbinary.game.input
module TestInputExample_m
  use JR_m
  use TestInputInterface_m
  implicit none

  type, extends(TestInputInterface) :: TestInputExample
    integer(4) :: f_testValue = 0
  contains
    procedure :: jm_up_0 => TestInputExample_jm_up_0
    procedure :: jm_down_0 => TestInputExample_jm_down_0
    procedure :: jm_left_0 => TestInputExample_jm_left_0
    procedure :: jm_right_0 => TestInputExample_jm_right_0
    procedure :: jm_strafeLeft_0 => TestInputExample_jm_strafeLeft_0
    procedure :: jm_strafeRight_0 => TestInputExample_jm_strafeRight_0
    procedure :: jm_paint_1 => TestInputExample_jm_paint_1
    procedure :: jm_paintThreed_1 => TestInputExample_jm_paintThreed_1
  end type


contains

  function TestInputExample_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TestInputExample), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TestInputExample)
      jresult => object
    end select
  end function

  function TestInputExample_jnew_0() result(this)
    class(TestInputExample), pointer :: this
    allocate(this)
    this%jclass = 'TestInputExample'
    
  end function

  recursive subroutine TestInputExample_jm_up_0(this)
    class(TestInputExample), target :: this
    continue
  end subroutine

  recursive subroutine TestInputExample_jm_down_0(this)
    class(TestInputExample), target :: this
    continue
  end subroutine

  recursive subroutine TestInputExample_jm_left_0(this)
    class(TestInputExample), target :: this
        this%f_testValue = this%f_testValue + 1
  end subroutine

  recursive subroutine TestInputExample_jm_right_0(this)
    class(TestInputExample), target :: this
        this%f_testValue = this%f_testValue - 1
  end subroutine

  recursive subroutine TestInputExample_jm_strafeLeft_0(this)
    class(TestInputExample), target :: this
    continue
  end subroutine

  recursive subroutine TestInputExample_jm_strafeRight_0(this)
    class(TestInputExample), target :: this
    continue
  end subroutine

  recursive subroutine TestInputExample_jm_paint_1(this, j_graphics)
    class(TestInputExample), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive subroutine TestInputExample_jm_paintThreed_1(this, j_graphics)
    class(TestInputExample), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine
end module TestInputExample_m

