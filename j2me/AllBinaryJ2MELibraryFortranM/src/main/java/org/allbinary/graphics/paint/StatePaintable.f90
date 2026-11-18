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
! package org.allbinary.graphics.paint
module StatePaintable_m
  use JR_m
  use StateControlledInterface_m
  use Paintable_m
  implicit none

  type, extends(Paintable) :: StatePaintable
  contains
    procedure :: jm_setState_1 => StatePaintable_jm_setState_1
  end type

  ! StatePaintable used as a StateControlledInterface
  type, extends(StateControlledInterface) :: StatePaintable_jas_StateControlledInterface
    class(StatePaintable), pointer :: jtarget => null()
  contains
    procedure :: jm_setState_1 => StatePaintable_jas_StateControlledInterface_jm_setState_1
  end type


contains

  function StatePaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(StatePaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (StatePaintable)
      jresult => object
    end select
  end function

  function StatePaintable_jas_StateControlledInterface_jnew(object) result(jresult)
    class(StatePaintable), target :: object
    class(StatePaintable_jas_StateControlledInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'StatePaintable'
    jresult%jtarget => object
  end function

  recursive subroutine StatePaintable_jas_StateControlledInterface_jm_setState_1(this, j_state)
    class(StatePaintable_jas_StateControlledInterface), target :: this
    integer(4), value :: j_state
    call this%jtarget%jm_setState_1(j_state)
  end subroutine

  recursive function StatePaintable_jnew_0() result(this)
    class(StatePaintable), pointer :: this
    allocate(this)
    this%jclass = 'StatePaintable'
        continue
  end function

  recursive subroutine StatePaintable_jm_setState_1(this, j_state)
    class(StatePaintable), target :: this
    integer(4), value :: j_state
    continue
  end subroutine
end module StatePaintable_m

function StatePaintable_jnew_0_jext() result(this)
  use StatePaintable_m, only: JObject, StatePaintable_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => StatePaintable_jnew_0()
end function

