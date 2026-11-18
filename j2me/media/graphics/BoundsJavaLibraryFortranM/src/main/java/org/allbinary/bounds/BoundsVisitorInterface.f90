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
module BoundsVisitorInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: BoundsVisitorInterface
  contains
    procedure :: jm_getX_0 => BoundsVisitorInterface_jm_getX_0
    procedure :: jm_getY_0 => BoundsVisitorInterface_jm_getY_0
    procedure :: jm_maxX_0 => BoundsVisitorInterface_jm_maxX_0
    procedure :: jm_maxY_0 => BoundsVisitorInterface_jm_maxY_0
    procedure :: jm_minX_0 => BoundsVisitorInterface_jm_minX_0
    procedure :: jm_minY_0 => BoundsVisitorInterface_jm_minY_0
  end type


contains

  function BoundsVisitorInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BoundsVisitorInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BoundsVisitorInterface)
      jresult => object
    end select
  end function

  function BoundsVisitorInterface_jnew_0() result(this)
    class(BoundsVisitorInterface), pointer :: this
    allocate(this)
    this%jclass = 'BoundsVisitorInterface'
  end function

  recursive function BoundsVisitorInterface_jm_getX_0(this) result(jresult)
    class(BoundsVisitorInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: BoundsVisitorInterface.getX'
  end function

  recursive function BoundsVisitorInterface_jm_getY_0(this) result(jresult)
    class(BoundsVisitorInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: BoundsVisitorInterface.getY'
  end function

  recursive subroutine BoundsVisitorInterface_jm_maxX_0(this)
    class(BoundsVisitorInterface), target :: this
    error stop 'AbstractMethodError: BoundsVisitorInterface.maxX'
  end subroutine

  recursive subroutine BoundsVisitorInterface_jm_maxY_0(this)
    class(BoundsVisitorInterface), target :: this
    error stop 'AbstractMethodError: BoundsVisitorInterface.maxY'
  end subroutine

  recursive subroutine BoundsVisitorInterface_jm_minX_0(this)
    class(BoundsVisitorInterface), target :: this
    error stop 'AbstractMethodError: BoundsVisitorInterface.minX'
  end subroutine

  recursive subroutine BoundsVisitorInterface_jm_minY_0(this)
    class(BoundsVisitorInterface), target :: this
    error stop 'AbstractMethodError: BoundsVisitorInterface.minY'
  end subroutine
end module BoundsVisitorInterface_m

