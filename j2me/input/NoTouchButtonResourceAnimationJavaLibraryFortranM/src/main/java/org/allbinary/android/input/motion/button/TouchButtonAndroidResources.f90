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
! package org.allbinary.android.input.motion.button
module TouchButtonAndroidResources_m
  use JR_m
  use Init_m
  implicit none

  type, extends(Init) :: TouchButtonAndroidResources
  contains
    procedure :: jm_init_0 => TouchButtonAndroidResources_jm_init_0
  end type


contains

  function TouchButtonAndroidResources_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonAndroidResources), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonAndroidResources)
      jresult => object
    end select
  end function

  function TouchButtonAndroidResources_jnew_0() result(this)
    class(TouchButtonAndroidResources), pointer :: this
    allocate(this)
    this%jclass = 'TouchButtonAndroidResources'
  end function

  recursive subroutine TouchButtonAndroidResources_jm_init_0(this)
    class(TouchButtonAndroidResources), target :: this
    continue
  end subroutine
end module TouchButtonAndroidResources_m

function TouchButtonAndroidResources_jnew_0_jext() result(this)
  use TouchButtonAndroidResources_m, only: JObject, TouchButtonAndroidResources_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TouchButtonAndroidResources_jnew_0()
end function

