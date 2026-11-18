! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
! package org.allbinary.graphics
module GraphicsStrings_m
  use JR_m
  implicit none

  type, extends(JObject) :: GraphicsStrings
    character(len=:), allocatable :: f_ANIMATION
    character(len=:), allocatable :: f_ANGLE
    character(len=:), allocatable :: f_MOVEMENT_ANGLE
    character(len=:), allocatable :: f_ROTATION
    character(len=:), allocatable :: f_OPACITY
    character(len=:), allocatable :: f_HTML
    character(len=:), allocatable :: f_WIDTH
    character(len=:), allocatable :: f_HEIGHT
  end type

  class(GraphicsStrings), pointer, save :: GraphicsStrings_jcell_instance => null()
  logical, save :: GraphicsStrings_jset_instance = .false.

contains

  function GraphicsStrings_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GraphicsStrings), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GraphicsStrings)
      jresult => object
    end select
  end function

  function GraphicsStrings_jstatic_instance() result(jresult)
    class(GraphicsStrings), pointer :: jresult
    if (.not. GraphicsStrings_jset_instance) then
      GraphicsStrings_jset_instance = .true.
      GraphicsStrings_jcell_instance => GraphicsStrings_jnew_0()
    end if
    jresult => GraphicsStrings_jcell_instance
  end function

  subroutine GraphicsStrings_jsetstatic_instance(jvalue)
    class(GraphicsStrings), target, optional :: jvalue
    GraphicsStrings_jset_instance = .true.
    if (present(jvalue)) then
      GraphicsStrings_jcell_instance => jvalue
    else
      GraphicsStrings_jcell_instance => null()
    end if
  end subroutine

  function GraphicsStrings_jnew_0() result(this)
    class(GraphicsStrings), pointer :: this
    allocate(this)
    this%jclass = 'GraphicsStrings'
    this%f_ANIMATION = ''
    this%f_ANGLE = ''
    this%f_MOVEMENT_ANGLE = ''
    this%f_ROTATION = ''
    this%f_OPACITY = ''
    this%f_HTML = ''
    this%f_WIDTH = ''
    this%f_HEIGHT = ''
    this%f_ANIMATION = 'animation'
    this%f_ANGLE = 'angle'
    this%f_MOVEMENT_ANGLE = 'movement_angle'
    this%f_ROTATION = 'rotation'
    this%f_OPACITY = 'opacity'
    this%f_HTML = 'HTML'
    this%f_WIDTH = 'width'
    this%f_HEIGHT = 'height'
  end function

  recursive function GraphicsStrings_jm_getInstance_0() result(jresult)
    class(GraphicsStrings), pointer :: jresult
        jresult => GraphicsStrings_jstatic_instance()
        return
  end function
end module GraphicsStrings_m

