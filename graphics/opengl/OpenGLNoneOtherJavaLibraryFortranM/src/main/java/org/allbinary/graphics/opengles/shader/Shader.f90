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
module Shader_m
  use JR_m
  use StringUtil_m
  use BasicArrayList_m
  use BasicArrayListUtil_m
  implicit none

  type, extends(JObject) :: Shader
    character(len=:), allocatable :: f_shaderName
    class(BasicArrayList), pointer :: f_shaderStringList => null()
    character(len=:), allocatable :: f_shaderAsString
    integer(4) :: f_shaderHandle = 0
  end type


contains

  function Shader_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Shader), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Shader)
      jresult => object
    end select
  end function

  function Shader_jnew_0() result(this)
    class(Shader), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(BasicArrayListUtil), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
    allocate(this)
    this%jclass = 'Shader'
    this%f_shaderName = ''
    this%f_shaderAsString = ''
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_shaderName = jtemp1%f_EMPTY_STRING
    jtemp2 => BasicArrayListUtil_jm_getInstance_0()
    this%f_shaderStringList => jtemp2%jm_getImmutableInstance_0()
    jtemp3 => StringUtil_jm_getInstance_0()
    this%f_shaderAsString = jtemp3%f_EMPTY_STRING
    
  end function
end module Shader_m

