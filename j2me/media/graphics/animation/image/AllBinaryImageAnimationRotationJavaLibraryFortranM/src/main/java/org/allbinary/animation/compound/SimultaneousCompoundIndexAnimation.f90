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
! package org.allbinary.animation.compound
module SimultaneousCompoundIndexAnimation_m
  use JR_m
  use GL_m
  use AnimationBehavior_m
  use IndexedAnimation_m
  use PrimitiveIntUtil_m
  implicit none

  type, extends(IndexedAnimation) :: SimultaneousCompoundIndexAnimation
    type(JRef), allocatable :: f_animationInterfaceArray(:)
  contains
    procedure :: jm_setFrame_1 => SimultaneousCompoundIndexAnimation_jm_setFrame_1
    procedure :: jm_getFrame_0 => SimultaneousCompoundIndexAnimation_jm_getFrame_0
    procedure :: jm_getAnimationSize_0 => SimultaneousCompoundIndexAnimation_jm_getAnimationSize_0
    procedure :: jm_getSize_0 => SimultaneousCompoundIndexAnimation_jm_getSize_0
    procedure :: jm_previousFrame_0 => SimultaneousCompoundIndexAnimation_jm_previousFrame_0
    procedure :: jm_nextFrame_0 => SimultaneousCompoundIndexAnimation_jm_nextFrame_0
    procedure :: jm_setSequence_1 => SimultaneousCompoundIndexAnimation_jm_setSequence_1
    procedure :: jm_getSequence_0 => SimultaneousCompoundIndexAnimation_jm_getSequence_0
    procedure :: jm_paintXY_3 => SimultaneousCompoundIndexAnimation_jm_paintXY_3
    procedure :: jm_paintThreedXYZ_4 => SimultaneousCompoundIndexAnimation_jm_paintThreedXYZ_4
    procedure :: jm_set_1 => SimultaneousCompoundIndexAnimation_jm_set_1
    procedure :: jm_getAnimationInterfaceArray_0 => SimultaneousCompoundIndexAnimation_jm_getAnimationInterfaceArray_0
    procedure :: jm_setAnimationInterfaceArray_1 => SimultaneousCompoundIndexAnimation_jm_setAnimationInterfaceArray_1
  end type


contains

  function SimultaneousCompoundIndexAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SimultaneousCompoundIndexAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SimultaneousCompoundIndexAnimation)
      jresult => object
    end select
  end function

  recursive function SimultaneousCompoundIndexAnimation_jnew_2(j_animationInterfaceArray, j_animationBehavior) result(this)
    type(JRef) :: j_animationInterfaceArray(:)
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(SimultaneousCompoundIndexAnimation), pointer :: this
    allocate(this)
    this%jclass = 'SimultaneousCompoundIndexAnimation'
    
        continue ! super()
        this%f_animationInterfaceArray = j_animationInterfaceArray
  end function

  recursive subroutine SimultaneousCompoundIndexAnimation_jm_setFrame_1(this, j_index)
    class(SimultaneousCompoundIndexAnimation), target :: this
    integer(4), value :: j_index
    integer(4) :: j_index
    integer(4) :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp1 = j_index
        j_index = size(this%f_animationInterfaceArray, 1)
        do while ((jtemp1 >= 0))
            associate (jstaticref1 => IndexedAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref1%jm_setFrame_1(j_index)
            end associate
        end do
  end subroutine

  recursive function SimultaneousCompoundIndexAnimation_jm_getFrame_0(this) result(jresult)
    class(SimultaneousCompoundIndexAnimation), target :: this
    integer(4) :: jresult
        associate (jstaticref2 => IndexedAnimation_jcast(this%f_animationInterfaceArray((0) + 1)%v))
        jresult = jstaticref2%jm_getFrame_0()
        end associate
        return
  end function

  recursive function SimultaneousCompoundIndexAnimation_jm_getAnimationSize_0(this) result(jresult)
    class(SimultaneousCompoundIndexAnimation), target :: this
    integer(4) :: jresult
        associate (jstaticref3 => IndexedAnimation_jcast(this%f_animationInterfaceArray((0) + 1)%v))
        jresult = jstaticref3%jm_getAnimationSize_0()
        end associate
        return
  end function

  recursive function SimultaneousCompoundIndexAnimation_jm_getSize_0(this) result(jresult)
    class(SimultaneousCompoundIndexAnimation), target :: this
    integer(4) :: jresult
        associate (jstaticref4 => IndexedAnimation_jcast(this%f_animationInterfaceArray((0) + 1)%v))
        jresult = jstaticref4%jm_getSize_0()
        end associate
        return
  end function

  recursive subroutine SimultaneousCompoundIndexAnimation_jm_previousFrame_0(this)
    class(SimultaneousCompoundIndexAnimation), target :: this
    integer(4) :: j_index
    integer(4) :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp2 = j_index
        j_index = size(this%f_animationInterfaceArray, 1)
        do while ((jtemp2 >= 0))
            associate (jstaticref5 => IndexedAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref5%jm_previousFrame_0()
            end associate
        end do
  end subroutine

  recursive subroutine SimultaneousCompoundIndexAnimation_jm_nextFrame_0(this)
    class(SimultaneousCompoundIndexAnimation), target :: this
    integer(4) :: j_index
    integer(4) :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp3 = j_index
        j_index = size(this%f_animationInterfaceArray, 1)
        do while ((jtemp3 >= 0))
            associate (jstaticref6 => IndexedAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref6%jm_nextFrame_0()
            end associate
        end do
  end subroutine

  recursive subroutine SimultaneousCompoundIndexAnimation_jm_setSequence_1(this, j_sequence)
    class(SimultaneousCompoundIndexAnimation), target :: this
    integer(4) :: j_sequence(:)
    continue
  end subroutine

  recursive function SimultaneousCompoundIndexAnimation_jm_getSequence_0(this) result(jresult)
    class(SimultaneousCompoundIndexAnimation), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = PrimitiveIntUtil_jm_getArrayInstance_0()
        return
  end function

  recursive subroutine SimultaneousCompoundIndexAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(SimultaneousCompoundIndexAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4) :: j_index
    integer(4) :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp4 = j_index
        j_index = size(this%f_animationInterfaceArray, 1)
        do while ((jtemp4 >= 0))
            associate (jstaticref7 => IndexedAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref7%jm_paintXY_3(j_graphics, j_x, j_y)
            end associate
        end do
  end subroutine

  recursive subroutine SimultaneousCompoundIndexAnimation_jm_paintThreedXYZ_4(this, j_graphics, j_x, j_y, j_z)
    class(SimultaneousCompoundIndexAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    integer(4) :: j_index
    integer(4) :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp5 = j_index
        j_index = size(this%f_animationInterfaceArray, 1)
        do while ((jtemp5 >= 0))
            associate (jstaticref8 => IndexedAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref8%jm_paintThreedXYZ_4(j_graphics, j_x, j_y, j_z)
            end associate
        end do
  end subroutine

  recursive subroutine SimultaneousCompoundIndexAnimation_jm_set_1(this, j_gl)
    class(SimultaneousCompoundIndexAnimation), target :: this
    class(GL), target, optional :: j_gl
    integer(4) :: j_index
    integer(4) :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp6 = j_index
        j_index = size(this%f_animationInterfaceArray, 1)
        do while ((jtemp6 >= 0))
            associate (jstaticref9 => IndexedAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref9%jm_set_1(j_gl)
            end associate
        end do
  end subroutine

  recursive function SimultaneousCompoundIndexAnimation_jm_getAnimationInterfaceArray_0(this) result(jresult)
    class(SimultaneousCompoundIndexAnimation), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_animationInterfaceArray
        return
  end function

  recursive subroutine SimultaneousCompoundIndexAnimation_jm_setAnimationInterfaceArray_1(this, j_animationInterfaceArray)
    class(SimultaneousCompoundIndexAnimation), target :: this
    type(JRef) :: j_animationInterfaceArray(:)
        this%f_animationInterfaceArray = j_animationInterfaceArray
  end subroutine
end module SimultaneousCompoundIndexAnimation_m

