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
! package org.allbinary.input.gyro
module OrientationToGameKeyEvent_m
  use JR_m
  use Features_m
  use SensorFeatureFactory_m
  use Orientation_m
  use AllBinaryOrientationSensor_m
  use NoGyroSensor_m
  implicit none

  type, extends(JObject) :: OrientationToGameKeyEvent
    class(AllBinaryOrientationSensor), pointer :: f_allBinaryGyroSensor => null()
    integer(4) :: f_MIN = 0
  contains
    procedure :: jm_setAllBinaryGyroSensor_1 => OrientationToGameKeyEvent_jm_setAllBinaryGyroSensor_1
    procedure :: jm_getAllBinaryGyroSensor_0 => OrientationToGameKeyEvent_jm_getAllBinaryGyroSensor_0
    procedure :: jm_process_0 => OrientationToGameKeyEvent_jm_process_0
    procedure :: jm_updateGameKeyEvents_4 => OrientationToGameKeyEvent_jm_updateGameKeyEvents_4
  end type


contains

  function OrientationToGameKeyEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OrientationToGameKeyEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OrientationToGameKeyEvent)
      jresult => object
    end select
  end function

  recursive function OrientationToGameKeyEvent_jnew_0() result(this)
    class(OrientationToGameKeyEvent), pointer :: this
    class(Features), pointer :: jtemp1
    class(SensorFeatureFactory), pointer :: jtemp2
    allocate(this)
    this%jclass = 'OrientationToGameKeyEvent'
    
    this%f_MIN = 15
        jtemp2 => SensorFeatureFactory_jm_getInstance_0()
        jtemp1 => Features_jm_getInstance_0()
        if (jtemp1%jm_isFeature_1(jtemp2%f_NO_ORIENTATION)) then
            this%f_allBinaryGyroSensor => NoGyroSensor_jnew_0()
        else
            error stop JR_toString(JR_newJObject('Exception'))
        end if
  end function

  recursive subroutine OrientationToGameKeyEvent_jm_setAllBinaryGyroSensor_1(this, j_allBinaryGyroSensor)
    class(OrientationToGameKeyEvent), target :: this
    class(AllBinaryOrientationSensor), target, optional :: j_allBinaryGyroSensor
        this%f_allBinaryGyroSensor => j_allBinaryGyroSensor
  end subroutine

  recursive function OrientationToGameKeyEvent_jm_getAllBinaryGyroSensor_0(this) result(jresult)
    class(OrientationToGameKeyEvent), target :: this
    class(AllBinaryOrientationSensor), pointer :: jresult
        jresult => this%f_allBinaryGyroSensor
        return
  end function

  recursive subroutine OrientationToGameKeyEvent_jm_process_0(this)
    class(OrientationToGameKeyEvent), target :: this
    continue
  end subroutine

  recursive subroutine OrientationToGameKeyEvent_jm_updateGameKeyEvents_4(this, j_orientation, j_yaw, j_pitch, j_roll)
    class(OrientationToGameKeyEvent), target :: this
    class(Orientation), target, optional :: j_orientation
    integer(4), value :: j_yaw
    integer(4), value :: j_pitch
    integer(4), value :: j_roll
    continue
  end subroutine
end module OrientationToGameKeyEvent_m

