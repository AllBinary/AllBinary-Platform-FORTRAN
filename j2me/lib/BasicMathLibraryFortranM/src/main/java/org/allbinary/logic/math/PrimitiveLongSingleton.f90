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
! package org.allbinary.logic.math
module PrimitiveLongSingleton_m
  use JR_m
  use StringMaker_m
  implicit none

  type, extends(JObject) :: PrimitiveLongSingleton
    integer(4), allocatable :: f_UNK(:)
    integer(4), allocatable :: f_NUMBER_ARRAY(:)
    integer(4), allocatable :: f_NUMBER_CHAR_ARRAY(:)
    integer(4), allocatable :: f_NUMBER_CHAR_ARRAYS(:,:)
    integer(4), allocatable :: f_ZERO(:)
  contains
    procedure :: jm_getNumberFromChar_1 => PrimitiveLongSingleton_jm_getNumberFromChar_1
  end type

  class(PrimitiveLongSingleton), pointer, save :: PrimitiveLongSingleton_jcell_instance => null()
  logical, save :: PrimitiveLongSingleton_jset_instance = .false.

contains

  function PrimitiveLongSingleton_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PrimitiveLongSingleton), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PrimitiveLongSingleton)
      jresult => object
    end select
  end function

  function PrimitiveLongSingleton_jstatic_instance() result(jresult)
    class(PrimitiveLongSingleton), pointer :: jresult
    if (.not. PrimitiveLongSingleton_jset_instance) then
      PrimitiveLongSingleton_jset_instance = .true.
      PrimitiveLongSingleton_jcell_instance => PrimitiveLongSingleton_jnew_0()
    end if
    jresult => PrimitiveLongSingleton_jcell_instance
  end function

  function PrimitiveLongSingleton_jnew_0() result(this)
    class(PrimitiveLongSingleton), pointer :: this
    allocate(this)
    this%jclass = 'PrimitiveLongSingleton'
    this%f_UNK = [integer(4) :: iachar('U'), iachar('n'), iachar('k')]
    this%f_NUMBER_ARRAY = [integer(4) :: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    this%f_NUMBER_CHAR_ARRAY = [integer(4) :: iachar('0'), iachar('1'), iachar('2'), iachar('3'), iachar('4'), iachar('5'), iachar('6'), iachar('7'), iachar('8'), iachar('9')]
    this%f_NUMBER_CHAR_ARRAYS = reshape([integer(4) :: iachar('0'), iachar('1'), iachar('2'), iachar('3'), iachar('4'), iachar('5'), iachar('6'), iachar('7'), iachar('8'), iachar('9')], [10, 1], order=[2, 1])
    this%f_ZERO = [integer(4) :: this%f_NUMBER_CHAR_ARRAY((0) + 1)]
  end function

  recursive function PrimitiveLongSingleton_jm_getInstance_0() result(jresult)
    class(PrimitiveLongSingleton), pointer :: jresult
        jresult => PrimitiveLongSingleton_jstatic_instance()
        return
  end function

  recursive function PrimitiveLongSingleton_jm_getNumberFromChar_1(this, j_numberAsChar) result(jresult)
    class(PrimitiveLongSingleton), target :: this
    integer(4), value :: j_numberAsChar
    integer(4) :: jresult
    integer(4) :: j_size
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
        j_size = size(this%f_NUMBER_CHAR_ARRAY, 1)
        j_index = 0
        do while ((j_index < j_size))
            if ((this%f_NUMBER_CHAR_ARRAY((j_index) + 1) == j_numberAsChar)) then
                jresult = this%f_NUMBER_ARRAY((j_index) + 1)
                return
            end if
            j_index = j_index + 1
        end do
        jtemp3 => StringMaker_jnew_0()
        jtemp2 => jtemp3%jm_append_1('numberAsChar was not in array: ')
        jtemp1 => jtemp2%jm_appendchar_1(j_numberAsChar)
        error stop JR_toString(JR_newJObject('Exception'))
  end function
end module PrimitiveLongSingleton_m

