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
module TouchMotionGestureFactory_m
  use JR_m
  use InputFactory_m
  use NullUtil_m
  use MotionGestureInput_m
  implicit none

  type, extends(JObject) :: TouchMotionGestureFactory
    class(MotionGestureInput), pointer :: f_LEFT => null()
    class(MotionGestureInput), pointer :: f_RIGHT => null()
    class(MotionGestureInput), pointer :: f_UP => null()
    class(MotionGestureInput), pointer :: f_DOWN => null()
    class(MotionGestureInput), pointer :: f_PRESSED => null()
    class(MotionGestureInput), pointer :: f_RELEASED => null()
    class(MotionGestureInput), pointer :: f_DIAGONAL_DOWN_RIGHT => null()
    class(MotionGestureInput), pointer :: f_DIAGONAL_DOWN_LEFT => null()
    class(MotionGestureInput), pointer :: f_DIAGONAL_UP_RIGHT => null()
    class(MotionGestureInput), pointer :: f_DIAGONAL_UP_LEFT => null()
    class(MotionGestureInput), pointer :: f_SCROLL_UP => null()
    class(MotionGestureInput), pointer :: f_SCROLL_DOWN => null()
    class(MotionGestureInput), pointer :: f_NO_MOTION => null()
    class(MotionGestureInput), pointer :: f_LAST_MOTION => null()
  end type

  class(JObject), pointer, save :: TouchMotionGestureFactory_jcell_instance => null()
  logical, save :: TouchMotionGestureFactory_jset_instance = .false.

contains

  function TouchMotionGestureFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchMotionGestureFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchMotionGestureFactory)
      jresult => object
    end select
  end function

  function TouchMotionGestureFactory_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. TouchMotionGestureFactory_jset_instance) then
      TouchMotionGestureFactory_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    TouchMotionGestureFactory_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => TouchMotionGestureFactory_jcell_instance
  end function

  subroutine TouchMotionGestureFactory_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    TouchMotionGestureFactory_jset_instance = .true.
    if (present(jvalue)) then
      TouchMotionGestureFactory_jcell_instance => jvalue
    else
      TouchMotionGestureFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function TouchMotionGestureFactory_jnew_0() result(this)
    class(TouchMotionGestureFactory), pointer :: this
    integer(4) :: j_MAX
    class(InputFactory), pointer :: jtemp3
    allocate(this)
    this%jclass = 'TouchMotionGestureFactory'
    
    
    
    
    
    
    
    
    
    
    
    
    
    
        jtemp3 => InputFactory_jm_getInstance_0()
        j_MAX = jtemp3%f_MAX
        this%f_LEFT => MotionGestureInput_jnew_2((j_MAX - 3), 'Left Touch')
        this%f_RIGHT => MotionGestureInput_jnew_2((j_MAX - 4), 'Right Touch')
        this%f_UP => MotionGestureInput_jnew_2((j_MAX - 5), 'Up Touch')
        this%f_DOWN => MotionGestureInput_jnew_2((j_MAX - 6), 'Down Touch')
        this%f_PRESSED => MotionGestureInput_jnew_2((j_MAX - 7), 'Screen Press')
        this%f_RELEASED => MotionGestureInput_jnew_2((j_MAX - 8), 'Released')
        this%f_DIAGONAL_DOWN_RIGHT => MotionGestureInput_jnew_2((j_MAX - 9), 'Diagonal Dn R')
        this%f_DIAGONAL_DOWN_LEFT => MotionGestureInput_jnew_2((j_MAX - 10), 'Diagonal Dn L')
        this%f_DIAGONAL_UP_RIGHT => MotionGestureInput_jnew_2((j_MAX - 11), 'Diagonal Up R')
        this%f_DIAGONAL_UP_LEFT => MotionGestureInput_jnew_2((j_MAX - 12), 'Diagonal Up L')
        this%f_SCROLL_UP => MotionGestureInput_jnew_2((j_MAX - 13), 'Scroll Up')
        this%f_SCROLL_DOWN => MotionGestureInput_jnew_2((j_MAX - 14), 'Scroll Down')
        this%f_NO_MOTION => MotionGestureInput_jnew_2((j_MAX - 2), 'No Motion')
        this%f_LAST_MOTION => MotionGestureInput_jnew_2((j_MAX - 19), 'Last Motion')
  end function

  recursive function TouchMotionGestureFactory_jm_getInstance_0() result(jresult)
    class(TouchMotionGestureFactory), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(TouchMotionGestureFactory_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call TouchMotionGestureFactory_jsetstatic_instance(TouchMotionGestureFactory_jnew_0())
        end if
        jresult => TouchMotionGestureFactory_jcast(TouchMotionGestureFactory_jstatic_instance())
        return
  end function
end module TouchMotionGestureFactory_m

