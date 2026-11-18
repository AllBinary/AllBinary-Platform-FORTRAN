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
! package org.allbinary.image.opengles
module OpenGLImageSpecificFactory_m
  use JR_m
  use PreLogUtil_m
  use StringMaker_m
  use StringUtil_m
  use OpenGLImageFactory_m
  implicit none

  type, extends(JObject) :: OpenGLImageSpecificFactory
    class(OpenGLImageFactory), pointer :: f_imageFactory => null()
    logical :: f_updating = .false.
  contains
    procedure :: jm_setImageFactory_1 => OpenGLImageSpecificFactory_jm_setImageFactory_1
    procedure :: jm_getImageFactory_0 => OpenGLImageSpecificFactory_jm_getImageFactory_0
  end type

  class(OpenGLImageSpecificFactory), pointer, save :: OpenGLImageSpecificFactory_jcell_instance => null()
  logical, save :: OpenGLImageSpecificFactory_jset_instance = .false.

contains

  function OpenGLImageSpecificFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLImageSpecificFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLImageSpecificFactory)
      jresult => object
    end select
  end function

  function OpenGLImageSpecificFactory_jstatic_instance() result(jresult)
    class(OpenGLImageSpecificFactory), pointer :: jresult
    if (.not. OpenGLImageSpecificFactory_jset_instance) then
      OpenGLImageSpecificFactory_jset_instance = .true.
      OpenGLImageSpecificFactory_jcell_instance => OpenGLImageSpecificFactory_jnew_0()
    end if
    jresult => OpenGLImageSpecificFactory_jcell_instance
  end function

  subroutine OpenGLImageSpecificFactory_jsetstatic_instance(jvalue)
    class(OpenGLImageSpecificFactory), target, optional :: jvalue
    OpenGLImageSpecificFactory_jset_instance = .true.
    if (present(jvalue)) then
      OpenGLImageSpecificFactory_jcell_instance => jvalue
    else
      OpenGLImageSpecificFactory_jcell_instance => null()
    end if
  end subroutine

  function OpenGLImageSpecificFactory_jnew_0() result(this)
    class(OpenGLImageSpecificFactory), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLImageSpecificFactory'
    this%f_imageFactory => OpenGLImageFactory_jstatic_NULL_OPENGL_IMAGE_FACTORY()
    this%f_updating = .false.
  end function

  recursive function OpenGLImageSpecificFactory_jm_getInstance_0() result(jresult)
    class(OpenGLImageSpecificFactory), pointer :: jresult
        jresult => OpenGLImageSpecificFactory_jstatic_instance()
        return
  end function

  recursive subroutine OpenGLImageSpecificFactory_jm_setImageFactory_1(this, j_imageFactory)
    class(OpenGLImageSpecificFactory), target :: this
    class(OpenGLImageFactory), target, optional :: j_imageFactory
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringUtil), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_imageFactory => j_imageFactory
        jtemp4 => StringUtil_jm_getInstance_0()
        jtemp3 => StringMaker_jnew_0()
        jtemp2 => jtemp3%jm_append_1('Selected Image Factory: ')
        jtemp1 => jtemp2%jm_append_1(jtemp4%jm_toString_1(this%f_imageFactory))
        call PreLogUtil_jm_put_3(jtemp1%jm_toString_0(), this, 'setImageFactory')
  end subroutine

  recursive function OpenGLImageSpecificFactory_jm_getImageFactory_0(this) result(jresult)
    class(OpenGLImageSpecificFactory), target :: this
    class(OpenGLImageFactory), pointer :: jresult
        jresult => this%f_imageFactory
        return
  end function
end module OpenGLImageSpecificFactory_m

