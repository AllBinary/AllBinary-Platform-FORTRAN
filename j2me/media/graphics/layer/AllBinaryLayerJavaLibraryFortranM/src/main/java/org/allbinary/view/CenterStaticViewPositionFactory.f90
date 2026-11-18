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
! package org.allbinary.view
module CenterStaticViewPositionFactory_m
  use JR_m
  use DisplayInfoSingleton_m
  use StaticViewPosition_m
  use ViewPositionBase_m
  implicit none

  type, extends(JObject) :: CenterStaticViewPositionFactory
  contains
    procedure :: jm_getInstance_1 => CenterStaticViewPositionFactory_jm_getInstance_1
  end type


contains

  function CenterStaticViewPositionFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CenterStaticViewPositionFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CenterStaticViewPositionFactory)
      jresult => object
    end select
  end function

  recursive function CenterStaticViewPositionFactory_jnew_0() result(this)
    class(CenterStaticViewPositionFactory), pointer :: this
    allocate(this)
    this%jclass = 'CenterStaticViewPositionFactory'
        continue
  end function

  recursive function CenterStaticViewPositionFactory_jm_getInstance_1(this, j_z) result(jresult)
    class(CenterStaticViewPositionFactory), target :: this
    integer(4), value :: j_z
    class(ViewPositionBase), pointer :: jresult
    class(DisplayInfoSingleton), pointer :: j_displayInfoSingleton
        j_displayInfoSingleton => DisplayInfoSingleton_jm_getInstance_0()
        jresult => StaticViewPosition_jnew_3((shifta(j_displayInfoSingleton%jm_getLastWidth_0(), iand(1, 31))), (shifta(j_displayInfoSingleton%jm_getLastHeight_0(), iand(1, 31))), j_z)
        return
  end function
end module CenterStaticViewPositionFactory_m

