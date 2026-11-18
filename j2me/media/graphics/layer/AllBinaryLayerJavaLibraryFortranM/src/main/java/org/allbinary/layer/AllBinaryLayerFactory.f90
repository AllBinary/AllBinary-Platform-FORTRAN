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
! package org.allbinary.layer
module AllBinaryLayerFactory_m
  use JR_m
  use Rectangle_m
  use StringUtil_m
  use ViewPosition_m
  use AllBinaryLayerFactoryInterface_m
  use AllBinaryLayer_m
  implicit none

  type, extends(AllBinaryLayerFactoryInterface) :: AllBinaryLayerFactory
    class(Rectangle), pointer :: f_rectangle => null()
  contains
    procedure :: jm_getInstance_0 => AllBinaryLayerFactory_jm_getInstance_0
  end type


contains

  function AllBinaryLayerFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryLayerFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryLayerFactory)
      jresult => object
    end select
  end function

  recursive function AllBinaryLayerFactory_jnew_1(j_rectangle) result(this)
    class(Rectangle), target, optional :: j_rectangle
    class(AllBinaryLayerFactory), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryLayerFactory'
    
        this%f_rectangle => j_rectangle
  end function

  recursive function AllBinaryLayerFactory_jm_getInstance_0(this) result(jresult)
    class(AllBinaryLayerFactory), target :: this
    class(AllBinaryLayer), pointer :: jresult
    class(StringUtil), pointer :: jtemp1
        jtemp1 => StringUtil_jm_getInstance_0()
        jresult => AllBinaryLayer_jnew_3(jtemp1%f_EMPTY_STRING, this%f_rectangle, ViewPosition_jm_getInstanceD_0())
        return
  end function
end module AllBinaryLayerFactory_m

