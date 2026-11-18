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
! package org.allbinary.game.combat.destroy
module DestroyableSimpleBehavior_m
  use JR_m
  use CollidableCompositeLayer_m
  use DestroyableBaseBehavior_m
  use DestroyedLayerProcessor_m
  implicit none

  type, extends(DestroyableBaseBehavior) :: DestroyableSimpleBehavior
    class(CollidableCompositeLayer), pointer :: f_ownerLayer => null()
    logical :: f_destroyed = .false.
  contains
    procedure :: jm_isDestroyed_0 => DestroyableSimpleBehavior_jm_isDestroyed_0
    procedure :: jm_setDestroyed_1 => DestroyableSimpleBehavior_jm_setDestroyed_1
  end type


contains

  function DestroyableSimpleBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DestroyableSimpleBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DestroyableSimpleBehavior)
      jresult => object
    end select
  end function

  recursive function DestroyableSimpleBehavior_jnew_1(j_ownerLayer) result(this)
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(DestroyableSimpleBehavior), pointer :: this
    allocate(this)
    this%jclass = 'DestroyableSimpleBehavior'
    
    this%f_destroyed = .false.
        this%f_ownerLayer => j_ownerLayer
  end function

  recursive function DestroyableSimpleBehavior_jm_isDestroyed_0(this) result(jresult)
    class(DestroyableSimpleBehavior), target :: this
    logical :: jresult
        jresult = this%f_destroyed
        return
  end function

  recursive subroutine DestroyableSimpleBehavior_jm_setDestroyed_1(this, j_destroyed)
    class(DestroyableSimpleBehavior), target :: this
    logical, value :: j_destroyed
    class(DestroyedLayerProcessor), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_destroyed = j_destroyed
        if (this%jm_isDestroyed_0()) then
            jtemp1 => DestroyedLayerProcessor_jm_getInstance_0()
            call jtemp1%jm_add_1(this%f_ownerLayer)
        end if
  end subroutine
end module DestroyableSimpleBehavior_m

