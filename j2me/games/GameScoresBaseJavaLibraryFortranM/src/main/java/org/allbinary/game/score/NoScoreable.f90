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
module NoScoreable_m
  use JR_m
  use Scoreable_m
  implicit none

  type, extends(Scoreable) :: NoScoreable
  contains
    procedure :: jm_addPoints_1 => NoScoreable_jm_addPoints_1
    procedure :: jm_removePoints_1 => NoScoreable_jm_removePoints_1
  end type

  class(NoScoreable), pointer, save :: NoScoreable_jcell_SINGLETON => null()
  logical, save :: NoScoreable_jset_SINGLETON = .false.

contains

  function NoScoreable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoScoreable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoScoreable)
      jresult => object
    end select
  end function

  function NoScoreable_jstatic_SINGLETON() result(jresult)
    class(NoScoreable), pointer :: jresult
    if (.not. NoScoreable_jset_SINGLETON) then
      NoScoreable_jset_SINGLETON = .true.
      NoScoreable_jcell_SINGLETON => NoScoreable_jnew_0()
    end if
    jresult => NoScoreable_jcell_SINGLETON
  end function

  subroutine NoScoreable_jsetstatic_SINGLETON(jvalue)
    class(NoScoreable), target, optional :: jvalue
    NoScoreable_jset_SINGLETON = .true.
    if (present(jvalue)) then
      NoScoreable_jcell_SINGLETON => jvalue
    else
      NoScoreable_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function NoScoreable_jnew_0() result(this)
    class(NoScoreable), pointer :: this
    allocate(this)
    this%jclass = 'NoScoreable'
        continue ! super()
  end function

  recursive function NoScoreable_jm_getInstance_0() result(jresult)
    class(NoScoreable), pointer :: jresult
        jresult => NoScoreable_jstatic_SINGLETON()
        return
  end function

  recursive subroutine NoScoreable_jm_addPoints_1(this, j_points)
    class(NoScoreable), target :: this
    integer(4), value :: j_points
    continue
  end subroutine

  recursive subroutine NoScoreable_jm_removePoints_1(this, j_points)
    class(NoScoreable), target :: this
    integer(4), value :: j_points
    continue
  end subroutine
end module NoScoreable_m

function NoScoreable_jnew_0_jext() result(this)
  use NoScoreable_m, only: JObject, NoScoreable_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NoScoreable_jnew_0()
end function

