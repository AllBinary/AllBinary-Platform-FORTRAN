! Generated Code Do Not Modify
! package org.allbinary.game.collision
module CollisionThreedProcessor_m
  use JR_m
  use AllBinaryLayer_m
  use CollisionProcessor_m
  implicit none

  type, extends(CollisionProcessor) :: CollisionThreedProcessor
  contains
    procedure :: jm_isCollision_2 => CollisionThreedProcessor_jm_isCollision_2
  end type


contains

  function CollisionThreedProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollisionThreedProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollisionThreedProcessor)
      jresult => object
    end select
  end function

  function CollisionThreedProcessor_jnew_0() result(this)
    class(CollisionThreedProcessor), pointer :: this
    allocate(this)
    this%jclass = 'CollisionThreedProcessor'
  end function

  recursive function CollisionThreedProcessor_jm_isCollision_2(this, j_myLayer, j_myLayer2) result(jresult)
    class(CollisionThreedProcessor), target :: this
    class(AllBinaryLayer), target, optional :: j_myLayer
    class(AllBinaryLayer), target, optional :: j_myLayer2
    logical :: jresult
        if (((((((j_myLayer2%jm_getXP_0() >= j_myLayer%jm_getX2_0()) .or. (j_myLayer2%jm_getYP_0() >= j_myLayer%jm_getY2_0())) .or. (j_myLayer2%jm_getX2_0() <= j_myLayer%jm_getXP_0())) .or. (j_myLayer2%jm_getY2_0() <= j_myLayer%jm_getYP_0())) .or. (j_myLayer2%jm_getZP_0() < j_myLayer%jm_getZ2_0())) .or. (j_myLayer2%jm_getZ2_0() > j_myLayer%jm_getZP_0()))) then
            jresult = .false.
            return
        else
            jresult = .true.
            return
        end if
  end function
end module CollisionThreedProcessor_m

function CollisionThreedProcessor_jnew_0_jext() result(this)
  use CollisionThreedProcessor_m, only: JObject, CollisionThreedProcessor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => CollisionThreedProcessor_jnew_0()
end function

