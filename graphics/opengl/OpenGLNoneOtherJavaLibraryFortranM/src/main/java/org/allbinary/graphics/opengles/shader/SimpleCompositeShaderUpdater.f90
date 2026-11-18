! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
! package org.allbinary.graphics.opengles.shader
module SimpleCompositeShaderUpdater_m
  use JR_m
  use CompositeShaderUpdater_m
  implicit none

  type, extends(CompositeShaderUpdater) :: SimpleCompositeShaderUpdater
  end type


contains

  function SimpleCompositeShaderUpdater_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SimpleCompositeShaderUpdater), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SimpleCompositeShaderUpdater)
      jresult => object
    end select
  end function

  recursive function SimpleCompositeShaderUpdater_jnew_4(j_uniformBlockArray, j_uniformArray, j_attributeArray, j_attributeHandleArray) result(this)
    type(JString) :: j_uniformBlockArray(:)
    type(JString) :: j_uniformArray(:)
    type(JString) :: j_attributeArray(:)
    integer(4) :: j_attributeHandleArray(:)
    class(SimpleCompositeShaderUpdater), pointer :: this
    allocate(this)
    this%jclass = 'SimpleCompositeShaderUpdater'
        continue ! super()
  end function
end module SimpleCompositeShaderUpdater_m

