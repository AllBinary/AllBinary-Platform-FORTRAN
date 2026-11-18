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
! package org.allbinary.graphics.displayable.screen
module DisplayPointScalar_m
  use JR_m
  use GPoint_m
  implicit none

  type, extends(JObject) :: DisplayPointScalar
  contains
    procedure :: jm_processX_1 => DisplayPointScalar_jm_processX_1
    procedure :: jm_processY_1 => DisplayPointScalar_jm_processY_1
    procedure :: jm_process_1 => DisplayPointScalar_jm_process_1
  end type

  class(DisplayPointScalar), pointer, save :: DisplayPointScalar_jcell_instance => null()
  logical, save :: DisplayPointScalar_jset_instance = .false.

contains

  function DisplayPointScalar_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DisplayPointScalar), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DisplayPointScalar)
      jresult => object
    end select
  end function

  function DisplayPointScalar_jstatic_instance() result(jresult)
    class(DisplayPointScalar), pointer :: jresult
    if (.not. DisplayPointScalar_jset_instance) then
      DisplayPointScalar_jset_instance = .true.
      DisplayPointScalar_jcell_instance => DisplayPointScalar_jnew_0()
    end if
    jresult => DisplayPointScalar_jcell_instance
  end function

  subroutine DisplayPointScalar_jsetstatic_instance(jvalue)
    class(DisplayPointScalar), target, optional :: jvalue
    DisplayPointScalar_jset_instance = .true.
    if (present(jvalue)) then
      DisplayPointScalar_jcell_instance => jvalue
    else
      DisplayPointScalar_jcell_instance => null()
    end if
  end subroutine

  recursive function DisplayPointScalar_jnew_0() result(this)
    class(DisplayPointScalar), pointer :: this
    allocate(this)
    this%jclass = 'DisplayPointScalar'
        continue
  end function

  recursive function DisplayPointScalar_jm_getInstance_0() result(jresult)
    class(DisplayPointScalar), pointer :: jresult
        jresult => DisplayPointScalar_jstatic_instance()
        return
  end function

  recursive function DisplayPointScalar_jm_processX_1(this, j_value) result(jresult)
    class(DisplayPointScalar), target :: this
    integer(4), value :: j_value
    integer(4) :: jresult
        jresult = j_value
        return
  end function

  recursive function DisplayPointScalar_jm_processY_1(this, j_value) result(jresult)
    class(DisplayPointScalar), target :: this
    integer(4), value :: j_value
    integer(4) :: jresult
        jresult = j_value
        return
  end function

  recursive function DisplayPointScalar_jm_process_1(this, j_point) result(jresult)
    class(DisplayPointScalar), target :: this
    class(GPoint), target, optional :: j_point
    class(GPoint), pointer :: jresult
        jresult => j_point
        return
  end function
end module DisplayPointScalar_m

