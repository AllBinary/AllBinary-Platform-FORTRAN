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
! package org.allbinary.graphics.opengles
module OpenGLFeatureUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: OpenGLFeatureUtil
  contains
    procedure :: jm_isAnyThreed_0 => OpenGLFeatureUtil_jm_isAnyThreed_0
  end type

  class(OpenGLFeatureUtil), pointer, save :: OpenGLFeatureUtil_jcell_instance => null()
  logical, save :: OpenGLFeatureUtil_jset_instance = .false.

contains

  function OpenGLFeatureUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLFeatureUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLFeatureUtil)
      jresult => object
    end select
  end function

  function OpenGLFeatureUtil_jstatic_instance() result(jresult)
    class(OpenGLFeatureUtil), pointer :: jresult
    if (.not. OpenGLFeatureUtil_jset_instance) then
      OpenGLFeatureUtil_jset_instance = .true.
      OpenGLFeatureUtil_jcell_instance => OpenGLFeatureUtil_jnew_0()
    end if
    jresult => OpenGLFeatureUtil_jcell_instance
  end function

  subroutine OpenGLFeatureUtil_jsetstatic_instance(jvalue)
    class(OpenGLFeatureUtil), target, optional :: jvalue
    OpenGLFeatureUtil_jset_instance = .true.
    if (present(jvalue)) then
      OpenGLFeatureUtil_jcell_instance => jvalue
    else
      OpenGLFeatureUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function OpenGLFeatureUtil_jnew_0() result(this)
    class(OpenGLFeatureUtil), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLFeatureUtil'
        continue
  end function

  recursive function OpenGLFeatureUtil_jm_getInstance_0() result(jresult)
    class(OpenGLFeatureUtil), pointer :: jresult
        jresult => OpenGLFeatureUtil_jstatic_instance()
        return
  end function

  recursive function OpenGLFeatureUtil_jm_isAnyThreed_0(this) result(jresult)
    class(OpenGLFeatureUtil), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function
end module OpenGLFeatureUtil_m

