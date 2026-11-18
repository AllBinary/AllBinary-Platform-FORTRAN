! Generated Code Do Not Modify
! package org.allbinary.game.collision
module Collision2DProcessor_m
  use JR_m
  use AllBinaryLayer_m
  use CollisionProcessor_m
  implicit none

  type, extends(CollisionProcessor) :: Collision2DProcessor
  contains
    procedure :: jm_isCollision_2 => Collision2DProcessor_jm_isCollision_2
  end type


contains

  function Collision2DProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Collision2DProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Collision2DProcessor)
      jresult => object
    end select
  end function

  function Collision2DProcessor_jnew_0() result(this)
    class(Collision2DProcessor), pointer :: this
    allocate(this)
    this%jclass = 'Collision2DProcessor'
  end function

  recursive function Collision2DProcessor_jm_isCollision_2(this, j_myLayer, j_myLayer2) result(jresult)
    class(Collision2DProcessor), target :: this
    class(AllBinaryLayer), target, optional :: j_myLayer
    class(AllBinaryLayer), target, optional :: j_myLayer2
    logical :: jresult
        if (((((j_myLayer2%jm_getXP_0() >= j_myLayer%jm_getX2_0()) .or. (j_myLayer2%jm_getYP_0() >= j_myLayer%jm_getY2_0())) .or. (j_myLayer2%jm_getX2_0() <= j_myLayer%jm_getXP_0())) .or. (j_myLayer2%jm_getY2_0() <= j_myLayer%jm_getYP_0()))) then
            jresult = .false.
            return
        else
            jresult = .true.
            return
        end if
  end function
end module Collision2DProcessor_m

function Collision2DProcessor_jnew_0_jext() result(this)
  use Collision2DProcessor_m, only: JObject, Collision2DProcessor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => Collision2DProcessor_jnew_0()
end function

