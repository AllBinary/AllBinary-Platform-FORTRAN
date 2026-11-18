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
! package org.allbinary.logic.io.path
module AbFilePath_m
  use JR_m
  use StringUtil_m
  use AbPath_m
  use AbPathData_m
  use PathUtil_m
  implicit none

  type, extends(AbPath) :: AbFilePath
  end type


contains

  function AbFilePath_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AbFilePath), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AbFilePath)
      jresult => object
    end select
  end function

  recursive function AbFilePath_jnew_1(j_aPath) result(this)
    character(len=*), intent(in) :: j_aPath
    class(AbFilePath), pointer :: this
    class(AbPathData), pointer :: j_pathData
    class(PathUtil), pointer :: j_abPathUtil
    class(StringUtil), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    class(AbPath), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'AbFilePath'
        jtemp1 => StringUtil_jm_getInstance_0()
        jtemp2 => StringUtil_jm_getInstance_0()
        continue ! super()
        j_pathData => AbPathData_jm_getInstance_0()
        j_abPathUtil => PathUtil_jm_getInstance_0()
        this%f_schema = this%jm_getSchema_1(j_aPath)
        call this%jm_setName_1(j_pathData%jm_getNameFromPath_1(j_aPath))
        jtemp3 => j_abPathUtil%jm_removeNameFromPath_1(j_aPath)
        call this%jm_setPath_1(j_abPathUtil%jm_adjust_1(this%jm_getPathFromPath_1(jtemp3%jm_toString_0())))
  end function
end module AbFilePath_m

function AbFilePath_jnew_1_jext(p1) result(this)
  use AbFilePath_m, only: JObject, AbFilePath_jnew_1
  implicit none
      character(len=*), intent(in) :: p1
  class(JObject), pointer :: this
  this => AbFilePath_jnew_1(p1)
end function

