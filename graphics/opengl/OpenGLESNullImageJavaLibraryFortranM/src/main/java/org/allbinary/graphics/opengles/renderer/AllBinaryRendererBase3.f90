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
! package org.allbinary.graphics.opengles.renderer
module AllBinaryRendererBase3_m
  use JR_m
  use GL10_m
  use OpenGLESImage_m
  use BasicArrayList_m
  use BasicArrayListD_m
  implicit none

  type, extends(JObject) :: AllBinaryRendererBase3
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_update_1 => AllBinaryRendererBase3_jm_update_1
    procedure :: jm_add_1 => AllBinaryRendererBase3_jm_add_1
  end type


contains

  function AllBinaryRendererBase3_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryRendererBase3), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryRendererBase3)
      jresult => object
    end select
  end function

  function AllBinaryRendererBase3_jnew_0() result(this)
    class(AllBinaryRendererBase3), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryRendererBase3'
    this%f_list => BasicArrayListD_jnew_0()
  end function

  recursive subroutine AllBinaryRendererBase3_jm_update_1(this, j_gl)
    class(AllBinaryRendererBase3), target :: this
    class(GL10), target, optional :: j_gl
    class(OpenGLESImage), pointer :: j_openGLESImage
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        do while ((this%f_list%jm_size_0() > 0))
            j_openGLESImage => OpenGLESImage_jcast(this%f_list%jm_removeAt_1(0))
            if (associated(j_openGLESImage)) then
                call j_openGLESImage%jm_set_1(j_gl)
            end if
        end do
  end subroutine

  recursive subroutine AllBinaryRendererBase3_jm_add_1(this, j_image)
    class(AllBinaryRendererBase3), target :: this
    class(Image), target, optional :: j_image
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_list%jm_add_1(j_image)
  end subroutine
end module AllBinaryRendererBase3_m

