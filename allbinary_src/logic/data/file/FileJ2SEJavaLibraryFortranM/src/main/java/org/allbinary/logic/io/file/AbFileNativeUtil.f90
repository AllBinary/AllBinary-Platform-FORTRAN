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
module AbFileNativeUtil_m
  use JR_m
  use File_m
  use AbFile_m
  implicit none

  type, extends(JObject) :: AbFileNativeUtil
  end type


contains

  function AbFileNativeUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AbFileNativeUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AbFileNativeUtil)
      jresult => object
    end select
  end function

  function AbFileNativeUtil_jnew_0() result(this)
    class(AbFileNativeUtil), pointer :: this
    allocate(this)
    this%jclass = 'AbFileNativeUtil'
  end function

  recursive function AbFileNativeUtil_jm_get_1(j_file) result(jresult)
    class(AbFile), target, optional :: j_file
    class(File), pointer :: jresult
        jresult => j_file%jm_getFile_0()
        return
  end function
end module AbFileNativeUtil_m

