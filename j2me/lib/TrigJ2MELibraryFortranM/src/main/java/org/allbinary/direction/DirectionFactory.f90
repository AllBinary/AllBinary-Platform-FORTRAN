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
module DirectionFactory_m
  use JR_m
  use StringMaker_m
  use CommonPhoneStrings_m
  use CommonSeps_m
  use Direction_m
  implicit none

  type, extends(JObject) :: DirectionFactory
    character(len=:), allocatable :: f_NAME
    class(Direction), pointer :: f_LEFT => null()
    class(Direction), pointer :: f_RIGHT => null()
    class(Direction), pointer :: f_DOWN => null()
    class(Direction), pointer :: f_UP => null()
    class(Direction), pointer :: f_UP_LEFT => null()
    class(Direction), pointer :: f_UP_RIGHT => null()
    class(Direction), pointer :: f_DOWN_LEFT => null()
    class(Direction), pointer :: f_DOWN_RIGHT => null()
    class(Direction), pointer :: f_NOT_BORDERED_WITH => null()
    class(Direction), pointer :: f_NO_DIRECTION => null()
    class(Direction), pointer :: f_TOP => null()
    class(Direction), pointer :: f_BOTTOM => null()
    class(Direction), pointer :: f_ALL_DIRECTION => null()
  end type

  class(DirectionFactory), pointer, save :: DirectionFactory_jcell_instance => null()
  logical, save :: DirectionFactory_jset_instance = .false.

contains

  function DirectionFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DirectionFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DirectionFactory)
      jresult => object
    end select
  end function

  function DirectionFactory_jstatic_instance() result(jresult)
    class(DirectionFactory), pointer :: jresult
    if (.not. DirectionFactory_jset_instance) then
      DirectionFactory_jset_instance = .true.
      DirectionFactory_jcell_instance => DirectionFactory_jnew_0()
    end if
    jresult => DirectionFactory_jcell_instance
  end function

  subroutine DirectionFactory_jsetstatic_instance(jvalue)
    class(DirectionFactory), target, optional :: jvalue
    DirectionFactory_jset_instance = .true.
    if (present(jvalue)) then
      DirectionFactory_jcell_instance => jvalue
    else
      DirectionFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function DirectionFactory_jnew_0() result(this)
    class(DirectionFactory), pointer :: this
    class(StringMaker), pointer :: j_stringBuffer
    class(CommonSeps), pointer :: j_commonSeps
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(StringMaker), pointer :: jtemp13
    class(StringMaker), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(StringMaker), pointer :: jtemp16
    class(CommonPhoneStrings), pointer :: jtemp1
    class(CommonPhoneStrings), pointer :: jtemp2
    class(CommonPhoneStrings), pointer :: jtemp3
    class(CommonPhoneStrings), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'DirectionFactory'
    this%f_NAME = ''
    this%f_NAME = 'DIRECTION'
    jtemp1 => CommonPhoneStrings_jm_getInstance_0()
    this%f_LEFT => Direction_jnew_4(jtemp1%f_LEFT, 'WEST', 0, 1)
    jtemp2 => CommonPhoneStrings_jm_getInstance_0()
    this%f_RIGHT => Direction_jnew_4(jtemp2%f_RIGHT, 'EAST', 1, 0)
    jtemp3 => CommonPhoneStrings_jm_getInstance_0()
    this%f_DOWN => Direction_jnew_4(jtemp3%f_DOWN, 'SOUTH', 2, 0)
    jtemp4 => CommonPhoneStrings_jm_getInstance_0()
    this%f_UP => Direction_jnew_4(jtemp4%f_UP, 'NORTH', 3, 0)
    
    
    
    
    this%f_NOT_BORDERED_WITH => Direction_jnew_4('NOT_BORDERED_WITH', 'NOT_BORDERED_WITH', 8, 0)
    this%f_NO_DIRECTION => Direction_jnew_4('NO_DIRECTION', 'NO_DIRECTION', 9, 0)
    this%f_TOP => Direction_jnew_4('TOP', 'TOP', 10, 0)
    this%f_BOTTOM => Direction_jnew_4('BOTTOM', 'BOTTOM', 11, 0)
    this%f_ALL_DIRECTION => Direction_jnew_4('ALL_DIRECTION', 'ALL_DIRECTION', 12, 0)
        j_stringBuffer => StringMaker_jnew_0()
        j_commonSeps => CommonSeps_jm_getInstance_0()
        jtemp7 => j_stringBuffer%jm_append_1(this%f_UP%jm_getOtherName_0())
        jtemp6 => jtemp7%jm_append_1(j_commonSeps%f_SPACE)
        jtemp5 => jtemp6%jm_append_1(this%f_LEFT%jm_getOtherName_0())
        this%f_UP_LEFT => Direction_jnew_4('UP LEFT', jtemp5%jm_toString_0(), 4, 0)
        jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
        jtemp10 => j_stringBuffer%jm_append_1(this%f_UP%jm_getOtherName_0())
        jtemp9 => jtemp10%jm_append_1(j_commonSeps%f_SPACE)
        jtemp8 => jtemp9%jm_append_1(this%f_RIGHT%jm_getOtherName_0())
        this%f_UP_RIGHT => Direction_jnew_4('UP RIGHT', jtemp8%jm_toString_0(), 5, 0)
        jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
        jtemp13 => j_stringBuffer%jm_append_1(this%f_DOWN%jm_getOtherName_0())
        jtemp12 => jtemp13%jm_append_1(j_commonSeps%f_SPACE)
        jtemp11 => jtemp12%jm_append_1(this%f_LEFT%jm_getOtherName_0())
        this%f_DOWN_LEFT => Direction_jnew_4('DOWN LEFT', jtemp11%jm_toString_0(), 6, 0)
        jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
        jtemp16 => j_stringBuffer%jm_append_1(this%f_DOWN%jm_getOtherName_0())
        jtemp15 => jtemp16%jm_append_1(j_commonSeps%f_SPACE)
        jtemp14 => jtemp15%jm_append_1(this%f_RIGHT%jm_getOtherName_0())
        this%f_DOWN_RIGHT => Direction_jnew_4('DOWN RIGHT', jtemp14%jm_toString_0(), 7, 0)
  end function

  recursive function DirectionFactory_jm_getInstance_0() result(jresult)
    class(DirectionFactory), pointer :: jresult
        jresult => DirectionFactory_jstatic_instance()
        return
  end function
end module DirectionFactory_m

