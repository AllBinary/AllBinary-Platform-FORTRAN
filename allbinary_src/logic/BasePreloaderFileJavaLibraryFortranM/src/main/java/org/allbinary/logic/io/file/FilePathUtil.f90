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
module FilePathUtil_m
  use JR_m
  use AbPathData_m
  use StringValidationUtil_m
  use FilePathData_m
  implicit none

  type, extends(JObject) :: FilePathUtil
  end type


contains

  function FilePathUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FilePathUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FilePathUtil)
      jresult => object
    end select
  end function

  recursive function FilePathUtil_jnew_0() result(this)
    class(FilePathUtil), pointer :: this
    allocate(this)
    this%jclass = 'FilePathUtil'
        continue
  end function

  recursive function FilePathUtil_jm_adjust_1(j_path) result(jresult)
    character(len=*), intent(in) :: j_path
    character(len=:), allocatable :: jresult
    class(AbPathData), pointer :: j_abPathData
    class(StringValidationUtil), pointer :: j_stringValidationUtil
    class(FilePathData), pointer :: j_filePathData
        j_abPathData => AbPathData_jm_getInstance_0()
        j_stringValidationUtil => StringValidationUtil_jm_getInstance_0()
        j_filePathData => FilePathData_jm_getInstance_0()
        if (j_stringValidationUtil%jm_isEmpty_1(j_path)) then
            jresult = j_filePathData%f_PATH_START
            return
        end if
        j_path = JR_replace(j_path, j_abPathData%f_SEPARATORCHAR, j_filePathData%f_SEPARATORCHAR)
        jresult = j_path
        return
  end function
end module FilePathUtil_m

