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
module AbFileLocalInputStream_m
  use JR_m
  use FileNotFoundException_m
  use AbFile_m
  use AbFileNativeUtil_m
  use AbFileInputStream_m
  implicit none

  type, extends(AbFileInputStream) :: AbFileLocalInputStream
  end type


contains

  function AbFileLocalInputStream_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AbFileLocalInputStream), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AbFileLocalInputStream)
      jresult => object
    end select
  end function

  recursive function AbFileLocalInputStream_jnew_1(j_file) result(this)
    class(AbFile), target, optional :: j_file
    class(AbFileLocalInputStream), pointer :: this
    class(File), pointer :: jtemp1
    allocate(this)
    this%jclass = 'AbFileLocalInputStream'
        jtemp1 => AbFileNativeUtil_jm_get_1(j_file)
        continue ! super()
  end function
end module AbFileLocalInputStream_m

