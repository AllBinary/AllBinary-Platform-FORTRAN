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
module J2MEGameKey_m
  use JR_m
  use StringMaker_m
  use StringUtil_m
  use Input_m
  use InputFactory_m
  implicit none

  type, extends(Input) :: J2MEGameKey
  contains
    procedure :: jm_toString_0 => J2MEGameKey_jm_toString_0
  end type


contains

  function J2MEGameKey_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(J2MEGameKey), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (J2MEGameKey)
      jresult => object
    end select
  end function

  recursive function J2MEGameKey_jnew_2(j_key, j_keyName) result(this)
    integer(4), value :: j_key
    character(len=*), intent(in) :: j_keyName
    class(J2MEGameKey), pointer :: this
    integer(4) :: j_id
    class(InputFactory), pointer :: j_inputFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'J2MEGameKey'
        continue ! super()
        j_id = this%jm_getId_0()
        if ((j_id >= 0)) then
            j_inputFactory => InputFactory_jm_getInstance_0()
            call j_inputFactory%jm_add_2(j_id, this)
        end if
  end function

  recursive function J2MEGameKey_jm_toString_0(this) result(jresult)
    class(J2MEGameKey), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
        jtemp3 => StringMaker_jnew_0()
        jtemp2 => jtemp3%jm_append_1('J2MEGameKey: ')
        jtemp1 => jtemp2%jm_append_1(this%Input%jm_toString_0())
        jresult = jtemp1%jm_toString_0()
        return
  end function

  recursive function J2MEGameKey_jm_getString_1(j_keyCode) result(jresult)
    integer(4), value :: j_keyCode
    character(len=:), allocatable :: jresult
    class(Input), pointer :: j_input
    class(InputFactory), pointer :: jtemp4
    class(StringUtil), pointer :: jtemp5
        jtemp4 => InputFactory_jm_getInstance_0()
        j_input => jtemp4%jm_getInstanceById_1(j_keyCode)
        if (associated(j_input)) then
            jresult = j_input%jm_getName_0()
            return
        else
            jtemp5 => StringUtil_jm_getInstance_0()
            jresult = jtemp5%f_EMPTY_STRING
            return
        end if
  end function
end module J2MEGameKey_m

function J2MEGameKey_jnew_2_jext(p1, p2) result(this)
  use J2MEGameKey_m, only: JObject, J2MEGameKey_jnew_2
  implicit none
      integer(4), value :: p1
      character(len=*), intent(in) :: p2
  class(JObject), pointer :: this
  this => J2MEGameKey_jnew_2(p1, p2)
end function

