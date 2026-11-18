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
module SimultaneousCompoundIndexedAnimation_m
  use JR_m
  use Animation_m
  use AnimationBehavior_m
  use IndexedAnimation_m
  use PrimitiveIntUtil_m
  implicit none

  type, extends(IndexedAnimation) :: SimultaneousCompoundIndexedAnimation
    type(JRef), allocatable :: f_animationInterfaceArray(:)
  contains
    procedure :: jm_setFrame_1 => SimultaneousCompoundIndexedAnimation_jm_setFrame_1
    procedure :: jm_getFrame_0 => SimultaneousCompoundIndexedAnimation_jm_getFrame_0
    procedure :: jm_getSize_0 => SimultaneousCompoundIndexedAnimation_jm_getSize_0
    procedure :: jm_previousFrame_0 => SimultaneousCompoundIndexedAnimation_jm_previousFrame_0
    procedure :: jm_setSequence_1 => SimultaneousCompoundIndexedAnimation_jm_setSequence_1
    procedure :: jm_getSequence_0 => SimultaneousCompoundIndexedAnimation_jm_getSequence_0
    procedure :: jm_nextFrame_0 => SimultaneousCompoundIndexedAnimation_jm_nextFrame_0
    procedure :: jm_paintXY_3 => SimultaneousCompoundIndexedAnimation_jm_paintXY_3
    procedure :: jm_paintThreedXYZ_4 => SimultaneousCompoundIndexedAnimation_jm_paintThreedXYZ_4
    procedure :: jm_getAnimationInterfaceArray_0 => SimultaneousCompoundIndexedAnimation_jm_getAnimationInterfaceArray_0
    procedure :: jm_setAnimationInterfaceArray_1 => SimultaneousCompoundIndexedAnimation_jm_setAnimationInterfaceArray_1
  end type


contains

  function SimultaneousCompoundIndexedAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SimultaneousCompoundIndexedAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SimultaneousCompoundIndexedAnimation)
      jresult => object
    end select
  end function

  recursive function SimultaneousCompoundIndexedAnimation_jnew_2(j_animationInterfaceArray, j_animationBehavior) result(this)
    type(JRef) :: j_animationInterfaceArray(:)
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(SimultaneousCompoundIndexedAnimation), pointer :: this
    allocate(this)
    this%jclass = 'SimultaneousCompoundIndexedAnimation'
    
        continue ! super()
        this%f_animationInterfaceArray = j_animationInterfaceArray
  end function

  recursive subroutine SimultaneousCompoundIndexedAnimation_jm_setFrame_1(this, j_index)
    class(SimultaneousCompoundIndexedAnimation), target :: this
    integer(4), value :: j_index
    class(IndexedAnimation), pointer :: j_indexedAnimation
    integer(4) :: j_index
    integer(4) :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue
        j_index = j_index - 1
        jtemp1 = j_index
        j_index = size(this%f_animationInterfaceArray, 1)
        do while ((jtemp1 >= 0))
            j_indexedAnimation => IndexedAnimation_jcast(Animation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call j_indexedAnimation%jm_setFrame_1(j_index)
        end do
  end subroutine

  recursive function SimultaneousCompoundIndexedAnimation_jm_getFrame_0(this) result(jresult)
    class(SimultaneousCompoundIndexedAnimation), target :: this
    integer(4) :: jresult
    class(IndexedAnimation), pointer :: j_indexedAnimation
        j_indexedAnimation => IndexedAnimation_jcast(Animation_jcast(this%f_animationInterfaceArray((0) + 1)%v))
        jresult = j_indexedAnimation%jm_getFrame_0()
        return
  end function

  recursive function SimultaneousCompoundIndexedAnimation_jm_getSize_0(this) result(jresult)
    class(SimultaneousCompoundIndexedAnimation), target :: this
    integer(4) :: jresult
    class(IndexedAnimation), pointer :: j_indexedAnimation
        j_indexedAnimation => IndexedAnimation_jcast(Animation_jcast(this%f_animationInterfaceArray((0) + 1)%v))
        jresult = j_indexedAnimation%jm_getSize_0()
        return
  end function

  recursive subroutine SimultaneousCompoundIndexedAnimation_jm_previousFrame_0(this)
    class(SimultaneousCompoundIndexedAnimation), target :: this
    class(IndexedAnimation), pointer :: j_indexedAnimation
    integer(4) :: j_index
    integer(4) :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue
        j_index = j_index - 1
        jtemp2 = j_index
        j_index = size(this%f_animationInterfaceArray, 1)
        do while ((jtemp2 >= 0))
            j_indexedAnimation => IndexedAnimation_jcast(Animation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call j_indexedAnimation%jm_previousFrame_0()
        end do
  end subroutine

  recursive subroutine SimultaneousCompoundIndexedAnimation_jm_setSequence_1(this, j_sequence)
    class(SimultaneousCompoundIndexedAnimation), target :: this
    integer(4) :: j_sequence(:)
    continue
  end subroutine

  recursive function SimultaneousCompoundIndexedAnimation_jm_getSequence_0(this) result(jresult)
    class(SimultaneousCompoundIndexedAnimation), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = PrimitiveIntUtil_jm_getArrayInstance_0()
        return
  end function

  recursive subroutine SimultaneousCompoundIndexedAnimation_jm_nextFrame_0(this)
    class(SimultaneousCompoundIndexedAnimation), target :: this
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
            associate (jstaticref1 => Animation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref1%jm_nextFrame_0()
            end associate
        end do
  end subroutine

  recursive subroutine SimultaneousCompoundIndexedAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(SimultaneousCompoundIndexedAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_size = size(this%f_animationInterfaceArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            associate (jstaticref2 => Animation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref2%jm_paintXY_3(j_graphics, j_x, j_y)
            end associate
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine SimultaneousCompoundIndexedAnimation_jm_paintThreedXYZ_4(this, j_graphics, j_x, j_y, j_z)
    class(SimultaneousCompoundIndexedAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_size = size(this%f_animationInterfaceArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            associate (jstaticref3 => Animation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref3%jm_paintThreedXYZ_4(j_graphics, j_x, j_y, j_z)
            end associate
            j_index = j_index + 1
        end do
  end subroutine

  recursive function SimultaneousCompoundIndexedAnimation_jm_getAnimationInterfaceArray_0(this) result(jresult)
    class(SimultaneousCompoundIndexedAnimation), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_animationInterfaceArray
        return
  end function

  recursive subroutine SimultaneousCompoundIndexedAnimation_jm_setAnimationInterfaceArray_1(this, j_animationInterfaceArray)
    class(SimultaneousCompoundIndexedAnimation), target :: this
    type(JRef) :: j_animationInterfaceArray(:)
        this%f_animationInterfaceArray = j_animationInterfaceArray
  end subroutine
end module SimultaneousCompoundIndexedAnimation_m

