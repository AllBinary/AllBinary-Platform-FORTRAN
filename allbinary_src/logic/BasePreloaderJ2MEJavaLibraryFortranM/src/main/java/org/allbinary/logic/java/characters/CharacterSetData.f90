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
! package org.allbinary.logic.java.characters
module CharacterSetData_m
  use JR_m
  implicit none

  type, extends(JObject) :: CharacterSetData
    character(len=:), allocatable :: f_US_ASCII
    character(len=:), allocatable :: f_ISO_8859_1
    character(len=:), allocatable :: f_UTF_8
    character(len=:), allocatable :: f_UTF_16
    character(len=:), allocatable :: f_UTF_16BE
    character(len=:), allocatable :: f_UTF_16LE
  end type

  class(CharacterSetData), pointer, save :: CharacterSetData_jcell_instance => null()
  logical, save :: CharacterSetData_jset_instance = .false.

contains

  function CharacterSetData_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CharacterSetData), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CharacterSetData)
      jresult => object
    end select
  end function

  function CharacterSetData_jstatic_instance() result(jresult)
    class(CharacterSetData), pointer :: jresult
    if (.not. CharacterSetData_jset_instance) then
      CharacterSetData_jset_instance = .true.
      CharacterSetData_jcell_instance => CharacterSetData_jnew_0()
    end if
    jresult => CharacterSetData_jcell_instance
  end function

  recursive function CharacterSetData_jnew_0() result(this)
    class(CharacterSetData), pointer :: this
    allocate(this)
    this%jclass = 'CharacterSetData'
    this%f_US_ASCII = ''
    this%f_ISO_8859_1 = ''
    this%f_UTF_8 = ''
    this%f_UTF_16 = ''
    this%f_UTF_16BE = ''
    this%f_UTF_16LE = ''
    this%f_US_ASCII = 'US-ASCII'
    this%f_ISO_8859_1 = 'ISO-8859-1'
    this%f_UTF_8 = 'UTF-8'
    this%f_UTF_16 = 'UTF-16'
    this%f_UTF_16BE = 'UTF-16BE'
    this%f_UTF_16LE = 'UTF-16LE'
        continue
  end function

  recursive function CharacterSetData_jm_getInstance_0() result(jresult)
    class(CharacterSetData), pointer :: jresult
        jresult => CharacterSetData_jstatic_instance()
        return
  end function
end module CharacterSetData_m

