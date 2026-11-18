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
module OrientationMotionGestureFactory_m
  use JR_m
  use InputFactory_m
  use MotionGestureInput_m
  use NullUtil_m
  implicit none

  type, extends(JObject) :: OrientationMotionGestureFactory
    class(MotionGestureInput), pointer :: f_LEFT => null()
    class(MotionGestureInput), pointer :: f_RIGHT => null()
    class(MotionGestureInput), pointer :: f_UP => null()
    class(MotionGestureInput), pointer :: f_DOWN => null()
    class(MotionGestureInput), pointer :: f_ROLL_LEFT => null()
    class(MotionGestureInput), pointer :: f_ROLL_RIGHT => null()
  end type

  class(JObject), pointer, save :: OrientationMotionGestureFactory_jcell_instance => null()
  logical, save :: OrientationMotionGestureFactory_jset_instance = .false.

contains

  function OrientationMotionGestureFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OrientationMotionGestureFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OrientationMotionGestureFactory)
      jresult => object
    end select
  end function

  function OrientationMotionGestureFactory_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. OrientationMotionGestureFactory_jset_instance) then
      OrientationMotionGestureFactory_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    OrientationMotionGestureFactory_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => OrientationMotionGestureFactory_jcell_instance
  end function

  subroutine OrientationMotionGestureFactory_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    OrientationMotionGestureFactory_jset_instance = .true.
    if (present(jvalue)) then
      OrientationMotionGestureFactory_jcell_instance => jvalue
    else
      OrientationMotionGestureFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function OrientationMotionGestureFactory_jnew_0() result(this)
    class(OrientationMotionGestureFactory), pointer :: this
    integer(4) :: j_MAX
    class(InputFactory), pointer :: jtemp3
    allocate(this)
    this%jclass = 'OrientationMotionGestureFactory'
    
    
    
    
    
    
        jtemp3 => InputFactory_jm_getInstance_0()
        j_MAX = jtemp3%f_MAX
        this%f_LEFT => MotionGestureInput_jnew_2((j_MAX - 20), 'Left Orient')
        this%f_RIGHT => MotionGestureInput_jnew_2((j_MAX - 21), 'Right Orient')
        this%f_UP => MotionGestureInput_jnew_2((j_MAX - 22), 'Up Orient')
        this%f_DOWN => MotionGestureInput_jnew_2((j_MAX - 23), 'Down Orient')
        this%f_ROLL_LEFT => MotionGestureInput_jnew_2((j_MAX - 24), 'Roll Left')
        this%f_ROLL_RIGHT => MotionGestureInput_jnew_2((j_MAX - 25), 'Roll Right')
  end function

  recursive function OrientationMotionGestureFactory_jm_getInstance_0() result(jresult)
    class(OrientationMotionGestureFactory), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(OrientationMotionGestureFactory_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call OrientationMotionGestureFactory_jsetstatic_instance(OrientationMotionGestureFactory_jnew_0())
        end if
        jresult => OrientationMotionGestureFactory_jcast(OrientationMotionGestureFactory_jstatic_instance())
        return
  end function
end module OrientationMotionGestureFactory_m

