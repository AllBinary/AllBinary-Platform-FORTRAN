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
module BasicTerrainInfo_m
  use JR_m
  use Angle_m
  use AngleFactory_m
  implicit none

  type, extends(JObject) :: BasicTerrainInfo
    class(Angle), pointer :: f_angle => null()
  contains
    procedure :: jm_getAngle_0 => BasicTerrainInfo_jm_getAngle_0
    procedure :: jm_setAngle_1 => BasicTerrainInfo_jm_setAngle_1
  end type

  class(BasicTerrainInfo), pointer, save :: BasicTerrainInfo_jcell_NULL_BASIC_TERRAIN_INFO => null()
  logical, save :: BasicTerrainInfo_jset_NULL_BASIC_TERRAIN_INFO = .false.

contains

  function BasicTerrainInfo_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicTerrainInfo), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicTerrainInfo)
      jresult => object
    end select
  end function

  function BasicTerrainInfo_jstatic_NULL_BASIC_TERRAIN_INFO() result(jresult)
    class(BasicTerrainInfo), pointer :: jresult
    class(AngleFactory), pointer :: jtemp1
    if (.not. BasicTerrainInfo_jset_NULL_BASIC_TERRAIN_INFO) then
      BasicTerrainInfo_jset_NULL_BASIC_TERRAIN_INFO = .true.
      jtemp1 => AngleFactory_jm_getInstance_0()
    BasicTerrainInfo_jcell_NULL_BASIC_TERRAIN_INFO => BasicTerrainInfo_jnew_1(jtemp1%f_NOT_ANGLE)
    end if
    jresult => BasicTerrainInfo_jcell_NULL_BASIC_TERRAIN_INFO
  end function

  subroutine BasicTerrainInfo_jsetstatic_NULL_BASIC_TERRAIN_INFO(jvalue)
    class(BasicTerrainInfo), target, optional :: jvalue
    BasicTerrainInfo_jset_NULL_BASIC_TERRAIN_INFO = .true.
    if (present(jvalue)) then
      BasicTerrainInfo_jcell_NULL_BASIC_TERRAIN_INFO => jvalue
    else
      BasicTerrainInfo_jcell_NULL_BASIC_TERRAIN_INFO => null()
    end if
  end subroutine

  recursive function BasicTerrainInfo_jnew_1(j_angle) result(this)
    class(Angle), target, optional :: j_angle
    class(BasicTerrainInfo), pointer :: this
    allocate(this)
    this%jclass = 'BasicTerrainInfo'
    
        this%f_angle => j_angle
  end function

  recursive function BasicTerrainInfo_jm_getAngle_0(this) result(jresult)
    class(BasicTerrainInfo), target :: this
    class(Angle), pointer :: jresult
        jresult => this%f_angle
        return
  end function

  recursive subroutine BasicTerrainInfo_jm_setAngle_1(this, j_angle)
    class(BasicTerrainInfo), target :: this
    class(Angle), target, optional :: j_angle
        this%f_angle => j_angle
  end subroutine
end module BasicTerrainInfo_m

