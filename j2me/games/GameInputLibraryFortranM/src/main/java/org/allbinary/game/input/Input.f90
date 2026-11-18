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
module Input_m
  use JR_m
  use StringMaker_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: Input
    integer(4) :: f_id = 0
    character(len=:), allocatable :: f_name
  contains
    procedure :: jm_getId_0 => Input_jm_getId_0
    procedure :: jm_setId_1 => Input_jm_setId_1
    procedure :: jm_getName_0 => Input_jm_getName_0
    procedure :: jm_setName_1 => Input_jm_setName_1
    procedure :: jm_toString_0 => Input_jm_toString_0
  end type


contains

  function Input_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Input), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Input)
      jresult => object
    end select
  end function

  recursive function Input_jnew_2(j_id, j_name) result(this)
    integer(4), value :: j_id
    character(len=*), intent(in) :: j_name
    class(Input), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'Input'
    this%f_name = ''
    
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_name = jtemp1%f_EMPTY_STRING
        call this%jm_setId_1(j_id)
        call this%jm_setName_1(j_name)
  end function

  recursive function Input_jm_getId_0(this) result(jresult)
    class(Input), target :: this
    integer(4) :: jresult
        jresult = this%f_id
        return
  end function

  recursive subroutine Input_jm_setId_1(this, j_key)
    class(Input), target :: this
    integer(4), value :: j_key
        this%f_id = j_key
  end subroutine

  recursive function Input_jm_getName_0(this) result(jresult)
    class(Input), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function

  recursive subroutine Input_jm_setName_1(this, j_keyName)
    class(Input), target :: this
    character(len=*), intent(in) :: j_keyName
        this%f_name = j_keyName
  end subroutine

  recursive function Input_jm_toString_0(this) result(jresult)
    class(Input), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1('Name: ')
        jdiscardRef => j_stringBuffer%jm_append_1(this%jm_getName_0())
        jdiscardRef => j_stringBuffer%jm_append_1(' Id: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%jm_getId_0())
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module Input_m

