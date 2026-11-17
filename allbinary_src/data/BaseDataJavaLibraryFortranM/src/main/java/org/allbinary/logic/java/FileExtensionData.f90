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
! package org.allbinary.logic.java
module FileExtensionData_m
  use JR_m
  implicit none

  type, extends(JObject) :: FileExtensionData
    character(len=:), allocatable :: f_DOT_JAVA_SOURCE
    character(len=:), allocatable :: f_JAVA_SOURCE
  end type

  class(FileExtensionData), pointer, save :: FileExtensionData_jcell_instance => null()
  logical, save :: FileExtensionData_jset_instance = .false.

contains

  function FileExtensionData_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FileExtensionData), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FileExtensionData)
      jresult => object
    end select
  end function

  function FileExtensionData_jstatic_instance() result(jresult)
    class(FileExtensionData), pointer :: jresult
    if (.not. FileExtensionData_jset_instance) then
      FileExtensionData_jset_instance = .true.
      FileExtensionData_jcell_instance => FileExtensionData_jnew_0()
    end if
    jresult => FileExtensionData_jcell_instance
  end function

  recursive function FileExtensionData_jnew_0() result(this)
    class(FileExtensionData), pointer :: this
    allocate(this)
    this%jclass = 'FileExtensionData'
    this%f_DOT_JAVA_SOURCE = ''
    this%f_JAVA_SOURCE = ''
    this%f_DOT_JAVA_SOURCE = '.java'
    this%f_JAVA_SOURCE = 'java'
        continue
  end function

  recursive function FileExtensionData_jm_getInstance_0() result(jresult)
    class(FileExtensionData), pointer :: jresult
        jresult => FileExtensionData_jstatic_instance()
        return
  end function
end module FileExtensionData_m

