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
! package org.allbinary.input.motion.gesture
module TrackballMotionGestureFactory_m
  use JR_m
  use InputFactory_m
  use NullUtil_m
  use MotionGestureInput_m
  implicit none

  type, extends(JObject) :: TrackballMotionGestureFactory
    class(MotionGestureInput), pointer :: f_LEFT => null()
    class(MotionGestureInput), pointer :: f_RIGHT => null()
    class(MotionGestureInput), pointer :: f_UP => null()
    class(MotionGestureInput), pointer :: f_DOWN => null()
  end type

  class(JObject), pointer, save :: TrackballMotionGestureFactory_jcell_instance => null()
  logical, save :: TrackballMotionGestureFactory_jset_instance = .false.

contains

  function TrackballMotionGestureFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TrackballMotionGestureFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TrackballMotionGestureFactory)
      jresult => object
    end select
  end function

  function TrackballMotionGestureFactory_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. TrackballMotionGestureFactory_jset_instance) then
      TrackballMotionGestureFactory_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    TrackballMotionGestureFactory_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => TrackballMotionGestureFactory_jcell_instance
  end function

  subroutine TrackballMotionGestureFactory_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    TrackballMotionGestureFactory_jset_instance = .true.
    if (present(jvalue)) then
      TrackballMotionGestureFactory_jcell_instance => jvalue
    else
      TrackballMotionGestureFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function TrackballMotionGestureFactory_jnew_0() result(this)
    class(TrackballMotionGestureFactory), pointer :: this
    integer(4) :: j_MAX
    class(InputFactory), pointer :: jtemp3
    allocate(this)
    this%jclass = 'TrackballMotionGestureFactory'
    
    
    
    
        jtemp3 => InputFactory_jm_getInstance_0()
        j_MAX = jtemp3%f_MAX
        this%f_LEFT => MotionGestureInput_jnew_2((j_MAX - 26), 'L Trackball')
        this%f_RIGHT => MotionGestureInput_jnew_2((j_MAX - 27), 'R Trackball')
        this%f_UP => MotionGestureInput_jnew_2((j_MAX - 28), 'Up Trackball')
        this%f_DOWN => MotionGestureInput_jnew_2((j_MAX - 29), 'D Trackball')
  end function

  recursive function TrackballMotionGestureFactory_jm_getInstance_0() result(jresult)
    class(TrackballMotionGestureFactory), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(TrackballMotionGestureFactory_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call TrackballMotionGestureFactory_jsetstatic_instance(TrackballMotionGestureFactory_jnew_0())
        end if
        jresult => TrackballMotionGestureFactory_jcast(TrackballMotionGestureFactory_jstatic_instance())
        return
  end function
end module TrackballMotionGestureFactory_m

