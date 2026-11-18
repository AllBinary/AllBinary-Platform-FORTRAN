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
! package org.allbinary.game.configuration.feature
module TouchFeatureFactory_m
  use JR_m
  use TouchFeature_m
  implicit none

  type, extends(JObject) :: TouchFeatureFactory
    class(TouchFeature), pointer :: f_TOUCH_ENABLED => null()
    class(TouchFeature), pointer :: f_SHOW_SCREEN_BUTTONS => null()
    class(TouchFeature), pointer :: f_AUTO_HIDE_SHOW_SCREEN_BUTTONS => null()
    class(TouchFeature), pointer :: f_HIDE_SCREEN_BUTTONS => null()
  end type

  class(TouchFeatureFactory), pointer, save :: TouchFeatureFactory_jcell_instance => null()
  logical, save :: TouchFeatureFactory_jset_instance = .false.

contains

  function TouchFeatureFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchFeatureFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchFeatureFactory)
      jresult => object
    end select
  end function

  function TouchFeatureFactory_jstatic_instance() result(jresult)
    class(TouchFeatureFactory), pointer :: jresult
    if (.not. TouchFeatureFactory_jset_instance) then
      TouchFeatureFactory_jset_instance = .true.
      TouchFeatureFactory_jcell_instance => TouchFeatureFactory_jnew_0()
    end if
    jresult => TouchFeatureFactory_jcell_instance
  end function

  subroutine TouchFeatureFactory_jsetstatic_instance(jvalue)
    class(TouchFeatureFactory), target, optional :: jvalue
    TouchFeatureFactory_jset_instance = .true.
    if (present(jvalue)) then
      TouchFeatureFactory_jcell_instance => jvalue
    else
      TouchFeatureFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function TouchFeatureFactory_jnew_0() result(this)
    class(TouchFeatureFactory), pointer :: this
    allocate(this)
    this%jclass = 'TouchFeatureFactory'
    this%f_TOUCH_ENABLED => TouchFeature_jnew_1('Touch Enabled')
    this%f_SHOW_SCREEN_BUTTONS => TouchFeature_jnew_1('Show')
    this%f_AUTO_HIDE_SHOW_SCREEN_BUTTONS => TouchFeature_jnew_1('Auto Hide (One Level)')
    this%f_HIDE_SCREEN_BUTTONS => TouchFeature_jnew_1('Hide')
        continue
  end function

  recursive function TouchFeatureFactory_jm_getInstance_0() result(jresult)
    class(TouchFeatureFactory), pointer :: jresult
        jresult => TouchFeatureFactory_jstatic_instance()
        return
  end function
end module TouchFeatureFactory_m

