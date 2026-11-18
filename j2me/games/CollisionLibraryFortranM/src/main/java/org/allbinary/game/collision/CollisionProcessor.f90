! Generated Code Do Not Modify
! package org.allbinary.game.collision
module CollisionProcessor_m
  use JR_m
  use AllBinaryLayer_m
  implicit none

  type, extends(JObject) :: CollisionProcessor
  contains
    procedure :: jm_isCollision_2 => CollisionProcessor_jm_isCollision_2
  end type


contains

  function CollisionProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollisionProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollisionProcessor)
      jresult => object
    end select
  end function

  function CollisionProcessor_jnew_0() result(this)
    class(CollisionProcessor), pointer :: this
    allocate(this)
    this%jclass = 'CollisionProcessor'
  end function

  recursive function CollisionProcessor_jm_isCollision_2(this, j_myLayer, j_myLayer2) result(jresult)
    class(CollisionProcessor), target :: this
    class(AllBinaryLayer), target, optional :: j_myLayer
    class(AllBinaryLayer), target, optional :: j_myLayer2
    logical :: jresult
        jresult = .false.
        return
  end function
end module CollisionProcessor_m

