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
module TestInputInterface_m
  use JR_m
  use PaintableInterface_m
  implicit none

  type, extends(PaintableInterface) :: TestInputInterface
  contains
    procedure :: jm_up_0 => TestInputInterface_jm_up_0
    procedure :: jm_down_0 => TestInputInterface_jm_down_0
    procedure :: jm_left_0 => TestInputInterface_jm_left_0
    procedure :: jm_right_0 => TestInputInterface_jm_right_0
    procedure :: jm_strafeLeft_0 => TestInputInterface_jm_strafeLeft_0
    procedure :: jm_strafeRight_0 => TestInputInterface_jm_strafeRight_0
  end type


contains

  function TestInputInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TestInputInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TestInputInterface)
      jresult => object
    end select
  end function

  function TestInputInterface_jnew_0() result(this)
    class(TestInputInterface), pointer :: this
    allocate(this)
    this%jclass = 'TestInputInterface'
  end function

  recursive subroutine TestInputInterface_jm_up_0(this)
    class(TestInputInterface), target :: this
    error stop 'AbstractMethodError: TestInputInterface.up'
  end subroutine

  recursive subroutine TestInputInterface_jm_down_0(this)
    class(TestInputInterface), target :: this
    error stop 'AbstractMethodError: TestInputInterface.down'
  end subroutine

  recursive subroutine TestInputInterface_jm_left_0(this)
    class(TestInputInterface), target :: this
    error stop 'AbstractMethodError: TestInputInterface.left'
  end subroutine

  recursive subroutine TestInputInterface_jm_right_0(this)
    class(TestInputInterface), target :: this
    error stop 'AbstractMethodError: TestInputInterface.right'
  end subroutine

  recursive subroutine TestInputInterface_jm_strafeLeft_0(this)
    class(TestInputInterface), target :: this
    error stop 'AbstractMethodError: TestInputInterface.strafeLeft'
  end subroutine

  recursive subroutine TestInputInterface_jm_strafeRight_0(this)
    class(TestInputInterface), target :: this
    error stop 'AbstractMethodError: TestInputInterface.strafeRight'
  end subroutine
end module TestInputInterface_m

