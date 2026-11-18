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
module AbFileInputStream_m
  use JR_m
  use File_m
  use FileInputStream_m
  use FileNotFoundException_m
  use AbFile_m
  use AbFileNativeUtil_m
  implicit none

  type, extends(FileInputStream) :: AbFileInputStream
  end type


contains

  function AbFileInputStream_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AbFileInputStream), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AbFileInputStream)
      jresult => object
    end select
  end function

  recursive function AbFileInputStream_jnew_1(j_name) result(this)
    character(len=*), intent(in) :: j_name
    class(AbFileInputStream), pointer :: this
    allocate(this)
    this%jclass = 'AbFileInputStream'
        continue ! super()
  end function

  recursive function AbFileInputStream_jm_createFromAbFile_1(j_file) result(jresult)
    class(AbFile), target, optional :: j_file
    class(AbFileInputStream), pointer :: jresult
    class(File), pointer :: jtemp1
        jtemp1 => AbFileNativeUtil_jm_get_1(j_file)
        jresult => AbFileInputStream_jnew_1(jtemp1%jm_getPath_0())
        return
  end function

  recursive function AbFileInputStream_jm_createFromFile_1(j_file) result(jresult)
    class(File), target, optional :: j_file
    class(AbFileInputStream), pointer :: jresult
        jresult => AbFileInputStream_jnew_1(j_file%jm_getPath_0())
        return
  end function
end module AbFileInputStream_m

function AbFileInputStream_jnew_1_jext(p1) result(this)
  use AbFileInputStream_m, only: JObject, AbFileInputStream_jnew_1
  implicit none
      character(len=*), intent(in) :: p1
  class(JObject), pointer :: this
  this => AbFileInputStream_jnew_1(p1)
end function

