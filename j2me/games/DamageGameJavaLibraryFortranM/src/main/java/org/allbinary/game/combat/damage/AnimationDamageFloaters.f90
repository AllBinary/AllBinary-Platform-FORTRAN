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
! package org.allbinary.game.combat.damage
module AnimationDamageFloaters_m
  use JR_m
  use IndexedAnimation_m
  use CanvasStrings_m
  use AllBinaryLayer_m
  use LogUtil_m
  use CommonStrings_m
  use CircularIndexUtil_m
  use ViewPositionBase_m
  use DamageFloaters_m
  implicit none

  type, extends(DamageFloaters) :: AnimationDamageFloaters
    class(LogUtil), pointer :: f_logUtil => null()
    class(AllBinaryLayer), pointer :: f_layerInterface => null()
    type(JRef), allocatable :: f_animationInterfaceArray(:)
    class(CircularIndexUtil), pointer :: f_circularIndexUtil => null()
    integer(4) :: f_dx = 0
    integer(4) :: f_dy = 0
  contains
    procedure :: jm_add_1 => AnimationDamageFloaters_jm_add_1
    procedure :: jm_paint_1 => AnimationDamageFloaters_jm_paint_1
  end type


contains

  function AnimationDamageFloaters_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnimationDamageFloaters), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnimationDamageFloaters)
      jresult => object
    end select
  end function

  recursive function AnimationDamageFloaters_jnew_4(j_layerInterface, j_animationInterfaceArray, j_dx, j_dy) result(this)
    class(AllBinaryLayer), target, optional :: j_layerInterface
    type(JRef) :: j_animationInterfaceArray(:)
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationDamageFloaters), pointer :: this
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'AnimationDamageFloaters'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
    
    
    
    
        this%f_animationInterfaceArray = j_animationInterfaceArray
        j_index = (size(this%f_animationInterfaceArray, 1) - 1)
        do while ((j_index >= 0))
            associate (jstaticref1 => IndexedAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref1%jm_setFrame_1((jstaticref1%jm_getSize_0() - 1))
            end associate
            j_index = j_index - 1
        end do
        this%f_layerInterface => j_layerInterface
        this%f_circularIndexUtil => CircularIndexUtil_jm_createInstance_1(size(this%f_animationInterfaceArray, 1))
        this%f_dx = j_dx
        this%f_dy = j_dy
  end function

  recursive subroutine AnimationDamageFloaters_jm_add_1(this, j_damage)
    class(AnimationDamageFloaters), target :: this
    integer(4), value :: j_damage
    integer(4) :: j_i
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_i = this%f_circularIndexUtil%jm_getIndex_0()
        associate (jstaticref2 => IndexedAnimation_jcast(this%f_animationInterfaceArray((j_i) + 1)%v))
        call jstaticref2%jm_setFrame_1(0)
        end associate
        jdiscardInt = this%f_circularIndexUtil%jm_next_0()
  end subroutine

  recursive subroutine AnimationDamageFloaters_jm_paint_1(this, j_graphics)
    class(AnimationDamageFloaters), target :: this
    class(Graphics), target, optional :: j_graphics
    class(ViewPositionBase), pointer :: j_viewPosition
    integer(4) :: j_x
    integer(4) :: j_y
    class(IndexedAnimation), pointer :: j_animationInterface
    integer(4) :: j_delta
    integer(4) :: j_index
    class(CommonStrings), pointer :: j_commonStrings
    class(CanvasStrings), pointer :: j_canvasStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_viewPosition => this%f_layerInterface%jm_getViewPosition_0()
            j_x = j_viewPosition%jm_getX_0()
            j_y = j_viewPosition%jm_getY_0()
            j_index = 0
            do while ((j_index < size(this%f_animationInterfaceArray, 1)))
                j_animationInterface => IndexedAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v)
                if ((j_animationInterface%jm_getFrame_0() < (j_animationInterface%jm_getAnimationSize_0() - 1))) then
                    j_delta = (j_animationInterface%jm_getFrame_0() * 20)
                    call j_animationInterface%jm_paintXY_3(j_graphics, (j_x + this%f_dx), ((j_y - j_delta) + this%f_dy))
                    call j_animationInterface%jm_nextFrame_0()
                end if
                j_index = j_index + 1
            end do
  end subroutine
end module AnimationDamageFloaters_m

