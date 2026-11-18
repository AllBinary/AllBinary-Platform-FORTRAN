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
! package org.allbinary.logic.io
module AbFileOutputStream_m
  use JR_m
  use FileNotFoundException_m
  use FileOutputStream_m
  use AbFile_m
  implicit none

  type, extends(FileOutputStream) :: AbFileOutputStream
  end type


contains

  function AbFileOutputStream_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AbFileOutputStream), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AbFileOutputStream)
      jresult => object
    end select
  end function

  recursive function AbFileOutputStream_jnew_2(j_name, j_append) result(this)
    character(len=*), intent(in) :: j_name
    logical, value :: j_append
    class(AbFileOutputStream), pointer :: this
    allocate(this)
    this%jclass = 'AbFileOutputStream'
        continue ! super()
  end function

  recursive function AbFileOutputStream_jm_createFromAbFile_1(j_file) result(jresult)
    class(AbFile), target, optional :: j_file
    class(AbFileOutputStream), pointer :: jresult
        jresult => AbFileOutputStream_jnew_2(j_file%jm_getPath_0(), .false.)
        return
  end function

  recursive function AbFileOutputStream_jm_createFromAbFileAppend_2(j_file, j_append) result(jresult)
    class(AbFile), target, optional :: j_file
    logical, value :: j_append
    class(AbFileOutputStream), pointer :: jresult
        jresult => AbFileOutputStream_jnew_2(j_file%jm_getPath_0(), j_append)
        return
  end function

  recursive function AbFileOutputStream_jm_createFromFilePath_1(j_name) result(jresult)
    character(len=*), intent(in) :: j_name
    class(AbFileOutputStream), pointer :: jresult
        jresult => AbFileOutputStream_jnew_2(j_name, .false.)
        return
  end function

  recursive function AbFileOutputStream_jm_createFromFilePathAppend_2(j_name, j_append) result(jresult)
    character(len=*), intent(in) :: j_name
    logical, value :: j_append
    class(AbFileOutputStream), pointer :: jresult
        jresult => AbFileOutputStream_jnew_2(j_name, j_append)
        return
  end function
end module AbFileOutputStream_m

function AbFileOutputStream_jnew_2_jext(p1, p2) result(this)
  use AbFileOutputStream_m, only: JObject, AbFileOutputStream_jnew_2
  implicit none
      character(len=*), intent(in) :: p1
      logical, value :: p2
  class(JObject), pointer :: this
  this => AbFileOutputStream_jnew_2(p1, p2)
end function

