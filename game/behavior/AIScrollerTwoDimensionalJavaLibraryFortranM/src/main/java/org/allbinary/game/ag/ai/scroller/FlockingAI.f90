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
! package org.allbinary.game.ag.ai.scroller
module FlockingAI_m
  use JR_m
  use BasicAI_m
  use BasicGroupFactory_m
  use GameInput_m
  use GroupLayerManagerListener_m
  use WeaponLayer_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use MathUtil_m
  use ABHashtable_m
  use BasicArrayList_m
  use Integer_m
  use BasePatrolAI_m
  implicit none

  type, extends(BasicAI) :: FlockingAI
    integer(4) :: f_allowedDistance = 0
  contains
    procedure :: jm_processAI_1 => FlockingAI_jm_processAI_1
    procedure :: jm_getXYDistance_1 => FlockingAI_jm_getXYDistance_1
  end type


contains

  function FlockingAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FlockingAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FlockingAI)
      jresult => object
    end select
  end function

  recursive function FlockingAI_jnew_3(j_hashtable, j_ownerLayerInterface, j_gameInput) result(this)
    class(ABHashtable), target, optional :: j_hashtable
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(FlockingAI), pointer :: this
    integer(4) :: j_allowedDistance
    allocate(this)
    this%jclass = 'FlockingAI'
    
        continue ! super()
        j_allowedDistance = JR_unboxInt(j_hashtable%jm_get_1(BasePatrolAI_jstatic_MAX_DISTANCE()))
        this%f_allowedDistance = int(j_allowedDistance, 4)
  end function

  recursive subroutine FlockingAI_jm_processAI_1(this, j_layerManager)
    class(FlockingAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    integer(4) :: j_maxDistance
    class(AllBinaryLayer), pointer :: j_farAllbinaryLayer
    class(GroupLayerManagerListener), pointer :: j_groupLayerManagerListener
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_size
    class(AllBinaryLayer), pointer :: j_allBinaryLayer
    class(AllBinaryLayer), pointer :: j_ownerLayerInterface
    integer(4) :: j_distance
    integer(4) :: j_index
    class(BasicGroupFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_maxDistance = 0
        j_farAllbinaryLayer => AllBinaryLayer_jstatic_NULL_ALLBINARY_LAYER()
        j_groupLayerManagerListener => GroupLayerManagerListener_jm_getInstance_0()
        jtemp1 => BasicGroupFactory_jm_getInstance_0()
        j_list => j_groupLayerManagerListener%jm_getList_1(jtemp1%f_ENEMY)
        j_size = j_list%jm_size_0()
        continue
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_allBinaryLayer => AllBinaryLayer_jcast(j_list%jm_get_1(j_index))
            if ((j_allBinaryLayer%jm_getType_0() /= WeaponLayer_jm_getStaticType_0())) then
                j_distance = this%jm_getXYDistance_1(j_allBinaryLayer)
                if ((j_distance > j_maxDistance)) then
                    j_maxDistance = j_distance
                    j_farAllbinaryLayer => j_allBinaryLayer
                    if ((j_distance > this%f_allowedDistance)) then
                        exit
                    end if
                end if
            end if
            j_index = j_index + 1
        end do
        if ((j_maxDistance > this%f_allowedDistance)) then
            if ((.not. JR_same(j_farAllbinaryLayer, AllBinaryLayer_jstatic_NULL_ALLBINARY_LAYER()))) then
                j_ownerLayerInterface => this%jm_getOwnerLayerInterface_0()
                if ((j_farAllbinaryLayer%jm_getXP_0() < j_ownerLayerInterface%jm_getXP_0())) then
                    call this%jm_processKeyAI_1(Canvas_jstatic_LEFT())
                else if ((j_farAllbinaryLayer%jm_getXP_0() > j_ownerLayerInterface%jm_getXP_0())) then
                    call this%jm_processKeyAI_1(Canvas_jstatic_RIGHT())
                else if ((j_farAllbinaryLayer%jm_getYP_0() > j_ownerLayerInterface%jm_getYP_0())) then
                    call this%jm_processKeyAI_1(Canvas_jstatic_UP())
                else if ((j_farAllbinaryLayer%jm_getYP_0() < j_ownerLayerInterface%jm_getYP_0())) then
                    call this%jm_processKeyAI_1(Canvas_jstatic_DOWN())
                end if
            end if
        end if
  end subroutine

  recursive function FlockingAI_jm_getXYDistance_1(this, j_allBinaryLayer) result(jresult)
    class(FlockingAI), target :: this
    class(AllBinaryLayer), target, optional :: j_allBinaryLayer
    integer(4) :: jresult
    class(AllBinaryLayer), pointer :: j_ownerLayerInterface
    integer(4) :: j_xTotalDistance
    integer(4) :: j_yTotalDistance
    class(MathUtil), pointer :: j_mathUtil
    integer(4) :: j_totalDistance
        j_ownerLayerInterface => this%jm_getOwnerLayerInterface_0()
        j_xTotalDistance = (((j_allBinaryLayer%jm_getXP_0() + j_allBinaryLayer%jm_getHalfWidth_0())) - ((j_ownerLayerInterface%jm_getXP_0() + j_ownerLayerInterface%jm_getHalfWidth_0())))
        j_yTotalDistance = (((j_allBinaryLayer%jm_getYP_0() + j_allBinaryLayer%jm_getHalfHeight_0())) - ((j_ownerLayerInterface%jm_getYP_0() + j_ownerLayerInterface%jm_getHalfHeight_0())))
        j_mathUtil => MathUtil_jm_getInstance_0()
        j_totalDistance = (j_mathUtil%jm_abs_1(j_xTotalDistance) + j_mathUtil%jm_abs_1(j_yTotalDistance))
        jresult = j_totalDistance
        return
  end function
end module FlockingAI_m

