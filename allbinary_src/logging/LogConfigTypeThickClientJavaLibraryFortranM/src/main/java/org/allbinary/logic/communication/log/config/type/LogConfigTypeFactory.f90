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
! package org.allbinary.logic.communication.log.config.type
module LogConfigTypeFactory_m
  use JR_m
  use LogConfigType_m
  use LogConfigTypes_m
  implicit none

  type, extends(JObject) :: LogConfigTypeFactory
    character(len=:), allocatable :: f_NO_DESCRIPTION
    class(LogConfigType), pointer :: f_OS => null()
    class(LogConfigType), pointer :: f_FACTORYERROR => null()
    class(LogConfigType), pointer :: f_FILE => null()
    class(LogConfigType), pointer :: f_FILEERROR => null()
    class(LogConfigType), pointer :: f_IDLOGGING => null()
    class(LogConfigType), pointer :: f_REPLACE => null()
    class(LogConfigType), pointer :: f_REPLACE_INFO => null()
    class(LogConfigType), pointer :: f_REPLACEERROR => null()
  end type

  class(LogConfigTypeFactory), pointer, save :: LogConfigTypeFactory_jcell_instance => null()
  logical, save :: LogConfigTypeFactory_jset_instance = .false.

contains

  function LogConfigTypeFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LogConfigTypeFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LogConfigTypeFactory)
      jresult => object
    end select
  end function

  function LogConfigTypeFactory_jstatic_instance() result(jresult)
    class(LogConfigTypeFactory), pointer :: jresult
    if (.not. LogConfigTypeFactory_jset_instance) then
      LogConfigTypeFactory_jset_instance = .true.
      LogConfigTypeFactory_jcell_instance => LogConfigTypeFactory_jnew_0()
    end if
    jresult => LogConfigTypeFactory_jcell_instance
  end function

  subroutine LogConfigTypeFactory_jsetstatic_instance(jvalue)
    class(LogConfigTypeFactory), target, optional :: jvalue
    LogConfigTypeFactory_jset_instance = .true.
    if (present(jvalue)) then
      LogConfigTypeFactory_jcell_instance => jvalue
    else
      LogConfigTypeFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function LogConfigTypeFactory_jnew_0() result(this)
    class(LogConfigTypeFactory), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'LogConfigTypeFactory'
    this%f_NO_DESCRIPTION = ''
    this%f_NO_DESCRIPTION = 'No Description'
    this%f_OS => LogConfigType_jnew_2('Operating System', this%f_NO_DESCRIPTION)
    this%f_FACTORYERROR => LogConfigType_jnew_2('Factory Error', this%f_NO_DESCRIPTION)
    this%f_FILE => LogConfigType_jnew_2('File', this%f_NO_DESCRIPTION)
    this%f_FILEERROR => LogConfigType_jnew_2('File Error', this%f_NO_DESCRIPTION)
    this%f_IDLOGGING => LogConfigType_jnew_2('ID Logging', this%f_NO_DESCRIPTION)
    this%f_REPLACE => LogConfigType_jnew_2('Replace', this%f_NO_DESCRIPTION)
    this%f_REPLACE_INFO => LogConfigType_jnew_2('Replace Info', this%f_NO_DESCRIPTION)
    this%f_REPLACEERROR => LogConfigType_jnew_2('Replace Error', this%f_NO_DESCRIPTION)
        associate (jstatic_N66575 => LogConfigTypes_jstatic_LOGGING())
        jdiscardBoolean = jstatic_N66575%jm_add_1(this%f_OS)
        end associate
        associate (jstatic_N66614 => LogConfigTypes_jstatic_LOGGING())
        jdiscardBoolean = jstatic_N66614%jm_add_1(this%f_FACTORYERROR)
        end associate
  end function

  recursive function LogConfigTypeFactory_jm_getInstance_0() result(jresult)
    class(LogConfigTypeFactory), pointer :: jresult
        jresult => LogConfigTypeFactory_jstatic_instance()
        return
  end function
end module LogConfigTypeFactory_m

