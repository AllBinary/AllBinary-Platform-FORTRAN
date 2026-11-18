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
! package org.allbinary.graphics.displayable
module CanvasStrings_m
  use JR_m
  use BasicArrayList_m
  use BasicArrayListUtil_m
  implicit none

  type, extends(JObject) :: CanvasStrings
    character(len=:), allocatable :: f_CONSTRUCTOR
    character(len=:), allocatable :: f_PAUSE
    character(len=:), allocatable :: f_UN_PAUSE
    character(len=:), allocatable :: f_SET_FULL_SCREEN_MODE
    character(len=:), allocatable :: f_SIZE_CHANGED
    character(len=:), allocatable :: f_SCALED_IMAGES
    character(len=:), allocatable :: f_PAINT
    character(len=:), allocatable :: f_ON_DISPLAY_CHANGE_EVENT
    character(len=:), allocatable :: f_UPDATE_MEASUREMENT
    character(len=:), allocatable :: f_FD_WIDTH
    character(len=:), allocatable :: f_FD_HEIGHT
    class(BasicArrayList), pointer :: f_EMPTY_CHILD_NAME_LIST => null()
    character(len=:), allocatable :: f_ABOUT
    character(len=:), allocatable :: f_OPTIONS
    character(len=:), allocatable :: f_FONT_ATLAS
    character(len=:), allocatable :: f_OBJ_MODEL
    character(len=:), allocatable :: f_MD2_MODEL
    character(len=:), allocatable :: f__PNG
  end type

  class(CanvasStrings), pointer, save :: CanvasStrings_jcell_instance => null()
  logical, save :: CanvasStrings_jset_instance = .false.

contains

  function CanvasStrings_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CanvasStrings), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CanvasStrings)
      jresult => object
    end select
  end function

  function CanvasStrings_jstatic_instance() result(jresult)
    class(CanvasStrings), pointer :: jresult
    if (.not. CanvasStrings_jset_instance) then
      CanvasStrings_jset_instance = .true.
      CanvasStrings_jcell_instance => CanvasStrings_jnew_0()
    end if
    jresult => CanvasStrings_jcell_instance
  end function

  subroutine CanvasStrings_jsetstatic_instance(jvalue)
    class(CanvasStrings), target, optional :: jvalue
    CanvasStrings_jset_instance = .true.
    if (present(jvalue)) then
      CanvasStrings_jcell_instance => jvalue
    else
      CanvasStrings_jcell_instance => null()
    end if
  end subroutine

  function CanvasStrings_jnew_0() result(this)
    class(CanvasStrings), pointer :: this
    class(BasicArrayListUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'CanvasStrings'
    this%f_CONSTRUCTOR = ''
    this%f_PAUSE = ''
    this%f_UN_PAUSE = ''
    this%f_SET_FULL_SCREEN_MODE = ''
    this%f_SIZE_CHANGED = ''
    this%f_SCALED_IMAGES = ''
    this%f_PAINT = ''
    this%f_ON_DISPLAY_CHANGE_EVENT = ''
    this%f_UPDATE_MEASUREMENT = ''
    this%f_FD_WIDTH = ''
    this%f_FD_HEIGHT = ''
    this%f_ABOUT = ''
    this%f_OPTIONS = ''
    this%f_FONT_ATLAS = ''
    this%f_OBJ_MODEL = ''
    this%f_MD2_MODEL = ''
    this%f__PNG = ''
    this%f_CONSTRUCTOR = 'MyCanvas::MyCanvas'
    this%f_PAUSE = 'MyCanvas::pause'
    this%f_UN_PAUSE = 'MyCanvas::unPause'
    this%f_SET_FULL_SCREEN_MODE = 'setFullScreenMode'
    this%f_SIZE_CHANGED = 'sizeChanged'
    this%f_SCALED_IMAGES = 'scaledImages'
    this%f_PAINT = 'paint'
    this%f_ON_DISPLAY_CHANGE_EVENT = 'onDisplayChangeEvent'
    this%f_UPDATE_MEASUREMENT = 'updateMeasurement'
    this%f_FD_WIDTH = ' font/display width: '
    this%f_FD_HEIGHT = ' font/display height: '
    jtemp1 => BasicArrayListUtil_jm_getInstance_0()
    this%f_EMPTY_CHILD_NAME_LIST => jtemp1%jm_getImmutableInstance_0()
    this%f_ABOUT = 'About'
    this%f_OPTIONS = 'Options'
    this%f_FONT_ATLAS = '/font.png'
    this%f_OBJ_MODEL = '_obj'
    this%f_MD2_MODEL = '_md2'
    this%f__PNG = '.png'
  end function

  recursive function CanvasStrings_jm_getInstance_0() result(jresult)
    class(CanvasStrings), pointer :: jresult
        jresult => CanvasStrings_jstatic_instance()
        return
  end function
end module CanvasStrings_m

