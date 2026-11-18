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
module MotionGestureInput_m
  use JR_m
  use Input_m
  use InputFactory_m
  implicit none

  type, extends(Input) :: MotionGestureInput
  end type


contains

  function MotionGestureInput_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MotionGestureInput), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MotionGestureInput)
      jresult => object
    end select
  end function

  recursive function MotionGestureInput_jnew_2(j_id, j_name) result(this)
    integer(4), value :: j_id
    character(len=*), intent(in) :: j_name
    class(MotionGestureInput), pointer :: this
    class(InputFactory), pointer :: j_inputFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'MotionGestureInput'
        continue ! super()
        j_inputFactory => InputFactory_jm_getInstance_0()
        call j_inputFactory%jm_add_2(this%jm_getId_0(), this)
  end function
end module MotionGestureInput_m

function MotionGestureInput_jnew_2_jext(p1, p2) result(this)
  use MotionGestureInput_m, only: JObject, MotionGestureInput_jnew_2
  implicit none
      integer(4), value :: p1
      character(len=*), intent(in) :: p2
  class(JObject), pointer :: this
  this => MotionGestureInput_jnew_2(p1, p2)
end function

