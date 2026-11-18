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
! package org.allbinary.input.motion.button
module TouchButtonsPaintableCompositeFactory_m
  use JR_m
  use InputMappingInterface_m
  use BasicColor_m
  use ProcessPaintable_m
  use TouchButtonsPaintableComposite_m
  implicit none

  type, extends(JObject) :: TouchButtonsPaintableCompositeFactory
  end type


contains

  function TouchButtonsPaintableCompositeFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonsPaintableCompositeFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonsPaintableCompositeFactory)
      jresult => object
    end select
  end function

  function TouchButtonsPaintableCompositeFactory_jnew_0() result(this)
    class(TouchButtonsPaintableCompositeFactory), pointer :: this
    allocate(this)
    this%jclass = 'TouchButtonsPaintableCompositeFactory'
  end function

  recursive function TouchButtonsPaintableCompositeFactory_jm_getInstance_2(j_inputMappingInterface, j_basicColor) result(jresult)
    class(InputMappingInterface), target, optional :: j_inputMappingInterface
    class(BasicColor), target, optional :: j_basicColor
    class(ProcessPaintable), pointer :: jresult
        jresult => TouchButtonsPaintableComposite_jnew_2(j_inputMappingInterface, j_basicColor)
        return
  end function
end module TouchButtonsPaintableCompositeFactory_m

