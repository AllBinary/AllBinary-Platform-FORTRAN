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
! package org.allbinary.game.combat.weapon
module WeaponProperties_m
  use JR_m
  use PreLogUtil_m
  use BasicDecimal_m
  use StringMaker_m
  use CommonSeps_m
  use CommonStrings_m
  use SimpleWeaponProperties_m
  implicit none

  type, extends(SimpleWeaponProperties) :: WeaponProperties
    integer(8) :: f_reloadTime = 0_8
    integer(8) :: f_targetingTime = 0_8
    class(BasicDecimal), pointer :: f_speed => null()
    integer(8) :: f_MAX = 0_8
    integer(4) :: f_ZERO = 0
  contains
    procedure :: jm_setReloadTime_1 => WeaponProperties_jm_setReloadTime_1
    procedure :: jm_getReloadTime_0 => WeaponProperties_jm_getReloadTime_0
    procedure :: jm_setTargetingTime_1 => WeaponProperties_jm_setTargetingTime_1
    procedure :: jm_getTargetingTime_0 => WeaponProperties_jm_getTargetingTime_0
    procedure :: jm_getSpeed_0 => WeaponProperties_jm_getSpeed_0
    procedure :: jm_setSpeed_1 => WeaponProperties_jm_setSpeed_1
    procedure :: jm_getDamageI_1 => WeaponProperties_jm_getDamageI_1
    procedure :: jm_toStringArray_0 => WeaponProperties_jm_toStringArray_0
    procedure :: jm_toString_0 => WeaponProperties_jm_toString_0
  end type

  class(WeaponProperties), pointer, save :: WeaponProperties_jcell_NULL_WEAPON_PROPERTIES => null()
  logical, save :: WeaponProperties_jset_NULL_WEAPON_PROPERTIES = .false.
  logical, save :: WeaponProperties_jcell_messageSent
  logical, save :: WeaponProperties_jset_messageSent = .false.
  character(len=:), allocatable, save :: WeaponProperties_jcell_DAMAGE
  logical, save :: WeaponProperties_jset_DAMAGE = .false.
  character(len=:), allocatable, save :: WeaponProperties_jcell_RANGE
  logical, save :: WeaponProperties_jset_RANGE = .false.
  character(len=:), allocatable, save :: WeaponProperties_jcell_RELOAD
  logical, save :: WeaponProperties_jset_RELOAD = .false.

contains

  function WeaponProperties_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(WeaponProperties), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (WeaponProperties)
      jresult => object
    end select
  end function

  function WeaponProperties_jstatic_NULL_WEAPON_PROPERTIES() result(jresult)
    class(WeaponProperties), pointer :: jresult
    if (.not. WeaponProperties_jset_NULL_WEAPON_PROPERTIES) then
      WeaponProperties_jset_NULL_WEAPON_PROPERTIES = .true.
      WeaponProperties_jcell_NULL_WEAPON_PROPERTIES => WeaponProperties_jnew_5(0_8, 0_8, 0_8, 0, JR_i16(0))
    end if
    jresult => WeaponProperties_jcell_NULL_WEAPON_PROPERTIES
  end function

  subroutine WeaponProperties_jsetstatic_NULL_WEAPON_PROPERTIES(jvalue)
    class(WeaponProperties), target, optional :: jvalue
    WeaponProperties_jset_NULL_WEAPON_PROPERTIES = .true.
    if (present(jvalue)) then
      WeaponProperties_jcell_NULL_WEAPON_PROPERTIES => jvalue
    else
      WeaponProperties_jcell_NULL_WEAPON_PROPERTIES => null()
    end if
  end subroutine

  function WeaponProperties_jstatic_messageSent() result(jresult)
    logical :: jresult
    if (.not. WeaponProperties_jset_messageSent) then
      WeaponProperties_jset_messageSent = .true.
      WeaponProperties_jcell_messageSent = .false.
    end if
    jresult = WeaponProperties_jcell_messageSent
  end function

  subroutine WeaponProperties_jsetstatic_messageSent(jvalue)
    logical, value :: jvalue
    WeaponProperties_jset_messageSent = .true.
    WeaponProperties_jcell_messageSent = jvalue
  end subroutine

  function WeaponProperties_jstatic_DAMAGE() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. WeaponProperties_jset_DAMAGE) then
      WeaponProperties_jset_DAMAGE = .true.
      WeaponProperties_jcell_DAMAGE = 'Damage: '
    end if
    jresult = WeaponProperties_jcell_DAMAGE
  end function

  subroutine WeaponProperties_jsetstatic_DAMAGE(jvalue)
    character(len=*), intent(in) :: jvalue
    WeaponProperties_jset_DAMAGE = .true.
    WeaponProperties_jcell_DAMAGE = jvalue
  end subroutine

  function WeaponProperties_jstatic_RANGE() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. WeaponProperties_jset_RANGE) then
      WeaponProperties_jset_RANGE = .true.
      WeaponProperties_jcell_RANGE = 'Range: '
    end if
    jresult = WeaponProperties_jcell_RANGE
  end function

  subroutine WeaponProperties_jsetstatic_RANGE(jvalue)
    character(len=*), intent(in) :: jvalue
    WeaponProperties_jset_RANGE = .true.
    WeaponProperties_jcell_RANGE = jvalue
  end subroutine

  function WeaponProperties_jstatic_RELOAD() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. WeaponProperties_jset_RELOAD) then
      WeaponProperties_jset_RELOAD = .true.
      WeaponProperties_jcell_RELOAD = 'Reload: '
    end if
    jresult = WeaponProperties_jcell_RELOAD
  end function

  subroutine WeaponProperties_jsetstatic_RELOAD(jvalue)
    character(len=*), intent(in) :: jvalue
    WeaponProperties_jset_RELOAD = .true.
    WeaponProperties_jcell_RELOAD = jvalue
  end subroutine

  recursive function WeaponProperties_jnew_5(j_reloadTime, j_targetingTime, j_speed, j_damage, j_dissipation) result(this)
    integer(8), value :: j_reloadTime
    integer(8), value :: j_targetingTime
    integer(8), value :: j_speed
    integer(4), value :: j_damage
    integer(4), value :: j_dissipation
    class(WeaponProperties), pointer :: this
    character(len=:), allocatable :: j_MESSAGE
    class(CommonStrings), pointer :: j_commonStrings
    integer(8) :: j_unscaledDamage
    integer(4) :: j_scaledDissipation
    integer(8) :: j_value
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'WeaponProperties'
    
    
    this%f_speed => BasicDecimal_jstatic_ZERO_BIGDECIMAL()
    this%f_MAX = 10240_8
    this%f_ZERO = 0
        if ((((j_speed < this%f_MAX) .and. (j_speed /= 0_8)) .and. (.not. WeaponProperties_jstatic_messageSent()))) then
            j_MESSAGE = 'Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: '
            j_commonStrings => CommonStrings_jm_getInstance_0()
            jtemp3 => StringMaker_jnew_0()
            jtemp2 => jtemp3%jm_append_1(j_MESSAGE)
            jtemp1 => jtemp2%jm_appendlong_1(j_speed)
            call PreLogUtil_jm_put_3(jtemp1%jm_toString_0(), this, j_commonStrings%f_CONSTRUCTOR)
            call WeaponProperties_jsetstatic_messageSent(.true.)
        end if
        call this%jm_setReloadTime_1(j_reloadTime)
        call this%jm_setTargetingTime_1(j_targetingTime)
        call this%jm_setDamage_1(j_damage)
        call this%jm_setDissipation_1(j_dissipation)
        call this%jm_setSpeed_1(BasicDecimal_jnew_1(j_speed))
        if ((j_dissipation /= this%f_ZERO)) then
            j_unscaledDamage = (this%f_speed%jm_getUnscaled_0() * int(j_damage, 8))
            j_scaledDissipation = (j_dissipation * this%f_speed%jm_getScaledFactorValue_0())
            j_value = ((j_unscaledDamage / int(j_scaledDissipation, 8)))
            call this%jm_setRange_1((JR_l2i(((j_value * 9_8))) / 10))
        end if
  end function

  recursive subroutine WeaponProperties_jm_setReloadTime_1(this, j_reloadTime)
    class(WeaponProperties), target :: this
    integer(8), value :: j_reloadTime
        this%f_reloadTime = j_reloadTime
  end subroutine

  recursive function WeaponProperties_jm_getReloadTime_0(this) result(jresult)
    class(WeaponProperties), target :: this
    integer(8) :: jresult
        jresult = this%f_reloadTime
        return
  end function

  recursive subroutine WeaponProperties_jm_setTargetingTime_1(this, j_targetingTime)
    class(WeaponProperties), target :: this
    integer(8), value :: j_targetingTime
        this%f_targetingTime = j_targetingTime
  end subroutine

  recursive function WeaponProperties_jm_getTargetingTime_0(this) result(jresult)
    class(WeaponProperties), target :: this
    integer(8) :: jresult
        jresult = this%f_targetingTime
        return
  end function

  recursive function WeaponProperties_jm_getSpeed_0(this) result(jresult)
    class(WeaponProperties), target :: this
    class(BasicDecimal), pointer :: jresult
        jresult => this%f_speed
        return
  end function

  recursive subroutine WeaponProperties_jm_setSpeed_1(this, j_speed)
    class(WeaponProperties), target :: this
    class(BasicDecimal), target, optional :: j_speed
        this%f_speed => j_speed
  end subroutine

  recursive function WeaponProperties_jm_getDamageI_1(this, j_range) result(jresult)
    class(WeaponProperties), target :: this
    integer(4), value :: j_range
    integer(4) :: jresult
        jresult = (this%jm_getDamage_0() - ((((this%jm_getDissipation_0() * j_range)) / this%f_speed%jm_getScaled_0())))
        return
  end function

  recursive function WeaponProperties_jm_toStringArray_0(this) result(jresult)
    class(WeaponProperties), target :: this
    type(JString), allocatable :: jresult(:)
    integer(4) :: j_index
    type(JString), allocatable :: j_stringArray(:)
    class(StringMaker), pointer :: j_stringBuffer
    integer(4) :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    integer(4) :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    integer(4) :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = 0
        j_stringArray = JR_newStringArray(3)
        j_stringBuffer => StringMaker_jnew_0()
        jtemp6 => j_stringBuffer%jm_append_1(WeaponProperties_jstatic_DAMAGE())
        jtemp4 = j_index
        j_index = j_index + 1
        jtemp5 => jtemp6%jm_appendint_1(this%jm_getDamage_0())
        j_stringArray((jtemp4) + 1)%v = jtemp5%jm_toString_0()
        jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
        jtemp9 => j_stringBuffer%jm_append_1(WeaponProperties_jstatic_RANGE())
        jtemp7 = j_index
        j_index = j_index + 1
        jtemp8 => jtemp9%jm_appendint_1(this%jm_getRange_0())
        j_stringArray((jtemp7) + 1)%v = jtemp8%jm_toString_0()
        jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
        jtemp12 => j_stringBuffer%jm_append_1(WeaponProperties_jstatic_RELOAD())
        jtemp10 = j_index
        j_index = j_index + 1
        jtemp11 => jtemp12%jm_appendlong_1(this%jm_getReloadTime_0())
        j_stringArray((jtemp10) + 1)%v = jtemp11%jm_toString_0()
        jresult = j_stringArray
        return
  end function

  recursive function WeaponProperties_jm_toString_0(this) result(jresult)
    class(WeaponProperties), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(StringMaker), pointer :: jtemp13
    class(CommonSeps), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(CommonSeps), pointer :: jtemp16
    class(StringMaker), pointer :: jtemp17
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jtemp13 => j_stringBuffer%jm_append_1(WeaponProperties_jstatic_DAMAGE())
        jdiscardRef => jtemp13%jm_appendint_1(this%jm_getDamage_0())
        jtemp14 => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp14%f_SPACE)
        jtemp15 => j_stringBuffer%jm_append_1(WeaponProperties_jstatic_RANGE())
        jdiscardRef => jtemp15%jm_appendint_1(this%jm_getRange_0())
        jtemp16 => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp16%f_SPACE)
        jtemp17 => j_stringBuffer%jm_append_1(WeaponProperties_jstatic_RELOAD())
        jdiscardRef => jtemp17%jm_appendlong_1(this%jm_getReloadTime_0())
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module WeaponProperties_m

function WeaponProperties_jnew_5_jext(p1, p2, p3, p4, p5) result(this)
  use WeaponProperties_m, only: JObject, WeaponProperties_jnew_5
  implicit none
      integer(8), value :: p1
      integer(8), value :: p2
      integer(8), value :: p3
      integer(4), value :: p4
      integer(4), value :: p5
  class(JObject), pointer :: this
  this => WeaponProperties_jnew_5(p1, p2, p3, p4, p5)
end function

