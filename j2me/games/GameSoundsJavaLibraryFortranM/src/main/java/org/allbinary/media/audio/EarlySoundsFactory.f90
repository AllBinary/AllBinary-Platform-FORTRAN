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
! package org.allbinary.media.audio
module EarlySoundsFactory_m
  use JR_m
  use BaseSoundsFactory_m
  use Sound_m
  use SelectSound_m
  use ErrorSound_m
  implicit none

  type, extends(BaseSoundsFactory) :: EarlySoundsFactory
  contains
    procedure :: jm_getSoundInterfaceArray_0 => EarlySoundsFactory_jm_getSoundInterfaceArray_0
  end type

  class(EarlySoundsFactory), pointer, save :: EarlySoundsFactory_jcell_instance => null()
  logical, save :: EarlySoundsFactory_jset_instance = .false.

contains

  function EarlySoundsFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(EarlySoundsFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (EarlySoundsFactory)
      jresult => object
    end select
  end function

  function EarlySoundsFactory_jstatic_instance() result(jresult)
    class(EarlySoundsFactory), pointer :: jresult
    if (.not. EarlySoundsFactory_jset_instance) then
      EarlySoundsFactory_jset_instance = .true.
      EarlySoundsFactory_jcell_instance => EarlySoundsFactory_jnew_0()
    end if
    jresult => EarlySoundsFactory_jcell_instance
  end function

  subroutine EarlySoundsFactory_jsetstatic_instance(jvalue)
    class(EarlySoundsFactory), target, optional :: jvalue
    EarlySoundsFactory_jset_instance = .true.
    if (present(jvalue)) then
      EarlySoundsFactory_jcell_instance => jvalue
    else
      EarlySoundsFactory_jcell_instance => null()
    end if
  end subroutine

  function EarlySoundsFactory_jnew_0() result(this)
    class(EarlySoundsFactory), pointer :: this
    allocate(this)
    this%jclass = 'EarlySoundsFactory'
  end function

  recursive function EarlySoundsFactory_jm_getSoundInterfaceArray_0(this) result(jresult)
    class(EarlySoundsFactory), target :: this
    type(JRef), allocatable :: jresult(:)
    type(JRef), allocatable :: j_soundInterfaceArray(:)
    integer(4) :: j_index
    integer(4) :: jtemp1
    integer(4) :: jtemp2
        j_soundInterfaceArray = JR_newRefArray(2)
        j_index = 0
        jtemp1 = j_index
        j_index = j_index + 1
        j_soundInterfaceArray((jtemp1) + 1)%v => SelectSound_jm_getInstance_0()
        jtemp2 = j_index
        j_index = j_index + 1
        j_soundInterfaceArray((jtemp2) + 1)%v => ErrorSound_jm_getInstance_0()
        jresult = j_soundInterfaceArray
        return
  end function

  recursive function EarlySoundsFactory_jm_getInstance_0() result(jresult)
    class(EarlySoundsFactory), pointer :: jresult
        jresult => EarlySoundsFactory_jstatic_instance()
        return
  end function
end module EarlySoundsFactory_m

function EarlySoundsFactory_jnew_0_jext() result(this)
  use EarlySoundsFactory_m, only: JObject, EarlySoundsFactory_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => EarlySoundsFactory_jnew_0()
end function

