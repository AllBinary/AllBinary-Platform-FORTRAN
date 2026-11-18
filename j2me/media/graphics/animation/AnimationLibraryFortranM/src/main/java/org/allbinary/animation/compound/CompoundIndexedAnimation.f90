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
module CompoundIndexedAnimation_m
  use JR_m
  use GL_m
  use Animation_m
  use AnimationBehavior_m
  use IndexedAnimation_m
  use PrimitiveIntUtil_m
  use CircularIndexUtil_m
  use CompoundAnimationInterface_m
  implicit none

  type, extends(IndexedAnimation) :: CompoundIndexedAnimation
    class(CircularIndexUtil), pointer :: f_circularIndexUtil => null()
    type(JRef), allocatable :: f_animationInterfaceArray(:)
  contains
    procedure :: jm_setFrame_1 => CompoundIndexedAnimation_jm_setFrame_1
    procedure :: jm_getFrame_0 => CompoundIndexedAnimation_jm_getFrame_0
    procedure :: jm_getSize_0 => CompoundIndexedAnimation_jm_getSize_0
    procedure :: jm_previousFrame_0 => CompoundIndexedAnimation_jm_previousFrame_0
    procedure :: jm_setSequence_1 => CompoundIndexedAnimation_jm_setSequence_1
    procedure :: jm_getSequence_0 => CompoundIndexedAnimation_jm_getSequence_0
    procedure :: jm_nextFrame_0 => CompoundIndexedAnimation_jm_nextFrame_0
    procedure :: jm_paintXY_3 => CompoundIndexedAnimation_jm_paintXY_3
    procedure :: jm_paintThreedXYZ_4 => CompoundIndexedAnimation_jm_paintThreedXYZ_4
    procedure :: jm_getCurrentAnimation_0 => CompoundIndexedAnimation_jm_getCurrentAnimation_0
    procedure :: jm_nextAnimation_0 => CompoundIndexedAnimation_jm_nextAnimation_0
    procedure :: jm_previousAnimation_0 => CompoundIndexedAnimation_jm_previousAnimation_0
    procedure :: jm_setAnimation_1 => CompoundIndexedAnimation_jm_setAnimation_1
    procedure :: jm_getAnimationInterfaceArray_0 => CompoundIndexedAnimation_jm_getAnimationInterfaceArray_0
    procedure :: jm_setAnimationInterfaceArray_1 => CompoundIndexedAnimation_jm_setAnimationInterfaceArray_1
    procedure :: jm_set_1 => CompoundIndexedAnimation_jm_set_1
  end type

  ! CompoundIndexedAnimation used as a CompoundAnimationInterface
  type, extends(CompoundAnimationInterface) :: CompoundIndexedAnimation_jas_CompoundAnimationInterface
    class(CompoundIndexedAnimation), pointer :: jtarget => null()
  contains
    procedure :: jm_getCurrentAnimation_0 => CompoundIndexedAnimation_jas_CompoundAnimationInterface_jm_getCurrentAnimation_0
    procedure :: jm_nextAnimation_0 => CompoundIndexedAnimation_jas_CompoundAnimationInterface_jm_nextAnimation_0
    procedure :: jm_previousAnimation_0 => CompoundIndexedAnimation_jas_CompoundAnimationInterface_jm_previousAnimation_0
    procedure :: jm_setAnimation_1 => CompoundIndexedAnimation_jas_CompoundAnimationInterface_jm_setAnimation_1
  end type


contains

  function CompoundIndexedAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CompoundIndexedAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CompoundIndexedAnimation)
      jresult => object
    end select
  end function

  function CompoundIndexedAnimation_jas_CompoundAnimationInterface_jnew(object) result(jresult)
    class(CompoundIndexedAnimation), target :: object
    class(CompoundIndexedAnimation_jas_CompoundAnimationInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CompoundIndexedAnimation'
    jresult%jtarget => object
  end function

  recursive function CompoundIndexedAnimation_jas_CompoundAnimationInterface_jm_getCurrentAnimation_0(this) result(jresult)
    class(CompoundIndexedAnimation_jas_CompoundAnimationInterface), target :: this
    class(IndexedAnimation), pointer :: jresult
    jresult => this%jtarget%jm_getCurrentAnimation_0()
  end function

  recursive subroutine CompoundIndexedAnimation_jas_CompoundAnimationInterface_jm_nextAnimation_0(this)
    class(CompoundIndexedAnimation_jas_CompoundAnimationInterface), target :: this
    call this%jtarget%jm_nextAnimation_0()
  end subroutine

  recursive subroutine CompoundIndexedAnimation_jas_CompoundAnimationInterface_jm_previousAnimation_0(this)
    class(CompoundIndexedAnimation_jas_CompoundAnimationInterface), target :: this
    call this%jtarget%jm_previousAnimation_0()
  end subroutine

  recursive subroutine CompoundIndexedAnimation_jas_CompoundAnimationInterface_jm_setAnimation_1(this, j_index)
    class(CompoundIndexedAnimation_jas_CompoundAnimationInterface), target :: this
    integer(4), value :: j_index
    call this%jtarget%jm_setAnimation_1(j_index)
  end subroutine

  recursive function CompoundIndexedAnimation_jnew_2(j_animationInterfaceArray, j_animationBehavior) result(this)
    type(JRef) :: j_animationInterfaceArray(:)
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(CompoundIndexedAnimation), pointer :: this
    allocate(this)
    this%jclass = 'CompoundIndexedAnimation'
    
    
        continue ! super()
        this%f_animationInterfaceArray = j_animationInterfaceArray
        this%f_circularIndexUtil => CircularIndexUtil_jm_createInstance_1(size(this%f_animationInterfaceArray, 1))
  end function

  recursive subroutine CompoundIndexedAnimation_jm_setFrame_1(this, j_index)
    class(CompoundIndexedAnimation), target :: this
    integer(4), value :: j_index
    class(IndexedAnimation), pointer :: j_indexedAnimation
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_indexedAnimation => IndexedAnimation_jcast(Animation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        call j_indexedAnimation%jm_setFrame_1(j_index)
  end subroutine

  recursive function CompoundIndexedAnimation_jm_getFrame_0(this) result(jresult)
    class(CompoundIndexedAnimation), target :: this
    integer(4) :: jresult
    class(IndexedAnimation), pointer :: j_indexedAnimation
        j_indexedAnimation => IndexedAnimation_jcast(Animation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        jresult = j_indexedAnimation%jm_getFrame_0()
        return
  end function

  recursive function CompoundIndexedAnimation_jm_getSize_0(this) result(jresult)
    class(CompoundIndexedAnimation), target :: this
    integer(4) :: jresult
    class(IndexedAnimation), pointer :: j_indexedAnimation
        j_indexedAnimation => IndexedAnimation_jcast(Animation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        jresult = j_indexedAnimation%jm_getSize_0()
        return
  end function

  recursive subroutine CompoundIndexedAnimation_jm_previousFrame_0(this)
    class(CompoundIndexedAnimation), target :: this
    class(IndexedAnimation), pointer :: j_indexedAnimation
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_indexedAnimation => IndexedAnimation_jcast(Animation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        call j_indexedAnimation%jm_previousFrame_0()
  end subroutine

  recursive subroutine CompoundIndexedAnimation_jm_setSequence_1(this, j_sequence)
    class(CompoundIndexedAnimation), target :: this
    integer(4) :: j_sequence(:)
    continue
  end subroutine

  recursive function CompoundIndexedAnimation_jm_getSequence_0(this) result(jresult)
    class(CompoundIndexedAnimation), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = PrimitiveIntUtil_jm_getArrayInstance_0()
        return
  end function

  recursive subroutine CompoundIndexedAnimation_jm_nextFrame_0(this)
    class(CompoundIndexedAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref1 => Animation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        call jstaticref1%jm_nextFrame_0()
        end associate
  end subroutine

  recursive subroutine CompoundIndexedAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(CompoundIndexedAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref2 => Animation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        call jstaticref2%jm_paintXY_3(j_graphics, j_x, j_y)
        end associate
  end subroutine

  recursive subroutine CompoundIndexedAnimation_jm_paintThreedXYZ_4(this, j_graphics, j_x, j_y, j_z)
    class(CompoundIndexedAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref3 => Animation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        call jstaticref3%jm_paintThreedXYZ_4(j_graphics, j_x, j_y, j_z)
        end associate
  end subroutine

  recursive function CompoundIndexedAnimation_jm_getCurrentAnimation_0(this) result(jresult)
    class(CompoundIndexedAnimation), target :: this
    class(IndexedAnimation), pointer :: jresult
        jresult => IndexedAnimation_jcast(Animation_jcast(this%f_animationInterfaceArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v))
        return
  end function

  recursive subroutine CompoundIndexedAnimation_jm_nextAnimation_0(this)
    class(CompoundIndexedAnimation), target :: this
    integer(4) :: j_frame
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_frame = this%jm_getFrame_0()
        jdiscardInt = this%f_circularIndexUtil%jm_next_0()
        call this%jm_setFrame_1(j_frame)
  end subroutine

  recursive subroutine CompoundIndexedAnimation_jm_previousAnimation_0(this)
    class(CompoundIndexedAnimation), target :: this
    integer(4) :: j_frame
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_frame = this%jm_getFrame_0()
        jdiscardInt = this%f_circularIndexUtil%jm_previous_0()
        call this%jm_setFrame_1(j_frame)
  end subroutine

  recursive subroutine CompoundIndexedAnimation_jm_setAnimation_1(this, j_index)
    class(CompoundIndexedAnimation), target :: this
    integer(4), value :: j_index
    integer(4) :: j_frame
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_frame = this%jm_getFrame_0()
        call this%f_circularIndexUtil%jm_setIndex_1(j_index)
        call this%jm_setFrame_1(j_frame)
  end subroutine

  recursive function CompoundIndexedAnimation_jm_getAnimationInterfaceArray_0(this) result(jresult)
    class(CompoundIndexedAnimation), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_animationInterfaceArray
        return
  end function

  recursive subroutine CompoundIndexedAnimation_jm_setAnimationInterfaceArray_1(this, j_animationInterfaceArray)
    class(CompoundIndexedAnimation), target :: this
    type(JRef) :: j_animationInterfaceArray(:)
        this%f_animationInterfaceArray = j_animationInterfaceArray
  end subroutine

  recursive subroutine CompoundIndexedAnimation_jm_set_1(this, j_gl)
    class(CompoundIndexedAnimation), target :: this
    class(GL), target, optional :: j_gl
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
            associate (jstaticref4 => Animation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref4%jm_set_1(j_gl)
            end associate
        end do
  end subroutine
end module CompoundIndexedAnimation_m

