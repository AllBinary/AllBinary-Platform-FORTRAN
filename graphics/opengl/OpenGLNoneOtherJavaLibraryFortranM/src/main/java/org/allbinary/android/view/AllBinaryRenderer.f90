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
! package org.allbinary.android.view
module AllBinaryRenderer_m
  use JR_m
  implicit none

  type, extends(JObject) :: AllBinaryRenderer
  contains
    procedure :: jm_setRunnable_1 => AllBinaryRenderer_jm_setRunnable_1
    procedure :: jm_clearRunnable_0 => AllBinaryRenderer_jm_clearRunnable_0
  end type

  class(AllBinaryRenderer), pointer, save :: AllBinaryRenderer_jcell_instance => null()
  logical, save :: AllBinaryRenderer_jset_instance = .false.

contains

  function AllBinaryRenderer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryRenderer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryRenderer)
      jresult => object
    end select
  end function

  function AllBinaryRenderer_jstatic_instance() result(jresult)
    class(AllBinaryRenderer), pointer :: jresult
    if (.not. AllBinaryRenderer_jset_instance) then
      AllBinaryRenderer_jset_instance = .true.
      AllBinaryRenderer_jcell_instance => AllBinaryRenderer_jnew_0()
    end if
    jresult => AllBinaryRenderer_jcell_instance
  end function

  subroutine AllBinaryRenderer_jsetstatic_instance(jvalue)
    class(AllBinaryRenderer), target, optional :: jvalue
    AllBinaryRenderer_jset_instance = .true.
    if (present(jvalue)) then
      AllBinaryRenderer_jcell_instance => jvalue
    else
      AllBinaryRenderer_jcell_instance => null()
    end if
  end subroutine

  function AllBinaryRenderer_jnew_0() result(this)
    class(AllBinaryRenderer), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryRenderer'
  end function

  recursive function AllBinaryRenderer_jm_getInstance_0() result(jresult)
    class(AllBinaryRenderer), pointer :: jresult
        jresult => AllBinaryRenderer_jstatic_instance()
        return
  end function

  recursive subroutine AllBinaryRenderer_jm_setRunnable_1(this, j_runnable)
    class(AllBinaryRenderer), target :: this
    class(JObject), target, optional :: j_runnable
    continue
  end subroutine

  recursive subroutine AllBinaryRenderer_jm_clearRunnable_0(this)
    class(AllBinaryRenderer), target :: this
    continue
  end subroutine
end module AllBinaryRenderer_m

