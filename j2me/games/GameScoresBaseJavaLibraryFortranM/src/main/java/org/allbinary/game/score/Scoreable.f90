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
! package org.allbinary.game.score
module Scoreable_m
  use JR_m
  use SmallIntegerSingletonFactory_m
  use Integer_m
  use ScoreableInterface_m
  implicit none

  type, extends(ScoreableInterface) :: Scoreable
    integer(4) :: f_points = 0
  contains
    procedure :: jm_addPoints_1 => Scoreable_jm_addPoints_1
    procedure :: jm_removePoints_1 => Scoreable_jm_removePoints_1
    procedure :: jm_setPoints_1 => Scoreable_jm_setPoints_1
    procedure :: jm_getPoints_0 => Scoreable_jm_getPoints_0
  end type

  integer(4), save :: Scoreable_jcell_ID
  logical, save :: Scoreable_jset_ID = .false.

contains

  function Scoreable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Scoreable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Scoreable)
      jresult => object
    end select
  end function

  function Scoreable_jstatic_ID() result(jresult)
    integer(4) :: jresult
    class(SmallIntegerSingletonFactory), pointer :: jtemp1
    if (.not. Scoreable_jset_ID) then
      Scoreable_jset_ID = .true.
      jtemp1 => SmallIntegerSingletonFactory_jm_getInstance_0()
    Scoreable_jcell_ID = jtemp1%jm_getAt_1(3)
    end if
    jresult = Scoreable_jcell_ID
  end function

  subroutine Scoreable_jsetstatic_ID(jvalue)
    integer(4), value :: jvalue
    Scoreable_jset_ID = .true.
    Scoreable_jcell_ID = jvalue
  end subroutine

  recursive function Scoreable_jnew_1(j_points) result(this)
    integer(4), value :: j_points
    class(Scoreable), pointer :: this
    allocate(this)
    this%jclass = 'Scoreable'
    
        this%f_points = j_points
  end function

  recursive subroutine Scoreable_jm_addPoints_1(this, j_points)
    class(Scoreable), target :: this
    integer(4), value :: j_points
        this%f_points = (this%f_points + j_points)
  end subroutine

  recursive subroutine Scoreable_jm_removePoints_1(this, j_points)
    class(Scoreable), target :: this
    integer(4), value :: j_points
        this%f_points = (this%f_points - j_points)
  end subroutine

  recursive subroutine Scoreable_jm_setPoints_1(this, j_points)
    class(Scoreable), target :: this
    integer(4), value :: j_points
        this%f_points = j_points
  end subroutine

  recursive function Scoreable_jm_getPoints_0(this) result(jresult)
    class(Scoreable), target :: this
    integer(4) :: jresult
        jresult = this%f_points
        return
  end function
end module Scoreable_m

