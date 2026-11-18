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
! package org.allbinary.game.canvas
module ABToGBUtil_m
  use JR_m
  use NullCanvas_m
  use AllBinaryGameLayerManager_m
  implicit none

  type, extends(JObject) :: ABToGBUtil
    class(Canvas), pointer :: f_abCanvas => null()
    class(AllBinaryGameLayerManager), pointer :: f_allBinaryGameLayerManager => null()
  end type

  class(ABToGBUtil), pointer, save :: ABToGBUtil_jcell_instance => null()
  logical, save :: ABToGBUtil_jset_instance = .false.

contains

  function ABToGBUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABToGBUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABToGBUtil)
      jresult => object
    end select
  end function

  function ABToGBUtil_jstatic_instance() result(jresult)
    class(ABToGBUtil), pointer :: jresult
    if (.not. ABToGBUtil_jset_instance) then
      ABToGBUtil_jset_instance = .true.
      ABToGBUtil_jcell_instance => ABToGBUtil_jnew_0()
    end if
    jresult => ABToGBUtil_jcell_instance
  end function

  subroutine ABToGBUtil_jsetstatic_instance(jvalue)
    class(ABToGBUtil), target, optional :: jvalue
    ABToGBUtil_jset_instance = .true.
    if (present(jvalue)) then
      ABToGBUtil_jcell_instance => jvalue
    else
      ABToGBUtil_jcell_instance => null()
    end if
  end subroutine

  function ABToGBUtil_jnew_0() result(this)
    class(ABToGBUtil), pointer :: this
    allocate(this)
    this%jclass = 'ABToGBUtil'
    this%f_abCanvas => NullCanvas_jstatic_NULL_CANVAS()
    this%f_allBinaryGameLayerManager => AllBinaryGameLayerManager_jm_getNullInstance_0()
  end function

  recursive function ABToGBUtil_jm_getInstance_0() result(jresult)
    class(ABToGBUtil), pointer :: jresult
        jresult => ABToGBUtil_jstatic_instance()
        return
  end function
end module ABToGBUtil_m

