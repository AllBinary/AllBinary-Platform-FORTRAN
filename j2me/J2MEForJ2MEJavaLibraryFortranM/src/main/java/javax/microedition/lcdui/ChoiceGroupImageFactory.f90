! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package javax.microedition.lcdui
module ChoiceGroupImageFactory_m
  use JR_m
  use MIDPUtil_m
  use Image_m
  implicit none

  type, extends(JObject) :: ChoiceGroupImageFactory
    integer(4), allocatable :: f_multiOff(:)
    integer(4), allocatable :: f_multiOn(:)
    integer(4), allocatable :: f_radioOff(:)
    integer(4), allocatable :: f_radioOn(:)
    class(MIDPUtil), pointer :: f_midpUtil => null()
    class(Image), pointer :: f_imgMultiOffO => null()
    class(Image), pointer :: f_imgMultiOnO => null()
    class(Image), pointer :: f_imgRadioOffO => null()
    class(Image), pointer :: f_imgRadioOnO => null()
    class(Image), pointer :: f_imgMultiOff => null()
    class(Image), pointer :: f_imgMultiOn => null()
    class(Image), pointer :: f_imgRadioOff => null()
    class(Image), pointer :: f_imgRadioOn => null()
    type(JRef), allocatable :: f_imageArray(:)
  contains
    procedure :: jm_getImageArray_0 => ChoiceGroupImageFactory_jm_getImageArray_0
    procedure :: jm_init_1 => ChoiceGroupImageFactory_jm_init_1
  end type

  class(ChoiceGroupImageFactory), pointer, save :: ChoiceGroupImageFactory_jcell_instance => null()
  logical, save :: ChoiceGroupImageFactory_jset_instance = .false.

contains

  function ChoiceGroupImageFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ChoiceGroupImageFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ChoiceGroupImageFactory)
      jresult => object
    end select
  end function

  function ChoiceGroupImageFactory_jstatic_instance() result(jresult)
    class(ChoiceGroupImageFactory), pointer :: jresult
    if (.not. ChoiceGroupImageFactory_jset_instance) then
      ChoiceGroupImageFactory_jset_instance = .true.
      ChoiceGroupImageFactory_jcell_instance => ChoiceGroupImageFactory_jnew_0()
    end if
    jresult => ChoiceGroupImageFactory_jcell_instance
  end function

  subroutine ChoiceGroupImageFactory_jsetstatic_instance(jvalue)
    class(ChoiceGroupImageFactory), target, optional :: jvalue
    ChoiceGroupImageFactory_jset_instance = .true.
    if (present(jvalue)) then
      ChoiceGroupImageFactory_jcell_instance => jvalue
    else
      ChoiceGroupImageFactory_jcell_instance => null()
    end if
  end subroutine

  function ChoiceGroupImageFactory_jnew_0() result(this)
    class(ChoiceGroupImageFactory), pointer :: this
    allocate(this)
    this%jclass = 'ChoiceGroupImageFactory'
    this%f_multiOff = [integer(4) :: JR_i8((-119)), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, JR_i8((-12)), JR_i8((-117)), 0, 0, 0, 6, 80, 76, 84, 69, JR_i8((-1)), JR_i8((-1)), JR_i8((-1)), JR_i8((-69)), JR_i8((-69)), JR_i8((-69)), JR_i8((-57)), 75, JR_i8((-33)), JR_i8((-8)), 0, 0, 0, 30, 73, 68, 65, 84, 120, JR_i8((-38)), 99, 96, 96, 96, 96, 12, 101, JR_i8((-8)), JR_i8((-51)), JR_i8((-32)), JR_i8((-64)), 32, JR_i8((-64)), JR_i8((-60)), JR_i8((-64)), JR_i8((-64)), JR_i8((-128)), 11, 51, JR_i8((-122)), 50, JR_i8((-4)), 6, 0, 63, 116, 3, 1, 53, JR_i8((-108)), 39, JR_i8((-26)), 0, 0, 0, 0, 73, 69, 78, 68, JR_i8((-82)), 66, 96, JR_i8((-126))]
    this%f_multiOn = [integer(4) :: JR_i8((-119)), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, JR_i8((-12)), JR_i8((-117)), 0, 0, 0, 12, 80, 76, 84, 69, JR_i8((-1)), JR_i8((-1)), JR_i8((-1)), JR_i8((-69)), JR_i8((-69)), JR_i8((-69)), 106, 106, 106, 2, 2, 2, 106, JR_i8((-103)), 14, JR_i8((-47)), 0, 0, 0, 53, 73, 68, 65, 84, 120, JR_i8((-38)), 99, 96, 96, 124, JR_i8((-64)), JR_i8((-16)), JR_i8((-1)), JR_i8((-77)), 3, JR_i8((-45)), 65, JR_i8((-111)), 15, 76, 12, 108, 12, 76, 12, JR_i8((-4)), 12, 76, 12, 18, 12, 76, JR_i8((-68)), 127, 24, JR_i8((-104)), 126, 45, 96, 96, JR_i8((-7)), JR_i8((-11)), JR_i8((-109)), JR_i8((-127)), JR_i8((-23)), JR_i8((-65)), 3, 3, JR_i8((-29)), 127, JR_i8((-122)), JR_i8((-113)), 0, 5, 37, 12, JR_i8((-34)), 1, JR_i8((-99)), JR_i8((-83)), 100, 0, 0, 0, 0, 73, 69, 78, 68, JR_i8((-82)), 66, 96, JR_i8((-126))]
    this%f_radioOff = [integer(4) :: JR_i8((-119)), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, JR_i8((-44)), JR_i8((-62)), JR_i8((-97)), JR_i8((-75)), 0, 0, 0, 9, 80, 76, 84, 69, JR_i8((-1)), JR_i8((-1)), JR_i8((-1)), JR_i8((-69)), JR_i8((-69)), JR_i8((-69)), 106, 106, 106, JR_i8((-44)), 13, JR_i8((-1)), JR_i8((-24)), 0, 0, 0, 42, 73, 68, 65, 84, 120, JR_i8((-38)), 99, 96, 90, JR_i8((-59)), JR_i8((-64)), 32, JR_i8((-63)), 48, JR_i8((-127)), 65, JR_i8((-127)), 65, JR_i8((-127)), 41, JR_i8((-127)), JR_i8((-31)), 5, 19, 3, 3, 3, 50, 102, 80, 96, 80, 96, JR_i8((-6)), JR_i8((-63)), 80, JR_i8((-64)), JR_i8((-64)), JR_i8((-76)), JR_i8((-118)), 1, 0, 113, 24, 5, 61, 73, JR_i8((-68)), JR_i8((-100)), 98, 0, 0, 0, 0, 73, 69, 78, 68, JR_i8((-82)), 66, 96, JR_i8((-126))]
    this%f_radioOn = [integer(4) :: JR_i8((-119)), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, JR_i8((-44)), JR_i8((-62)), JR_i8((-97)), JR_i8((-75)), 0, 0, 0, 12, 80, 76, 84, 69, JR_i8((-1)), JR_i8((-1)), JR_i8((-1)), JR_i8((-69)), JR_i8((-69)), JR_i8((-69)), 106, 106, 106, 2, 2, 2, 106, JR_i8((-103)), 14, JR_i8((-47)), 0, 0, 0, 50, 73, 68, 65, 84, 120, JR_i8((-38)), 5, JR_i8((-63)), 65, 13, 0, 32, 12, 4, JR_i8((-63)), JR_i8((-19)), JR_i8((-11)), JR_i8((-117)), 1, 18, 68, JR_i8((-100)), 10, 52, 19, 94, 72, 64, 17, 101, JR_i8((-122)), 44, JR_i8((-44)), JR_i8((-29)), 98, JR_i8((-52)), 89, 77, JR_i8((-102)), 40, 2, 85, JR_i8((-95)), JR_i8((-73)), JR_i8((-63)), JR_i8((-104)), JR_i8((-63)), 37, JR_i8((-117)), 15, JR_i8((-40)), 119, 10, 41, 78, 26, JR_i8((-79)), 59, 0, 0, 0, 0, 73, 69, 78, 68, JR_i8((-82)), 66, 96, JR_i8((-126))]
    this%f_midpUtil => MIDPUtil_jm_getInstance_0()
    this%f_imgMultiOffO => this%f_midpUtil%jm_createImageFromByteArray_3(this%f_multiOff, 0, size(this%f_multiOff, 1))
    this%f_imgMultiOnO => this%f_midpUtil%jm_createImageFromByteArray_3(this%f_multiOn, 0, size(this%f_multiOn, 1))
    this%f_imgRadioOffO => this%f_midpUtil%jm_createImageFromByteArray_3(this%f_radioOff, 0, size(this%f_radioOff, 1))
    this%f_imgRadioOnO => this%f_midpUtil%jm_createImageFromByteArray_3(this%f_radioOn, 0, size(this%f_radioOn, 1))
    this%f_imgMultiOff => this%f_imgMultiOffO
    this%f_imgMultiOn => this%f_imgMultiOnO
    this%f_imgRadioOff => this%f_imgRadioOffO
    this%f_imgRadioOn => this%f_imgRadioOnO
    this%f_imageArray = [JRef :: JRef(this%f_imgMultiOff), JRef(this%f_imgMultiOn), JRef(this%f_imgRadioOff), JRef(this%f_imgRadioOn)]
  end function

  recursive function ChoiceGroupImageFactory_jm_getInstance_0() result(jresult)
    class(ChoiceGroupImageFactory), pointer :: jresult
        jresult => ChoiceGroupImageFactory_jstatic_instance()
        return
  end function

  recursive function ChoiceGroupImageFactory_jm_getImageArray_0(this) result(jresult)
    class(ChoiceGroupImageFactory), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_imageArray
        return
  end function

  recursive subroutine ChoiceGroupImageFactory_jm_init_1(this, j_imageArray)
    class(ChoiceGroupImageFactory), target :: this
    type(JRef) :: j_imageArray(:)
        this%f_imgMultiOff => Image_jcast(j_imageArray((0) + 1)%v)
        this%f_imageArray((0) + 1)%v => this%f_imgMultiOff
        this%f_imgMultiOn => Image_jcast(j_imageArray((1) + 1)%v)
        this%f_imageArray((1) + 1)%v => this%f_imgMultiOn
        this%f_imgRadioOff => Image_jcast(j_imageArray((2) + 1)%v)
        this%f_imageArray((2) + 1)%v => this%f_imgRadioOff
        this%f_imgRadioOn => Image_jcast(j_imageArray((3) + 1)%v)
        this%f_imageArray((3) + 1)%v => this%f_imgRadioOn
  end subroutine
end module ChoiceGroupImageFactory_m

