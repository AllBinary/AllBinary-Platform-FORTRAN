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
! package org.allbinary.game.configuration.feature
module SensorFeatureFactory_m
  use JR_m
  use SensorFeature_m
  implicit none

  type, extends(JObject) :: SensorFeatureFactory
    class(SensorFeature), pointer :: f_NO_ORIENTATION => null()
    class(SensorFeature), pointer :: f_ORIENTATION_SENSORS => null()
    class(SensorFeature), pointer :: f_SIMULATED_ORIENTATION_SENSORS => null()
    class(SensorFeature), pointer :: f_YAW => null()
    class(SensorFeature), pointer :: f_YAW_MINUS_RIGHT_PLUS_LEFT => null()
    class(SensorFeature), pointer :: f_YAW_MINUS_LEFT_PLUS_RIGHT => null()
    class(SensorFeature), pointer :: f_PITCH => null()
    class(SensorFeature), pointer :: f_ROLL => null()
  end type

  class(SensorFeatureFactory), pointer, save :: SensorFeatureFactory_jcell_instance => null()
  logical, save :: SensorFeatureFactory_jset_instance = .false.

contains

  function SensorFeatureFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SensorFeatureFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SensorFeatureFactory)
      jresult => object
    end select
  end function

  function SensorFeatureFactory_jstatic_instance() result(jresult)
    class(SensorFeatureFactory), pointer :: jresult
    if (.not. SensorFeatureFactory_jset_instance) then
      SensorFeatureFactory_jset_instance = .true.
      SensorFeatureFactory_jcell_instance => SensorFeatureFactory_jnew_0()
    end if
    jresult => SensorFeatureFactory_jcell_instance
  end function

  subroutine SensorFeatureFactory_jsetstatic_instance(jvalue)
    class(SensorFeatureFactory), target, optional :: jvalue
    SensorFeatureFactory_jset_instance = .true.
    if (present(jvalue)) then
      SensorFeatureFactory_jcell_instance => jvalue
    else
      SensorFeatureFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function SensorFeatureFactory_jnew_0() result(this)
    class(SensorFeatureFactory), pointer :: this
    allocate(this)
    this%jclass = 'SensorFeatureFactory'
    this%f_NO_ORIENTATION => SensorFeature_jnew_1('No Orientation')
    this%f_ORIENTATION_SENSORS => SensorFeature_jnew_1('Orientation Sensors')
    this%f_SIMULATED_ORIENTATION_SENSORS => SensorFeature_jnew_1('Simulated Orientation Sensors')
    this%f_YAW => SensorFeature_jnew_1('Yaw')
    this%f_YAW_MINUS_RIGHT_PLUS_LEFT => SensorFeature_jnew_1('Yaw -Right +Left')
    this%f_YAW_MINUS_LEFT_PLUS_RIGHT => SensorFeature_jnew_1('Yaw -Left +Right ')
    this%f_PITCH => SensorFeature_jnew_1('Pitch')
    this%f_ROLL => SensorFeature_jnew_1('Roll')
        continue
  end function

  recursive function SensorFeatureFactory_jm_getInstance_0() result(jresult)
    class(SensorFeatureFactory), pointer :: jresult
        jresult => SensorFeatureFactory_jstatic_instance()
        return
  end function
end module SensorFeatureFactory_m

