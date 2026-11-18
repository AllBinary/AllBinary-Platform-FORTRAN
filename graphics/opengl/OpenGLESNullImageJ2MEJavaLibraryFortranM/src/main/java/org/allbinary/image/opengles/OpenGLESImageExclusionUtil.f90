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
! package org.allbinary.image.opengles
module OpenGLESImageExclusionUtil_m
  use JR_m
  use BasicArrayList_m
  use BasicArrayListD_m
  implicit none

  type, extends(JObject) :: OpenGLESImageExclusionUtil
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_isCustomScaling_1 => OpenGLESImageExclusionUtil_jm_isCustomScaling_1
  end type

  class(OpenGLESImageExclusionUtil), pointer, save :: OpenGLESImageExclusionUtil_jcell_instance => null()
  logical, save :: OpenGLESImageExclusionUtil_jset_instance = .false.

contains

  function OpenGLESImageExclusionUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLESImageExclusionUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLESImageExclusionUtil)
      jresult => object
    end select
  end function

  function OpenGLESImageExclusionUtil_jstatic_instance() result(jresult)
    class(OpenGLESImageExclusionUtil), pointer :: jresult
    if (.not. OpenGLESImageExclusionUtil_jset_instance) then
      OpenGLESImageExclusionUtil_jset_instance = .true.
      OpenGLESImageExclusionUtil_jcell_instance => OpenGLESImageExclusionUtil_jnew_0()
    end if
    jresult => OpenGLESImageExclusionUtil_jcell_instance
  end function

  subroutine OpenGLESImageExclusionUtil_jsetstatic_instance(jvalue)
    class(OpenGLESImageExclusionUtil), target, optional :: jvalue
    OpenGLESImageExclusionUtil_jset_instance = .true.
    if (present(jvalue)) then
      OpenGLESImageExclusionUtil_jcell_instance => jvalue
    else
      OpenGLESImageExclusionUtil_jcell_instance => null()
    end if
  end subroutine

  function OpenGLESImageExclusionUtil_jnew_0() result(this)
    class(OpenGLESImageExclusionUtil), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLESImageExclusionUtil'
    this%f_list => BasicArrayListD_jnew_0()
  end function

  recursive function OpenGLESImageExclusionUtil_jm_getInstance_0() result(jresult)
    class(OpenGLESImageExclusionUtil), pointer :: jresult
        jresult => OpenGLESImageExclusionUtil_jstatic_instance()
        return
  end function

  recursive function OpenGLESImageExclusionUtil_jm_isCustomScaling_1(this, j_image) result(jresult)
    class(OpenGLESImageExclusionUtil), target :: this
    class(Image), target, optional :: j_image
    logical :: jresult
        jresult = .false.
        return
  end function
end module OpenGLESImageExclusionUtil_m

