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
module FileWrapperUtil_m
  use JR_m
  use File_m
  use PreLogUtil_m
  use AbFile_m
  implicit none

  type, extends(JObject) :: FileWrapperUtil
  end type


contains

  function FileWrapperUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FileWrapperUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FileWrapperUtil)
      jresult => object
    end select
  end function

  function FileWrapperUtil_jnew_0() result(this)
    class(FileWrapperUtil), pointer :: this
    allocate(this)
    this%jclass = 'FileWrapperUtil'
  end function

  recursive function FileWrapperUtil_jm_wrapFiles_1(j_files) result(jresult)
    type(JRef) :: j_files(:)
    type(JRef), allocatable :: jresult(:)
    type(JRef), allocatable :: j_abFileArray(:)
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_abFileArray = JR_newRefArray(size(j_files, 1))
            j_index = (size(j_files, 1) - 1)
            do while ((j_index >= 0))
                j_abFileArray((j_index) + 1)%v => AbFile_jnew_1(File_jcast(j_files((j_index) + 1)%v))
                j_index = j_index - 1
            end do
            jresult = j_abFileArray
            return
  end function

  recursive function FileWrapperUtil_jm_wrapFile_1(j_file) result(jresult)
    class(File), target, optional :: j_file
    class(AbFile), pointer :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jresult => AbFile_jnew_1(j_file)
            return
  end function
end module FileWrapperUtil_m

