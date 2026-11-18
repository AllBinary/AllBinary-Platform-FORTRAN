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
module MainFeatureFactory_m
  use JR_m
  use Feature_m
  implicit none

  type, extends(JObject) :: MainFeatureFactory
    class(Feature), pointer :: f_FULL_SCREEN => null()
    class(Feature), pointer :: f_TITLE_BAR => null()
    class(Feature), pointer :: f_STATIC => null()
    class(Feature), pointer :: f_LOAD_ONDEMAND => null()
    class(Feature), pointer :: f_LOAD_ALL => null()
  end type

  class(MainFeatureFactory), pointer, save :: MainFeatureFactory_jcell_instance => null()
  logical, save :: MainFeatureFactory_jset_instance = .false.

contains

  function MainFeatureFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MainFeatureFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MainFeatureFactory)
      jresult => object
    end select
  end function

  function MainFeatureFactory_jstatic_instance() result(jresult)
    class(MainFeatureFactory), pointer :: jresult
    if (.not. MainFeatureFactory_jset_instance) then
      MainFeatureFactory_jset_instance = .true.
      MainFeatureFactory_jcell_instance => MainFeatureFactory_jnew_0()
    end if
    jresult => MainFeatureFactory_jcell_instance
  end function

  subroutine MainFeatureFactory_jsetstatic_instance(jvalue)
    class(MainFeatureFactory), target, optional :: jvalue
    MainFeatureFactory_jset_instance = .true.
    if (present(jvalue)) then
      MainFeatureFactory_jcell_instance => jvalue
    else
      MainFeatureFactory_jcell_instance => null()
    end if
  end subroutine

  function MainFeatureFactory_jnew_0() result(this)
    class(MainFeatureFactory), pointer :: this
    allocate(this)
    this%jclass = 'MainFeatureFactory'
    this%f_FULL_SCREEN => Feature_jnew_1('Full Screen')
    this%f_TITLE_BAR => Feature_jnew_1('Title Bar')
    this%f_STATIC => Feature_jnew_1('Static Dependent Feature')
    this%f_LOAD_ONDEMAND => Feature_jnew_1('Load OnDemand')
    this%f_LOAD_ALL => Feature_jnew_1('Load All')
  end function

  recursive function MainFeatureFactory_jm_getInstance_0() result(jresult)
    class(MainFeatureFactory), pointer :: jresult
        jresult => MainFeatureFactory_jstatic_instance()
        return
  end function
end module MainFeatureFactory_m

