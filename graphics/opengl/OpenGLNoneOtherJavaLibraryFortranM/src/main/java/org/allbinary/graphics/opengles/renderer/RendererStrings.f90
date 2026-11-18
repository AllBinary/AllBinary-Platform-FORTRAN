! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.graphics.opengles.renderer
module RendererStrings_m
  use JR_m
  implicit none

  type, extends(JObject) :: RendererStrings
    character(len=:), allocatable :: f_ON_SURFACE_CREATED
    character(len=:), allocatable :: f_ON_SURFACE_CHANGED
    character(len=:), allocatable :: f_ON_DRAW_FRAME
    character(len=:), allocatable :: f_ON_DRAW_FRAME_THREED
    character(len=:), allocatable :: f_ON_DRAW_FRAME_2D
  end type

  class(RendererStrings), pointer, save :: RendererStrings_jcell_instance => null()
  logical, save :: RendererStrings_jset_instance = .false.

contains

  function RendererStrings_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RendererStrings), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RendererStrings)
      jresult => object
    end select
  end function

  function RendererStrings_jstatic_instance() result(jresult)
    class(RendererStrings), pointer :: jresult
    if (.not. RendererStrings_jset_instance) then
      RendererStrings_jset_instance = .true.
      RendererStrings_jcell_instance => RendererStrings_jnew_0()
    end if
    jresult => RendererStrings_jcell_instance
  end function

  subroutine RendererStrings_jsetstatic_instance(jvalue)
    class(RendererStrings), target, optional :: jvalue
    RendererStrings_jset_instance = .true.
    if (present(jvalue)) then
      RendererStrings_jcell_instance => jvalue
    else
      RendererStrings_jcell_instance => null()
    end if
  end subroutine

  function RendererStrings_jnew_0() result(this)
    class(RendererStrings), pointer :: this
    allocate(this)
    this%jclass = 'RendererStrings'
    this%f_ON_SURFACE_CREATED = ''
    this%f_ON_SURFACE_CHANGED = ''
    this%f_ON_DRAW_FRAME = ''
    this%f_ON_DRAW_FRAME_THREED = ''
    this%f_ON_DRAW_FRAME_2D = ''
    this%f_ON_SURFACE_CREATED = 'onSurfaceCreated'
    this%f_ON_SURFACE_CHANGED = 'onSurfaceChanged'
    this%f_ON_DRAW_FRAME = 'onDrawFrame'
    this%f_ON_DRAW_FRAME_THREED = 'onDrawFrameThreed'
    this%f_ON_DRAW_FRAME_2D = 'onDrawFrame2d'
  end function

  recursive function RendererStrings_jm_getInstance_0() result(jresult)
    class(RendererStrings), pointer :: jresult
        jresult => RendererStrings_jstatic_instance()
        return
  end function
end module RendererStrings_m

