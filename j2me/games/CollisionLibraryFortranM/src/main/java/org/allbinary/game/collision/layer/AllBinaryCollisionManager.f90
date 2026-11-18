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
! package org.allbinary.game.collision.layer
module AllBinaryCollisionManager_m
  use JR_m
  use CollidableBaseBehavior_m
  use CollidableInterfaceCompositeInterface_m
  use CollidableCompositeLayer_m
  use ABLayerManager_m
  implicit none

  type, extends(JObject) :: AllBinaryCollisionManager
  contains
    procedure :: jm_process_3 => AllBinaryCollisionManager_jm_process_3
    procedure :: jm_collide_3 => AllBinaryCollisionManager_jm_collide_3
  end type

  class(AllBinaryCollisionManager), pointer, save :: AllBinaryCollisionManager_jcell_allBinaryCollisionManager => null()
  logical, save :: AllBinaryCollisionManager_jset_allBinaryCollisionManager = .false.

contains

  function AllBinaryCollisionManager_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryCollisionManager), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryCollisionManager)
      jresult => object
    end select
  end function

  function AllBinaryCollisionManager_jstatic_allBinaryCollisionManager() result(jresult)
    class(AllBinaryCollisionManager), pointer :: jresult
    if (.not. AllBinaryCollisionManager_jset_allBinaryCollisionManager) then
      AllBinaryCollisionManager_jset_allBinaryCollisionManager = .true.
      AllBinaryCollisionManager_jcell_allBinaryCollisionManager => AllBinaryCollisionManager_jnew_0()
    end if
    jresult => AllBinaryCollisionManager_jcell_allBinaryCollisionManager
  end function

  subroutine AllBinaryCollisionManager_jsetstatic_allBinaryCollisionManager(jvalue)
    class(AllBinaryCollisionManager), target, optional :: jvalue
    AllBinaryCollisionManager_jset_allBinaryCollisionManager = .true.
    if (present(jvalue)) then
      AllBinaryCollisionManager_jcell_allBinaryCollisionManager => jvalue
    else
      AllBinaryCollisionManager_jcell_allBinaryCollisionManager => null()
    end if
  end subroutine

  recursive function AllBinaryCollisionManager_jnew_0() result(this)
    class(AllBinaryCollisionManager), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryCollisionManager'
        continue
  end function

  recursive function AllBinaryCollisionManager_jm_getInstance_0() result(jresult)
    class(AllBinaryCollisionManager), pointer :: jresult
        jresult => AllBinaryCollisionManager_jstatic_allBinaryCollisionManager()
        return
  end function

  recursive subroutine AllBinaryCollisionManager_jm_process_3(this, j_layerManager, j_collidableInterfaceCompositeInterface, j_startIndex)
    class(AllBinaryCollisionManager), target :: this
    class(ABLayerManager), target, optional :: j_layerManager
    class(CollidableInterfaceCompositeInterface), target, optional :: j_collidableInterfaceCompositeInterface
    integer(4), value :: j_startIndex
    integer(4) :: j_size
    class(CollidableInterfaceCompositeInterface), pointer :: j_collidableInterfaceCompositeInterface2
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_size = j_layerManager%jm_getSize_0()
        j_index = (j_startIndex + 1)
        do while ((j_index < j_size))
            j_collidableInterfaceCompositeInterface2 => CollidableInterfaceCompositeInterface_jcast(j_layerManager%jm_getLayerAt_1(j_index))
            call this%jm_collide_3(j_layerManager, j_collidableInterfaceCompositeInterface, j_collidableInterfaceCompositeInterface2)
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine AllBinaryCollisionManager_jm_collide_3(this, j_layerManager, j_collidableInterfaceCompositeInterface, j_collidableInterfaceCompositeInterface2)
    class(AllBinaryCollisionManager), target :: this
    class(ABLayerManager), target, optional :: j_layerManager
    class(CollidableInterfaceCompositeInterface), target, optional :: j_collidableInterfaceCompositeInterface
    class(CollidableInterfaceCompositeInterface), target, optional :: j_collidableInterfaceCompositeInterface2
    class(CollidableBaseBehavior), pointer :: j_collidableBase2
    class(CollidableBaseBehavior), pointer :: j_collidableBase
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_collidableBase2 => j_collidableInterfaceCompositeInterface2%jm_getCollidableInferface_0()
        j_collidableBase => j_collidableInterfaceCompositeInterface%jm_getCollidableInferface_0()
        if (j_collidableBase2%jm_isCollidable_1(CollidableCompositeLayer_jcast(j_collidableInterfaceCompositeInterface))) then
            if (j_collidableBase%jm_isCollisionInterface_2(CollidableCompositeLayer_jcast(j_collidableInterfaceCompositeInterface), j_collidableInterfaceCompositeInterface2)) then
                call j_collidableBase%jm_collideInterface_2(CollidableCompositeLayer_jcast(j_collidableInterfaceCompositeInterface), j_collidableInterfaceCompositeInterface2)
                call j_collidableBase2%jm_collideInterface_2(CollidableCompositeLayer_jcast(j_collidableInterfaceCompositeInterface), j_collidableInterfaceCompositeInterface)
            end if
        end if
  end subroutine
end module AllBinaryCollisionManager_m

