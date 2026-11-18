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
! package org.allbinary.string
module CommonLabels_m
  use JR_m
  implicit none

  type, extends(JObject) :: CommonLabels
    character(len=:), allocatable :: f_WIDTH_LABEL
    character(len=:), allocatable :: f_HEIGHT_LABEL
    character(len=:), allocatable :: f_END_LABEL
    character(len=:), allocatable :: f_TOTAL_LABEL
    character(len=:), allocatable :: f_INDEX_LABEL
    character(len=:), allocatable :: f_START_LABEL
    character(len=:), allocatable :: f_COMMAND_LABEL
    character(len=:), allocatable :: f_NAME_LABEL
    character(len=:), allocatable :: f_START
    character(len=:), allocatable :: f_ELAPSED
    character(len=:), allocatable :: f_CURRENT
    character(len=:), allocatable :: f_NEXT
    character(len=:), allocatable :: f_ITEM_LABEL
    character(len=:), allocatable :: f_RESULT_
    character(len=:), allocatable :: f_COLON_SEP
  end type

  class(CommonLabels), pointer, save :: CommonLabels_jcell_instance => null()
  logical, save :: CommonLabels_jset_instance = .false.

contains

  function CommonLabels_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CommonLabels), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CommonLabels)
      jresult => object
    end select
  end function

  function CommonLabels_jstatic_instance() result(jresult)
    class(CommonLabels), pointer :: jresult
    if (.not. CommonLabels_jset_instance) then
      CommonLabels_jset_instance = .true.
      CommonLabels_jcell_instance => CommonLabels_jnew_0()
    end if
    jresult => CommonLabels_jcell_instance
  end function

  subroutine CommonLabels_jsetstatic_instance(jvalue)
    class(CommonLabels), target, optional :: jvalue
    CommonLabels_jset_instance = .true.
    if (present(jvalue)) then
      CommonLabels_jcell_instance => jvalue
    else
      CommonLabels_jcell_instance => null()
    end if
  end subroutine

  function CommonLabels_jnew_0() result(this)
    class(CommonLabels), pointer :: this
    allocate(this)
    this%jclass = 'CommonLabels'
    this%f_WIDTH_LABEL = ''
    this%f_HEIGHT_LABEL = ''
    this%f_END_LABEL = ''
    this%f_TOTAL_LABEL = ''
    this%f_INDEX_LABEL = ''
    this%f_START_LABEL = ''
    this%f_COMMAND_LABEL = ''
    this%f_NAME_LABEL = ''
    this%f_START = ''
    this%f_ELAPSED = ''
    this%f_CURRENT = ''
    this%f_NEXT = ''
    this%f_ITEM_LABEL = ''
    this%f_RESULT_ = ''
    this%f_COLON_SEP = ''
    this%f_WIDTH_LABEL = ' Width: '
    this%f_HEIGHT_LABEL = ' Height: '
    this%f_END_LABEL = 'End: '
    this%f_TOTAL_LABEL = 'Total: '
    this%f_INDEX_LABEL = 'index: '
    this%f_START_LABEL = 'Start: '
    this%f_COMMAND_LABEL = 'Command: '
    this%f_NAME_LABEL = 'Name: '
    this%f_START = this%f_START_LABEL
    this%f_ELAPSED = ' Elapsed: '
    this%f_CURRENT = ' Current: '
    this%f_NEXT = 'Next'
    this%f_ITEM_LABEL = 'Item: '
    this%f_RESULT_ = 'Result: '
    this%f_COLON_SEP = ': '
  end function

  recursive function CommonLabels_jm_getInstance_0() result(jresult)
    class(CommonLabels), pointer :: jresult
        jresult => CommonLabels_jstatic_instance()
        return
  end function
end module CommonLabels_m

