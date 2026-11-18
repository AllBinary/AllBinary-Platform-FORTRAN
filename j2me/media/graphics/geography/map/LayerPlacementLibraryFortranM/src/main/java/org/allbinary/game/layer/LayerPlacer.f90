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
! package org.allbinary.game.layer
module LayerPlacer_m
  use JR_m
  use Enumeration_m
  use GPoint_m
  use PointFactory_m
  use AllBinaryLayer_m
  use LayerInterfaceFactory_m
  use LayerInterfaceVisitor_m
  use ABHashtable_m
  use BasicArrayList_m
  use EnumerationUtil_m
  use LayerPlacementInterface_m
  use LayerPlacementType_m
  use LayerPlacementTypeFactory_m
  implicit none

  type, extends(JObject) :: LayerPlacer
    class(EnumerationUtil), pointer :: f_enumerationUtil => null()
    class(LayerInterfaceVisitor), pointer :: f_layerInterfaceVisitor => null()
    class(GPoint), pointer :: f_dimension => null()
  contains
    procedure :: jm_processList_1 => LayerPlacer_jm_processList_1
    procedure :: jm_process_1 => LayerPlacer_jm_process_1
    procedure :: jm_getPoint_1 => LayerPlacer_jm_getPoint_1
  end type


contains

  function LayerPlacer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerPlacer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerPlacer)
      jresult => object
    end select
  end function

  recursive function LayerPlacer_jnew_2(j_layerInterfaceVisitor, j_dimension) result(this)
    class(LayerInterfaceVisitor), target, optional :: j_layerInterfaceVisitor
    class(GPoint), target, optional :: j_dimension
    class(LayerPlacer), pointer :: this
    allocate(this)
    this%jclass = 'LayerPlacer'
    this%f_enumerationUtil => EnumerationUtil_jm_getInstance_0()
    
    
        this%f_layerInterfaceVisitor => j_layerInterfaceVisitor
        this%f_dimension => j_dimension
  end function

  recursive subroutine LayerPlacer_jm_processList_1(this, j_list)
    class(LayerPlacer), target :: this
    class(BasicArrayList), target, optional :: j_list
    integer(4) :: j_size
    class(LayerPlacementInterface), pointer :: j_layerPlacementInterface
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_size = j_list%jm_size_0()
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_layerPlacementInterface => LayerPlacementInterface_jcast(j_list%f_objectArray((j_index) + 1)%v)
            call this%jm_process_1(j_layerPlacementInterface)
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine LayerPlacer_jm_process_1(this, j_layerPlacementInterface)
    class(LayerPlacer), target :: this
    class(LayerPlacementInterface), target, optional :: j_layerPlacementInterface
    class(GPoint), pointer :: j_relativePoint
    class(LayerInterfaceFactory), pointer :: j_layerInterfaceFactory
    class(ABHashtable), pointer :: j_hashtable
    class(Enumeration), pointer :: j_enumeration
    class(GPoint), pointer :: j_point
    class(ABHashtable), pointer :: j_layerHashtable
    integer(4) :: j_x
    integer(4) :: j_y
    integer(4) :: j_z
    class(AllBinaryLayer), pointer :: j_layerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_relativePoint => this%jm_getPoint_1(j_layerPlacementInterface)
        j_layerInterfaceFactory => LayerInterfaceFactory_jm_getInstance_0()
        j_hashtable => j_layerPlacementInterface%jm_getInstance_0()
        j_enumeration => j_hashtable%jm_keys_0()
        continue
        continue
        continue
        continue
        continue
        continue
        do while (this%f_enumerationUtil%jm_hasMoreElements_1(j_enumeration))
            j_point => GPoint_jcast(this%f_enumerationUtil%jm_nextElement_1(j_enumeration))
            j_layerHashtable => ABHashtable_jcast(j_hashtable%jm_get_1(j_point))
            j_x = (j_point%jm_getX_0() + j_relativePoint%jm_getX_0())
            j_y = (j_point%jm_getY_0() + j_relativePoint%jm_getY_0())
            j_z = (j_point%jm_getZ_0() + j_relativePoint%jm_getZ_0())
            j_layerInterface => j_layerInterfaceFactory%jm_getNexInstance_4(j_layerHashtable, j_x, j_y, j_z)
            call this%f_layerInterfaceVisitor%jm_visit_1(j_layerInterface)
        end do
  end subroutine

  recursive function LayerPlacer_jm_getPoint_1(this, j_layerPlacementInterface) result(jresult)
    class(LayerPlacer), target :: this
    class(LayerPlacementInterface), target, optional :: j_layerPlacementInterface
    class(GPoint), pointer :: jresult
    class(PointFactory), pointer :: j_pointFactory
    class(LayerPlacementType), pointer :: j_layerPlacementType
    integer(4) :: j_width
    integer(4) :: j_height
    integer(4) :: j_x
    integer(4) :: j_y
    class(LayerPlacementTypeFactory), pointer :: jtemp1
    class(LayerPlacementTypeFactory), pointer :: jtemp2
        j_pointFactory => PointFactory_jm_getInstance_0()
        j_layerPlacementType => j_layerPlacementInterface%jm_getLayerType_0()
        jtemp1 => LayerPlacementTypeFactory_jm_getInstance_0()
        if (JR_same(j_layerPlacementType, jtemp1%f_MAP)) then
            j_width = j_layerPlacementInterface%jm_getWidth_0()
            j_height = j_layerPlacementInterface%jm_getHeight_0()
            j_x = ((((this%f_dimension%jm_getX_0() - j_width)) / 2))
            j_y = ((((this%f_dimension%jm_getY_0() - j_height)) / 2))
            jresult => j_pointFactory%jm_createXY_2(j_x, j_y)
            return
        else if (JR_same(j_layerPlacementType, jtemp2%f_UP)) then
            j_width = j_layerPlacementInterface%jm_getWidth_0()
            j_height = j_layerPlacementInterface%jm_getHeight_0()
            j_x = ((((this%f_dimension%jm_getX_0() - j_width)) / 2))
            j_y = (-j_height)
            jresult => j_pointFactory%jm_createXY_2(j_x, j_y)
            return
        else
            error stop JR_toString(JR_newJObject('Exception'))
        end if
  end function
end module LayerPlacer_m

