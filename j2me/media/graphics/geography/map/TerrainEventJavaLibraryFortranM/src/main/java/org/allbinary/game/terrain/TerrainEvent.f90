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
! package org.allbinary.game.terrain
module TerrainEvent_m
  use JR_m
  use StringMaker_m
  use AllBinaryEventObject_m
  use BasicTerrainInfo_m
  implicit none

  type, extends(AllBinaryEventObject) :: TerrainEvent
    class(BasicTerrainInfo), pointer :: f_basicTerrainInfo => null()
  contains
    procedure :: jm_toString_0 => TerrainEvent_jm_toString_0
    procedure :: jm_getBasicTerrainInfo_0 => TerrainEvent_jm_getBasicTerrainInfo_0
    procedure :: jm_setBasicTerrainInfo_1 => TerrainEvent_jm_setBasicTerrainInfo_1
    procedure :: jm_setBasicTerrainInfoForCircularStaticPool_1 => TerrainEvent_jm_setBasicTerrainInfoForCircularStaticPool_1
  end type


contains

  function TerrainEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TerrainEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TerrainEvent)
      jresult => object
    end select
  end function

  recursive function TerrainEvent_jnew_1(j_basicTerrainInfo) result(this)
    class(JObject), target, optional :: j_basicTerrainInfo
    class(TerrainEvent), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'TerrainEvent'
    this%f_basicTerrainInfo => BasicTerrainInfo_jstatic_NULL_BASIC_TERRAIN_INFO()
        continue ! super()
        call this%jm_setBasicTerrainInfo_1(this%f_basicTerrainInfo)
  end function

  recursive function TerrainEvent_jm_toString_0(this) result(jresult)
    class(TerrainEvent), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(JR_unescape('TerrainEvent: \n'))
        jdiscardRef => j_stringBuffer%jm_append_1('LayerInterface: ')
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_basicTerrainInfo%jm_toString_0())
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function

  recursive function TerrainEvent_jm_getBasicTerrainInfo_0(this) result(jresult)
    class(TerrainEvent), target :: this
    class(BasicTerrainInfo), pointer :: jresult
        jresult => this%f_basicTerrainInfo
        return
  end function

  recursive subroutine TerrainEvent_jm_setBasicTerrainInfo_1(this, j_basicTerrainInfo)
    class(TerrainEvent), target :: this
    class(BasicTerrainInfo), target, optional :: j_basicTerrainInfo
        this%f_basicTerrainInfo => j_basicTerrainInfo
  end subroutine

  recursive subroutine TerrainEvent_jm_setBasicTerrainInfoForCircularStaticPool_1(this, j_basicTerrainInfo)
    class(TerrainEvent), target :: this
    class(BasicTerrainInfo), target, optional :: j_basicTerrainInfo
        this%f_basicTerrainInfo => j_basicTerrainInfo
  end subroutine
end module TerrainEvent_m

