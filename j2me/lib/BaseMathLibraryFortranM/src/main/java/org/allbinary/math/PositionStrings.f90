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
! package org.allbinary.math
module PositionStrings_m
  use JR_m
  implicit none

  type, extends(JObject) :: PositionStrings
    character(len=:), allocatable :: f_X
    character(len=:), allocatable :: f_Y
    character(len=:), allocatable :: f_X_LABEL
    character(len=:), allocatable :: f_Y_LABEL
    character(len=:), allocatable :: f_Z_LABEL
    character(len=:), allocatable :: f_DX_LABEL
    character(len=:), allocatable :: f_DY_LABEL
    character(len=:), allocatable :: f_DZ_LABEL
  end type

  class(PositionStrings), pointer, save :: PositionStrings_jcell_instance => null()
  logical, save :: PositionStrings_jset_instance = .false.

contains

  function PositionStrings_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PositionStrings), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PositionStrings)
      jresult => object
    end select
  end function

  function PositionStrings_jstatic_instance() result(jresult)
    class(PositionStrings), pointer :: jresult
    if (.not. PositionStrings_jset_instance) then
      PositionStrings_jset_instance = .true.
      PositionStrings_jcell_instance => PositionStrings_jnew_0()
    end if
    jresult => PositionStrings_jcell_instance
  end function

  function PositionStrings_jnew_0() result(this)
    class(PositionStrings), pointer :: this
    allocate(this)
    this%jclass = 'PositionStrings'
    this%f_X = ''
    this%f_Y = ''
    this%f_X_LABEL = ''
    this%f_Y_LABEL = ''
    this%f_Z_LABEL = ''
    this%f_DX_LABEL = ''
    this%f_DY_LABEL = ''
    this%f_DZ_LABEL = ''
    this%f_X = 'x'
    this%f_Y = 'y'
    this%f_X_LABEL = 'x: '
    this%f_Y_LABEL = 'y: '
    this%f_Z_LABEL = 'z: '
    this%f_DX_LABEL = 'dx: '
    this%f_DY_LABEL = 'dy: '
    this%f_DZ_LABEL = 'dz: '
  end function

  recursive function PositionStrings_jm_getInstance_0() result(jresult)
    class(PositionStrings), pointer :: jresult
        jresult => PositionStrings_jstatic_instance()
        return
  end function
end module PositionStrings_m

