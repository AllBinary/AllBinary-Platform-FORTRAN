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
! package org.allbinary.input.motion.gesture.configuration
module MotionGestureConfigurationFactory_m
  use JR_m
  use MotionGestureConfiguration_m
  implicit none

  type, extends(JObject) :: MotionGestureConfigurationFactory
  end type

  class(MotionGestureConfiguration), pointer, save :: MotionGestureConfigurationFactory_jcell_config => null()
  logical, save :: MotionGestureConfigurationFactory_jset_config = .false.

contains

  function MotionGestureConfigurationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MotionGestureConfigurationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MotionGestureConfigurationFactory)
      jresult => object
    end select
  end function

  function MotionGestureConfigurationFactory_jstatic_config() result(jresult)
    class(MotionGestureConfiguration), pointer :: jresult
    if (.not. MotionGestureConfigurationFactory_jset_config) then
      MotionGestureConfigurationFactory_jset_config = .true.
      MotionGestureConfigurationFactory_jcell_config => MotionGestureConfiguration_jnew_0()
    end if
    jresult => MotionGestureConfigurationFactory_jcell_config
  end function

  subroutine MotionGestureConfigurationFactory_jsetstatic_config(jvalue)
    class(MotionGestureConfiguration), target, optional :: jvalue
    MotionGestureConfigurationFactory_jset_config = .true.
    if (present(jvalue)) then
      MotionGestureConfigurationFactory_jcell_config => jvalue
    else
      MotionGestureConfigurationFactory_jcell_config => null()
    end if
  end subroutine

  recursive function MotionGestureConfigurationFactory_jnew_0() result(this)
    class(MotionGestureConfigurationFactory), pointer :: this
    allocate(this)
    this%jclass = 'MotionGestureConfigurationFactory'
        continue
  end function

  recursive function MotionGestureConfigurationFactory_jm_getInstance_0() result(jresult)
    class(MotionGestureConfiguration), pointer :: jresult
        jresult => MotionGestureConfigurationFactory_jstatic_config()
        return
  end function
end module MotionGestureConfigurationFactory_m

