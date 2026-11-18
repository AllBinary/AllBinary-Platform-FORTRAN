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
! package org.allbinary.game.part.weapon
module SalvoInterface_m
  use JR_m
  use WeaponProperties_m
  use ScoreableInterface_m
  use AllBinaryLayerManager_m
  implicit none

  type, extends(JObject) :: SalvoInterface
  contains
    procedure :: jm_process_3 => SalvoInterface_jm_process_3
    procedure :: jm_processScore_5 => SalvoInterface_jm_processScore_5
  end type


contains

  function SalvoInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SalvoInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SalvoInterface)
      jresult => object
    end select
  end function

  function SalvoInterface_jnew_0() result(this)
    class(SalvoInterface), pointer :: this
    allocate(this)
    this%jclass = 'SalvoInterface'
  end function

  recursive subroutine SalvoInterface_jm_process_3(this, j_allbinaryLayerManager, j_angle, j_otherAngle)
    class(SalvoInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    error stop 'AbstractMethodError: SalvoInterface.process'
  end subroutine

  recursive subroutine SalvoInterface_jm_processScore_5(this, j_allbinaryLayerManager, j_angle, j_otherAngle, j_weaponProperties, j_scoreableInterface)
    class(SalvoInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    class(WeaponProperties), target, optional :: j_weaponProperties
    class(ScoreableInterface), target, optional :: j_scoreableInterface
    error stop 'AbstractMethodError: SalvoInterface.processScore'
  end subroutine
end module SalvoInterface_m

