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
! package org.allbinary.game.input
module PCGameKey_m
  use JR_m
  use StringUtil_m
  use Input_m
  use InputFactory_m
  implicit none

  type, extends(Input) :: PCGameKey
  contains
    procedure :: jm_toString_0 => PCGameKey_jm_toString_0
  end type


contains

  function PCGameKey_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PCGameKey), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PCGameKey)
      jresult => object
    end select
  end function

  recursive function PCGameKey_jnew_2(j_keyCode, j_name) result(this)
    integer(4), value :: j_keyCode
    character(len=*), intent(in) :: j_name
    class(PCGameKey), pointer :: this
    integer(4) :: j_id
    class(InputFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'PCGameKey'
        continue ! super()
        j_id = this%jm_getId_0()
        if ((j_id >= 0)) then
            jtemp1 => InputFactory_jm_getInstance_0()
            call jtemp1%jm_add_2(j_id, this)
        end if
  end function

  recursive function PCGameKey_jm_toString_0(this) result(jresult)
    class(PCGameKey), target :: this
    character(len=:), allocatable :: jresult
        jresult = ('PCGameKey: ' // this%Input%jm_toString_0())
        return
  end function

  recursive function PCGameKey_jm_getString_1(j_keyCode) result(jresult)
    integer(4), value :: j_keyCode
    character(len=:), allocatable :: jresult
    class(Input), pointer :: j_input
    class(InputFactory), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
        jtemp2 => InputFactory_jm_getInstance_0()
        j_input => jtemp2%jm_getInstanceById_1(j_keyCode)
        if (associated(j_input)) then
            jresult = j_input%jm_getName_0()
            return
        else
            jtemp3 => StringUtil_jm_getInstance_0()
            jresult = jtemp3%f_EMPTY_STRING
            return
        end if
  end function
end module PCGameKey_m

function PCGameKey_jnew_2_jext(p1, p2) result(this)
  use PCGameKey_m, only: JObject, PCGameKey_jnew_2
  implicit none
      integer(4), value :: p1
      character(len=*), intent(in) :: p2
  class(JObject), pointer :: this
  this => PCGameKey_jnew_2(p1, p2)
end function

