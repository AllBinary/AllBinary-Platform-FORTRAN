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
! package org.allbinary.game.part
module CountedLayerInterfaceFactoryPart_m
  use JR_m
  use Animation_m
  use NullAnimationFactory_m
  use CountedPickedUpLayerInterfaceFactory_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use AllBinaryLayer_m
  use NullUtil_m
  use PrimitiveLongUtil_m
  use ABHashtable_m
  use PartInterface_m
  implicit none

  type, extends(PartInterface) :: CountedLayerInterfaceFactoryPart
    class(MyFontProcessor), pointer :: f_updateMyFontProcessor => null()
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    class(Animation), pointer :: f_animationInterface => null()
    integer(4) :: f_total = 0
    integer(4), allocatable :: f_totalString(:)
    integer(4) :: f_xOffset = 0
    class(CountedPickedUpLayerInterfaceFactory), pointer :: f_countedPickedUpLayerInterfaceFactory => null()
    class(PrimitiveLongUtil), pointer :: f_primitiveLongUtil => null()
  contains
    procedure :: jm_updateMeasurement_1 => CountedLayerInterfaceFactoryPart_jm_updateMeasurement_1
    procedure :: jm_init_2 => CountedLayerInterfaceFactoryPart_jm_init_2
    procedure :: jm_getInstance_4 => CountedLayerInterfaceFactoryPart_jm_getInstance_4
    procedure :: jm_getTotal_0 => CountedLayerInterfaceFactoryPart_jm_getTotal_0
    procedure :: jm_setTotal_1 => CountedLayerInterfaceFactoryPart_jm_setTotal_1
    procedure :: jm_paint_1 => CountedLayerInterfaceFactoryPart_jm_paint_1
    procedure :: jm_paintThreed_1 => CountedLayerInterfaceFactoryPart_jm_paintThreed_1
    procedure :: jm_getAnimationInterface_0 => CountedLayerInterfaceFactoryPart_jm_getAnimationInterface_0
    procedure :: jm_setAnimationInterface_1 => CountedLayerInterfaceFactoryPart_jm_setAnimationInterface_1
    procedure :: jm_getXOffset_0 => CountedLayerInterfaceFactoryPart_jm_getXOffset_0
    procedure :: jm_setXOffset_1 => CountedLayerInterfaceFactoryPart_jm_setXOffset_1
    procedure :: jm_getTotalString_0 => CountedLayerInterfaceFactoryPart_jm_getTotalString_0
    procedure :: jm_getCountedPickedUpLayerInterfaceFactory_0 => CountedLayerInterfaceFactoryPart_jm_getCountedPickedUpLayerInterfaceFactory_0
    procedure :: jm_setCountedPickedUpLayerInterfaceFactory_1 => CountedLayerInterfaceFactoryPart_jm_setCountedPickedUpLayerInterfaceFactory_1
  end type

  ! CountedLayerInterfaceFactoryPart used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: CountedLayerInterfaceFactoryPart_jas_UpdateMyFontInterface
    class(CountedLayerInterfaceFactoryPart), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => CountedLayerInterfaceFactoryPart_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type

  class(CountedLayerInterfaceFactoryPart), pointer, save :: CountedLayerInterfaceFactoryPart_jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY => null()
  logical, save :: CountedLayerInterfaceFactoryPart_jset_NULL_COUNTED_LAYER_INTERFACE_FACTORY = .false.

contains

  function CountedLayerInterfaceFactoryPart_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CountedLayerInterfaceFactoryPart), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CountedLayerInterfaceFactoryPart)
      jresult => object
    end select
  end function

  function CountedLayerInterfaceFactoryPart_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(CountedLayerInterfaceFactoryPart), target :: object
    class(CountedLayerInterfaceFactoryPart_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CountedLayerInterfaceFactoryPart'
    jresult%jtarget => object
  end function

  recursive subroutine CountedLayerInterfaceFactoryPart_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(CountedLayerInterfaceFactoryPart_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  function CountedLayerInterfaceFactoryPart_jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY() result(jresult)
    class(CountedLayerInterfaceFactoryPart), pointer :: jresult
    if (.not. CountedLayerInterfaceFactoryPart_jset_NULL_COUNTED_LAYER_INTERFACE_FACTORY) then
      CountedLayerInterfaceFactoryPart_jset_NULL_COUNTED_LAYER_INTERFACE_FACTORY = .true.
      CountedLayerInterfaceFactoryPart_jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY => CountedLayerInterfaceFactoryPart_jnew_2(0, CountedPickedUpLayerInterfaceFactory_jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY())
    end if
    jresult => CountedLayerInterfaceFactoryPart_jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY
  end function

  subroutine CountedLayerInterfaceFactoryPart_jsetstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY(jvalue)
    class(CountedLayerInterfaceFactoryPart), target, optional :: jvalue
    CountedLayerInterfaceFactoryPart_jset_NULL_COUNTED_LAYER_INTERFACE_FACTORY = .true.
    if (present(jvalue)) then
      CountedLayerInterfaceFactoryPart_jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY => jvalue
    else
      CountedLayerInterfaceFactoryPart_jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY => null()
    end if
  end subroutine

  recursive function CountedLayerInterfaceFactoryPart_jnew_2(j_total, j_countedPickedUpLayerInterfaceFactory) result(this)
    integer(4), value :: j_total
    class(CountedPickedUpLayerInterfaceFactory), target, optional :: j_countedPickedUpLayerInterfaceFactory
    class(CountedLayerInterfaceFactoryPart), pointer :: this
    class(NullAnimationFactory), pointer :: jtemp1
    class(NullUtil), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'CountedLayerInterfaceFactoryPart'
    this%f_updateMyFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    this%f_myFontProcessor => this%f_updateMyFontProcessor
    jtemp1 => NullAnimationFactory_jm_getFactoryInstance_0()
    this%f_animationInterface => jtemp1%jm_getInstance_1(0)
    
    jtemp2 => NullUtil_jm_getInstance_0()
    this%f_totalString = jtemp2%f_NULL_CHAR_ARRAY
    
    this%f_countedPickedUpLayerInterfaceFactory => CountedPickedUpLayerInterfaceFactory_jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY()
    
        this%f_primitiveLongUtil => PrimitiveLongUtil_jm_createPowerOfTen_1(1000)
        call this%jm_init_2(j_total, j_countedPickedUpLayerInterfaceFactory)
  end function

  recursive subroutine CountedLayerInterfaceFactoryPart_jm_updateMeasurement_1(this, j_graphics)
    class(CountedLayerInterfaceFactoryPart), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_font => j_graphics%jm_getFont_0()
        call this%jm_setXOffset_1((j_font%jm_charsWidth_3(this%f_totalString, 0, this%f_primitiveLongUtil%jm_getCurrentTotalDigits_0()) + (shifta(j_font%jm_getSize_0(), iand(1, 31)))))
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive subroutine CountedLayerInterfaceFactoryPart_jm_init_2(this, j_total, j_countedPickedUpLayerInterfaceFactory)
    class(CountedLayerInterfaceFactoryPart), target :: this
    integer(4), value :: j_total
    class(CountedPickedUpLayerInterfaceFactory), target, optional :: j_countedPickedUpLayerInterfaceFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setCountedPickedUpLayerInterfaceFactory_1(j_countedPickedUpLayerInterfaceFactory)
        this%f_total = j_total
  end subroutine

  recursive function CountedLayerInterfaceFactoryPart_jm_getInstance_4(this, j_hashtable, j_x, j_y, j_z) result(jresult)
    class(CountedLayerInterfaceFactoryPart), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    class(AllBinaryLayer), pointer :: jresult
    class(CountedPickedUpLayerInterfaceFactory), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((this%f_total > 0)) then
            call this%jm_setTotal_1((this%f_total - 1))
            jtemp3 => this%jm_getCountedPickedUpLayerInterfaceFactory_0()
            jresult => jtemp3%jm_getNextInstance_4(j_hashtable, j_x, j_y, j_z)
            return
        else
            error stop JR_toString(JR_newJObject('Exception'))
        end if
  end function

  recursive function CountedLayerInterfaceFactoryPart_jm_getTotal_0(this) result(jresult)
    class(CountedLayerInterfaceFactoryPart), target :: this
    integer(4) :: jresult
        jresult = this%f_total
        return
  end function

  recursive subroutine CountedLayerInterfaceFactoryPart_jm_setTotal_1(this, j_total)
    class(CountedLayerInterfaceFactoryPart), target :: this
    integer(4), value :: j_total
        this%f_total = j_total
        this%f_totalString = this%f_primitiveLongUtil%jm_getCharArray_1(j_total)
        this%f_myFontProcessor => this%f_updateMyFontProcessor
  end subroutine

  recursive subroutine CountedLayerInterfaceFactoryPart_jm_paint_1(this, j_graphics)
    class(CountedLayerInterfaceFactoryPart), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
  end subroutine

  recursive subroutine CountedLayerInterfaceFactoryPart_jm_paintThreed_1(this, j_graphics)
    class(CountedLayerInterfaceFactoryPart), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive function CountedLayerInterfaceFactoryPart_jm_getAnimationInterface_0(this) result(jresult)
    class(CountedLayerInterfaceFactoryPart), target :: this
    class(Animation), pointer :: jresult
        jresult => this%f_animationInterface
        return
  end function

  recursive subroutine CountedLayerInterfaceFactoryPart_jm_setAnimationInterface_1(this, j_animationInterface)
    class(CountedLayerInterfaceFactoryPart), target :: this
    class(Animation), target, optional :: j_animationInterface
        this%f_animationInterface => j_animationInterface
  end subroutine

  recursive function CountedLayerInterfaceFactoryPart_jm_getXOffset_0(this) result(jresult)
    class(CountedLayerInterfaceFactoryPart), target :: this
    integer(4) :: jresult
        jresult = this%f_xOffset
        return
  end function

  recursive subroutine CountedLayerInterfaceFactoryPart_jm_setXOffset_1(this, j_totalStringWidth)
    class(CountedLayerInterfaceFactoryPart), target :: this
    integer(4), value :: j_totalStringWidth
        this%f_xOffset = j_totalStringWidth
  end subroutine

  recursive function CountedLayerInterfaceFactoryPart_jm_getTotalString_0(this) result(jresult)
    class(CountedLayerInterfaceFactoryPart), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = this%f_totalString
        return
  end function

  recursive function CountedLayerInterfaceFactoryPart_jm_getCountedPickedUpLayerInterfaceFactory_0(this) result(jresult)
    class(CountedLayerInterfaceFactoryPart), target :: this
    class(CountedPickedUpLayerInterfaceFactory), pointer :: jresult
        jresult => this%f_countedPickedUpLayerInterfaceFactory
        return
  end function

  recursive subroutine CountedLayerInterfaceFactoryPart_jm_setCountedPickedUpLayerInterfaceFactory_1(this, j_countedPickedUpLayerInterfaceFactory)
    class(CountedLayerInterfaceFactoryPart), target :: this
    class(CountedPickedUpLayerInterfaceFactory), target, optional :: j_countedPickedUpLayerInterfaceFactory
        this%f_countedPickedUpLayerInterfaceFactory => j_countedPickedUpLayerInterfaceFactory
  end subroutine
end module CountedLayerInterfaceFactoryPart_m

