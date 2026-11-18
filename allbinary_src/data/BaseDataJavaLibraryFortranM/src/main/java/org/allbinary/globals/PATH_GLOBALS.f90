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
! package org.allbinary.globals
module PATH_GLOBALS_m
  use JR_m
  use AbPathData_m
  use StringMaker_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: PATH_GLOBALS
    character(len=:), allocatable :: f_DATA_PATH
    character(len=:), allocatable :: f_INIT_PATH
    character(len=:), allocatable :: f_VIEWS_PATH
    character(len=:), allocatable :: f_LOG_PATH
    character(len=:), allocatable :: f_BACKUP_PATH
  end type

  class(PATH_GLOBALS), pointer, save :: PATH_GLOBALS_jcell_instance => null()
  logical, save :: PATH_GLOBALS_jset_instance = .false.

contains

  function PATH_GLOBALS_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PATH_GLOBALS), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PATH_GLOBALS)
      jresult => object
    end select
  end function

  function PATH_GLOBALS_jstatic_instance() result(jresult)
    class(PATH_GLOBALS), pointer :: jresult
    if (.not. PATH_GLOBALS_jset_instance) then
      PATH_GLOBALS_jset_instance = .true.
      PATH_GLOBALS_jcell_instance => PATH_GLOBALS_jnew_0()
    end if
    jresult => PATH_GLOBALS_jcell_instance
  end function

  subroutine PATH_GLOBALS_jsetstatic_instance(jvalue)
    class(PATH_GLOBALS), target, optional :: jvalue
    PATH_GLOBALS_jset_instance = .true.
    if (present(jvalue)) then
      PATH_GLOBALS_jcell_instance => jvalue
    else
      PATH_GLOBALS_jcell_instance => null()
    end if
  end subroutine

  recursive function PATH_GLOBALS_jnew_0() result(this)
    class(PATH_GLOBALS), pointer :: this
    class(StringMaker), pointer :: j_stringBuffer
    class(AbPathData), pointer :: j_abPathData
    class(CommonStrings), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'PATH_GLOBALS'
    this%f_DATA_PATH = ''
    this%f_INIT_PATH = ''
    this%f_VIEWS_PATH = ''
    this%f_LOG_PATH = ''
    this%f_BACKUP_PATH = ''
    
    
    
    
    
        j_stringBuffer => StringMaker_jnew_0()
        j_abPathData => AbPathData_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1('data')
        jdiscardRef => j_stringBuffer%jm_append_1(j_abPathData%f_SEPARATOR)
        this%f_DATA_PATH = j_stringBuffer%jm_toString_0()
        jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_DATA_PATH)
        jtemp1 => CommonStrings_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp1%f_INIT)
        jdiscardRef => j_stringBuffer%jm_append_1(j_abPathData%f_SEPARATOR)
        this%f_INIT_PATH = j_stringBuffer%jm_toString_0()
        jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_DATA_PATH)
        jdiscardRef => j_stringBuffer%jm_append_1('log')
        jdiscardRef => j_stringBuffer%jm_append_1(j_abPathData%f_SEPARATOR)
        this%f_LOG_PATH = j_stringBuffer%jm_toString_0()
        jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_DATA_PATH)
        jdiscardRef => j_stringBuffer%jm_append_1('backup')
        jdiscardRef => j_stringBuffer%jm_append_1(j_abPathData%f_SEPARATOR)
        this%f_BACKUP_PATH = j_stringBuffer%jm_toString_0()
        jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_INIT_PATH)
        jdiscardRef => j_stringBuffer%jm_append_1('views')
        jdiscardRef => j_stringBuffer%jm_append_1(j_abPathData%f_SEPARATOR)
        this%f_VIEWS_PATH = j_stringBuffer%jm_toString_0()
  end function

  recursive function PATH_GLOBALS_jm_getInstance_0() result(jresult)
    class(PATH_GLOBALS), pointer :: jresult
        jresult => PATH_GLOBALS_jstatic_instance()
        return
  end function
end module PATH_GLOBALS_m

