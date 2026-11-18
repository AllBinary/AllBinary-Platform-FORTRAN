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
! package org.allbinary.direction
module Direction_m
  use JR_m
  use StringMaker_m
  implicit none

  type, extends(JObject) :: Direction
    character(len=:), allocatable :: f_name
    character(len=:), allocatable :: f_otherName
    integer(4) :: f_value = 0
    integer(4) :: f_frameFactor = 0
  contains
    procedure :: jm_getValue_0 => Direction_jm_getValue_0
    procedure :: jm_getFrameFactor_0 => Direction_jm_getFrameFactor_0
    procedure :: jm_getOtherName_0 => Direction_jm_getOtherName_0
    procedure :: jm_getName_0 => Direction_jm_getName_0
    procedure :: jm_toString_0 => Direction_jm_toString_0
  end type

  type(JRef), allocatable, save :: Direction_jcell_directionArray(:)
  logical, save :: Direction_jset_directionArray = .false.

contains

  function Direction_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Direction), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Direction)
      jresult => object
    end select
  end function

  function Direction_jstatic_directionArray() result(jresult)
    type(JRef), allocatable :: jresult(:)
    if (.not. Direction_jset_directionArray) then
      Direction_jset_directionArray = .true.
      Direction_jcell_directionArray = JR_newRefArray(13)
    end if
    jresult = Direction_jcell_directionArray
  end function

  subroutine Direction_jsetstatic_directionArray(jvalue)
    type(JRef) :: jvalue(:)
    Direction_jset_directionArray = .true.
    Direction_jcell_directionArray = jvalue
  end subroutine

  recursive function Direction_jnew_4(j_name, j_otherName, j_value, j_frameFactor) result(this)
    character(len=*), intent(in) :: j_name
    character(len=*), intent(in) :: j_otherName
    integer(4), value :: j_value
    integer(4), value :: j_frameFactor
    class(Direction), pointer :: this
    allocate(this)
    this%jclass = 'Direction'
    this%f_name = ''
    this%f_otherName = ''
    
    
    
    
        this%f_name = j_name
        this%f_otherName = j_otherName
        this%f_value = j_value
        this%f_frameFactor = j_frameFactor
        Direction_jstatic_directionArray()((j_value) + 1)%v => this
  end function

  recursive function Direction_jm_getInstance_1(j_direction) result(jresult)
    integer(4), value :: j_direction
    class(Direction), pointer :: jresult
        associate (jstaticref1 => Direction_jstatic_directionArray())
        jresult => Direction_jcast(jstaticref1((j_direction) + 1)%v)
        end associate
        return
  end function

  recursive function Direction_jm_getValue_0(this) result(jresult)
    class(Direction), target :: this
    integer(4) :: jresult
        jresult = this%f_value
        return
  end function

  recursive function Direction_jm_getFrameFactor_0(this) result(jresult)
    class(Direction), target :: this
    integer(4) :: jresult
        jresult = this%f_frameFactor
        return
  end function

  recursive function Direction_jm_getOtherName_0(this) result(jresult)
    class(Direction), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_otherName
        return
  end function

  recursive function Direction_jm_getName_0(this) result(jresult)
    class(Direction), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function

  recursive function Direction_jm_toString_0(this) result(jresult)
    class(Direction), target :: this
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
        jdiscardRef => j_stringBuffer%jm_append_1('Direction: ')
        jdiscardRef => j_stringBuffer%jm_append_1(this%jm_getName_0())
        jdiscardRef => j_stringBuffer%jm_append_1(' Or: ')
        jdiscardRef => j_stringBuffer%jm_append_1(this%jm_getOtherName_0())
        jdiscardRef => j_stringBuffer%jm_append_1(' Value: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_value)
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module Direction_m

