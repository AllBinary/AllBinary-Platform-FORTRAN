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
! package org.allbinary.data.tree.dom
module DomData_m
  use JR_m
  implicit none

  type, extends(JObject) :: DomData
  end type

  character(len=:), allocatable, save :: DomData_jcell_ID
  logical, save :: DomData_jset_ID = .false.
  character(len=:), allocatable, save :: DomData_jcell_CHILD
  logical, save :: DomData_jset_CHILD = .false.
  character(len=:), allocatable, save :: DomData_jcell_NAME
  logical, save :: DomData_jset_NAME = .false.
  character(len=:), allocatable, save :: DomData_jcell_VALUE
  logical, save :: DomData_jset_VALUE = .false.
  character(len=:), allocatable, save :: DomData_jcell_INDEX
  logical, save :: DomData_jset_INDEX = .false.

contains

  function DomData_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DomData), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DomData)
      jresult => object
    end select
  end function

  function DomData_jstatic_ID() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. DomData_jset_ID) then
      DomData_jset_ID = .true.
      DomData_jcell_ID = 'id'
    end if
    jresult = DomData_jcell_ID
  end function

  subroutine DomData_jsetstatic_ID(jvalue)
    character(len=*), intent(in) :: jvalue
    DomData_jset_ID = .true.
    DomData_jcell_ID = jvalue
  end subroutine

  function DomData_jstatic_CHILD() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. DomData_jset_CHILD) then
      DomData_jset_CHILD = .true.
      DomData_jcell_CHILD = 'child'
    end if
    jresult = DomData_jcell_CHILD
  end function

  subroutine DomData_jsetstatic_CHILD(jvalue)
    character(len=*), intent(in) :: jvalue
    DomData_jset_CHILD = .true.
    DomData_jcell_CHILD = jvalue
  end subroutine

  function DomData_jstatic_NAME() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. DomData_jset_NAME) then
      DomData_jset_NAME = .true.
      DomData_jcell_NAME = 'name'
    end if
    jresult = DomData_jcell_NAME
  end function

  subroutine DomData_jsetstatic_NAME(jvalue)
    character(len=*), intent(in) :: jvalue
    DomData_jset_NAME = .true.
    DomData_jcell_NAME = jvalue
  end subroutine

  function DomData_jstatic_VALUE() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. DomData_jset_VALUE) then
      DomData_jset_VALUE = .true.
      DomData_jcell_VALUE = 'value'
    end if
    jresult = DomData_jcell_VALUE
  end function

  subroutine DomData_jsetstatic_VALUE(jvalue)
    character(len=*), intent(in) :: jvalue
    DomData_jset_VALUE = .true.
    DomData_jcell_VALUE = jvalue
  end subroutine

  function DomData_jstatic_INDEX() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. DomData_jset_INDEX) then
      DomData_jset_INDEX = .true.
      DomData_jcell_INDEX = 'index'
    end if
    jresult = DomData_jcell_INDEX
  end function

  subroutine DomData_jsetstatic_INDEX(jvalue)
    character(len=*), intent(in) :: jvalue
    DomData_jset_INDEX = .true.
    DomData_jcell_INDEX = jvalue
  end subroutine

  recursive function DomData_jnew_0() result(this)
    class(DomData), pointer :: this
    allocate(this)
    this%jclass = 'DomData'
        continue
  end function
end module DomData_m

