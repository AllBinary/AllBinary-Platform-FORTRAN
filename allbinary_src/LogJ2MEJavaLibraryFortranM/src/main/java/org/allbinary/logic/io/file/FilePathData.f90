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
! package org.allbinary.logic.io.file
module FilePathData_m
  use JR_m
  implicit none

  type, extends(JObject) :: FilePathData
    integer(4) :: f_SEPARATORCHAR = 0
    character(len=:), allocatable :: f_PATH_START
  end type

  class(FilePathData), pointer, save :: FilePathData_jcell_instance => null()
  logical, save :: FilePathData_jset_instance = .false.

contains

  function FilePathData_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FilePathData), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FilePathData)
      jresult => object
    end select
  end function

  function FilePathData_jstatic_instance() result(jresult)
    class(FilePathData), pointer :: jresult
    if (.not. FilePathData_jset_instance) then
      FilePathData_jset_instance = .true.
      FilePathData_jcell_instance => FilePathData_jnew_0()
    end if
    jresult => FilePathData_jcell_instance
  end function

  recursive function FilePathData_jnew_0() result(this)
    class(FilePathData), pointer :: this
    allocate(this)
    this%jclass = 'FilePathData'
    this%f_PATH_START = ''
    this%f_SEPARATORCHAR = 92
    this%f_PATH_START = JR_unescape('\\\\')
        continue
  end function

  recursive function FilePathData_jm_getInstance_0() result(jresult)
    class(FilePathData), pointer :: jresult
        jresult => FilePathData_jstatic_instance()
        return
  end function
end module FilePathData_m

