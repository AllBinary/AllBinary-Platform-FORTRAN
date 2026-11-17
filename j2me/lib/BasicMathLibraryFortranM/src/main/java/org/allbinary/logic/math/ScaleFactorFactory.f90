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
module ScaleFactorFactory_m
  use JR_m
  implicit none

  type, extends(JObject) :: ScaleFactorFactory
    integer(4) :: f_DEFAULT_SCALE_FACTOR = 0
    integer(4) :: f_DEFAULT_SCALE_VALUE = 0
  end type

  class(ScaleFactorFactory), pointer, save :: ScaleFactorFactory_jcell_instance => null()
  logical, save :: ScaleFactorFactory_jset_instance = .false.

contains

  function ScaleFactorFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScaleFactorFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScaleFactorFactory)
      jresult => object
    end select
  end function

  function ScaleFactorFactory_jstatic_instance() result(jresult)
    class(ScaleFactorFactory), pointer :: jresult
    if (.not. ScaleFactorFactory_jset_instance) then
      ScaleFactorFactory_jset_instance = .true.
      ScaleFactorFactory_jcell_instance => ScaleFactorFactory_jnew_0()
    end if
    jresult => ScaleFactorFactory_jcell_instance
  end function

  function ScaleFactorFactory_jnew_0() result(this)
    class(ScaleFactorFactory), pointer :: this
    allocate(this)
    this%jclass = 'ScaleFactorFactory'
    this%f_DEFAULT_SCALE_FACTOR = 10
    this%f_DEFAULT_SCALE_VALUE = 1024
  end function

  recursive function ScaleFactorFactory_jm_getInstance_0() result(jresult)
    class(ScaleFactorFactory), pointer :: jresult
        jresult => ScaleFactorFactory_jstatic_instance()
        return
  end function
end module ScaleFactorFactory_m

