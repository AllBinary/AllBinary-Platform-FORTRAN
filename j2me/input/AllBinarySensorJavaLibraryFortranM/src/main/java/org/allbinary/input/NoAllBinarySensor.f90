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
! package org.allbinary.input
module NoAllBinarySensor_m
  use JR_m
  use AllBinarySensor_m
  implicit none

  type, extends(AllBinarySensor) :: NoAllBinarySensor
  end type

  class(NoAllBinarySensor), pointer, save :: NoAllBinarySensor_jcell_instance => null()
  logical, save :: NoAllBinarySensor_jset_instance = .false.

contains

  function NoAllBinarySensor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoAllBinarySensor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoAllBinarySensor)
      jresult => object
    end select
  end function

  function NoAllBinarySensor_jstatic_instance() result(jresult)
    class(NoAllBinarySensor), pointer :: jresult
    if (.not. NoAllBinarySensor_jset_instance) then
      NoAllBinarySensor_jset_instance = .true.
      NoAllBinarySensor_jcell_instance => NoAllBinarySensor_jnew_0()
    end if
    jresult => NoAllBinarySensor_jcell_instance
  end function

  subroutine NoAllBinarySensor_jsetstatic_instance(jvalue)
    class(NoAllBinarySensor), target, optional :: jvalue
    NoAllBinarySensor_jset_instance = .true.
    if (present(jvalue)) then
      NoAllBinarySensor_jcell_instance => jvalue
    else
      NoAllBinarySensor_jcell_instance => null()
    end if
  end subroutine

  recursive function NoAllBinarySensor_jnew_0() result(this)
    class(NoAllBinarySensor), pointer :: this
    allocate(this)
    this%jclass = 'NoAllBinarySensor'
        continue
  end function

  recursive function NoAllBinarySensor_jm_getInstance_0() result(jresult)
    class(NoAllBinarySensor), pointer :: jresult
        jresult => NoAllBinarySensor_jstatic_instance()
        return
  end function
end module NoAllBinarySensor_m

function NoAllBinarySensor_jnew_0_jext() result(this)
  use NoAllBinarySensor_m, only: JObject, NoAllBinarySensor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NoAllBinarySensor_jnew_0()
end function

