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
module PtsDamageFloaters_m
  use JR_m
  use MyRandomFactory_m
  use BasicColor_m
  use BasicColorArrayIndexer_m
  use BasicColorFactory_m
  use BasicColorSetUtil_m
  use AllBinaryLayer_m
  use CharArrayFactory_m
  use PrimitiveLongUtil_m
  use CircularIndexUtil_m
  use ViewPositionBase_m
  use DamageFloaters_m
  implicit none

  type, extends(DamageFloaters) :: PtsDamageFloaters
    class(BasicColorSetUtil), pointer :: f_basicSetColorUtil => null()
    class(AllBinaryLayer), pointer :: f_layerInterface => null()
    integer(4), allocatable :: f_lastDamage(:)
    integer(4), allocatable :: f_lastDamageString(:,:)
    integer(4), allocatable :: f_lastDamageStringSizeArray(:)
    class(CircularIndexUtil), pointer :: f_circularIndexUtil => null()
    class(PrimitiveLongUtil), pointer :: f_primitiveLongUtil => null()
    class(MyRandomFactory), pointer :: f_myRandomFactory => null()
  contains
    procedure :: jm_add_1 => PtsDamageFloaters_jm_add_1
    procedure :: jm_paint_1 => PtsDamageFloaters_jm_paint_1
  end type

  class(BasicColorArrayIndexer), pointer, save :: PtsDamageFloaters_jcell_basicColorArrayIndexer => null()
  logical, save :: PtsDamageFloaters_jset_basicColorArrayIndexer = .false.

contains

  function PtsDamageFloaters_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PtsDamageFloaters), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PtsDamageFloaters)
      jresult => object
    end select
  end function

  function PtsDamageFloaters_jstatic_basicColorArrayIndexer() result(jresult)
    class(BasicColorArrayIndexer), pointer :: jresult
    class(BasicColorFactory), pointer :: jtemp1
    class(BasicColorFactory), pointer :: jtemp2
    class(BasicColorFactory), pointer :: jtemp3
    class(BasicColorFactory), pointer :: jtemp4
    if (.not. PtsDamageFloaters_jset_basicColorArrayIndexer) then
      PtsDamageFloaters_jset_basicColorArrayIndexer = .true.
      jtemp1 => BasicColorFactory_jm_getInstance_0()
    jtemp2 => BasicColorFactory_jm_getInstance_0()
    jtemp3 => BasicColorFactory_jm_getInstance_0()
    jtemp4 => BasicColorFactory_jm_getInstance_0()
    PtsDamageFloaters_jcell_basicColorArrayIndexer => BasicColorArrayIndexer_jnew_1([JRef :: JRef(jtemp1%f_WHITE), JRef(jtemp2%f_RED), JRef(jtemp3%f_YELLOW), JRef(jtemp4%f_BLUE)])
    end if
    jresult => PtsDamageFloaters_jcell_basicColorArrayIndexer
  end function

  subroutine PtsDamageFloaters_jsetstatic_basicColorArrayIndexer(jvalue)
    class(BasicColorArrayIndexer), target, optional :: jvalue
    PtsDamageFloaters_jset_basicColorArrayIndexer = .true.
    if (present(jvalue)) then
      PtsDamageFloaters_jcell_basicColorArrayIndexer => jvalue
    else
      PtsDamageFloaters_jcell_basicColorArrayIndexer => null()
    end if
  end subroutine

  recursive function PtsDamageFloaters_jnew_1(j_layerInterface) result(this)
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(PtsDamageFloaters), pointer :: this
    integer(4), allocatable :: j_CHAR_ARRAY(:)
    integer(4) :: j_index
    class(CharArrayFactory), pointer :: jtemp5
    allocate(this)
    this%jclass = 'PtsDamageFloaters'
    this%f_basicSetColorUtil => BasicColorSetUtil_jm_getInstance_0()
    
    this%f_lastDamage = JR_newIntArray(5)
    this%f_lastDamageString = JR_newIntArray2(5, 0)
    this%f_lastDamageStringSizeArray = JR_newIntArray(5)
    this%f_circularIndexUtil => CircularIndexUtil_jm_createInstance_1(5)
    
    this%f_myRandomFactory => MyRandomFactory_jm_getInstance_0()
        this%f_primitiveLongUtil => PrimitiveLongUtil_jm_createPowerOfTen_1(100000)
        this%f_layerInterface => j_layerInterface
        jtemp5 => CharArrayFactory_jm_getInstance_0()
        j_CHAR_ARRAY = jtemp5%jm_getZeroCharArray_0()
        j_index = (size(this%f_lastDamageString, 1) - 1)
        do while ((j_index >= 0))
            this%f_lastDamageString((j_index) + 1, :) = j_CHAR_ARRAY
            j_index = j_index - 1
        end do
  end function

  recursive subroutine PtsDamageFloaters_jm_add_1(this, j_damage)
    class(PtsDamageFloaters), target :: this
    integer(4), value :: j_damage
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = this%f_circularIndexUtil%jm_getIndex_0()
        this%f_lastDamage((j_index) + 1) = j_damage
        this%f_lastDamageString((j_index) + 1, :) = this%f_primitiveLongUtil%jm_getCharArray_1(this%f_lastDamage((j_index) + 1))
        this%f_lastDamageStringSizeArray((j_index) + 1) = this%f_primitiveLongUtil%jm_getCurrentTotalDigits_0()
        jdiscardInt = this%f_circularIndexUtil%jm_next_0()
  end subroutine

  recursive subroutine PtsDamageFloaters_jm_paint_1(this, j_graphics)
    class(PtsDamageFloaters), target :: this
    class(Graphics), target, optional :: j_graphics
    class(ViewPositionBase), pointer :: j_viewPosition
    integer(4) :: j_x
    integer(4) :: j_y
    integer(4) :: j_delta
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_viewPosition => this%f_layerInterface%jm_getViewPosition_0()
        j_x = j_viewPosition%jm_getX_0()
        j_y = j_viewPosition%jm_getY_0()
        j_index = (size(this%f_lastDamage, 1) - 1)
        do while ((j_index >= 0))
            if ((this%f_lastDamage((j_index) + 1) /= 0)) then
                j_delta = (10 * ((j_index + 2)))
                associate (jstaticref1 => PtsDamageFloaters_jstatic_basicColorArrayIndexer())
                call this%f_basicSetColorUtil%jm_setBasicColorP_2(j_graphics, jstaticref1%jm_get_0())
                end associate
                call j_graphics%jm_drawChars_6(this%f_lastDamageString((j_index) + 1, :), 0, this%f_lastDamageStringSizeArray((j_index) + 1), (j_x - this%f_myRandomFactory%jm_getNextInt_1(j_delta)), (j_y - j_delta), 0)
                associate (jstaticref2 => PtsDamageFloaters_jstatic_basicColorArrayIndexer())
                call jstaticref2%jm_next_0()
                end associate
            end if
            this%f_lastDamage((j_index) + 1) = 0
            j_index = j_index - 1
        end do
  end subroutine
end module PtsDamageFloaters_m

