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
! package org.allbinary.logic.string
module StringValidationJSEUtil_m
  use JR_m
  use Character_m
  implicit none

  type, extends(JObject) :: StringValidationJSEUtil
  end type


contains

  function StringValidationJSEUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(StringValidationJSEUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (StringValidationJSEUtil)
      jresult => object
    end select
  end function

  recursive function StringValidationJSEUtil_jnew_0() result(this)
    class(StringValidationJSEUtil), pointer :: this
    allocate(this)
    this%jclass = 'StringValidationJSEUtil'
        continue
  end function

  recursive function StringValidationJSEUtil_jm_isBlank_1(j_string) result(jresult)
    character(len=*), intent(in) :: j_string
    logical :: jresult
    integer(4) :: j_len
    integer(4) :: j_c
    integer(4) :: j_i
        j_len = len(j_string)
        j_i = 0
        do while ((j_i < j_len))
            j_c = JR_charAt(j_string, j_i)
            if ((Character_jm_isWhitespace_1(j_c) .eqv. .false.)) then
                jresult = .false.
                return
            end if
            j_i = j_i + 1
        end do
        jresult = .true.
        return
  end function
end module StringValidationJSEUtil_m

