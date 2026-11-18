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
! package org.allbinary.game.layer.resources
module BasicGameResources_m
  use JR_m
  use GameConfigurationCentral_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonStrings_m
  use GameGraphicsResourceUtil_m
  implicit none

  type, extends(JObject) :: BasicGameResources
    class(LogUtil), pointer :: f_logUtil => null()
    character(len=:), allocatable :: f_RESOURCE
    character(len=:), allocatable :: f_RESOURCE_DESTROY
  contains
    procedure :: jm_init_2 => BasicGameResources_jm_init_2
    procedure :: jm_append_2 => BasicGameResources_jm_append_2
    procedure :: jm_getString_0 => BasicGameResources_jm_getString_0
  end type

  class(StringMaker), pointer, save :: BasicGameResources_jcell_stringBuffer => null()
  logical, save :: BasicGameResources_jset_stringBuffer = .false.

contains

  function BasicGameResources_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicGameResources), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicGameResources)
      jresult => object
    end select
  end function

  function BasicGameResources_jstatic_stringBuffer() result(jresult)
    class(StringMaker), pointer :: jresult
    if (.not. BasicGameResources_jset_stringBuffer) then
      BasicGameResources_jset_stringBuffer = .true.
      BasicGameResources_jcell_stringBuffer => StringMaker_jnew_0()
    end if
    jresult => BasicGameResources_jcell_stringBuffer
  end function

  subroutine BasicGameResources_jsetstatic_stringBuffer(jvalue)
    class(StringMaker), target, optional :: jvalue
    BasicGameResources_jset_stringBuffer = .true.
    if (present(jvalue)) then
      BasicGameResources_jcell_stringBuffer => jvalue
    else
      BasicGameResources_jcell_stringBuffer => null()
    end if
  end subroutine

  recursive function BasicGameResources_jnew_0() result(this)
    class(BasicGameResources), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    allocate(this)
    this%jclass = 'BasicGameResources'
    this%f_RESOURCE = ''
    this%f_RESOURCE_DESTROY = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_RESOURCE = jtemp1%f_EMPTY_STRING
    jtemp2 => StringUtil_jm_getInstance_0()
    this%f_RESOURCE_DESTROY = jtemp2%f_EMPTY_STRING
        continue
  end function

  recursive subroutine BasicGameResources_jm_init_2(this, j_ROOT, j_SIZE)
    class(BasicGameResources), target :: this
    character(len=*), intent(in) :: j_ROOT
    type(JString) :: j_SIZE(:)
    integer(4) :: j_scale
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jtemp3
    class(GameConfigurationCentral), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jtemp4 => GameConfigurationCentral_jm_getInstance_0()
            jtemp3 => jtemp4%f_SCALE%jm_getValue_0()
            j_scale = jtemp3%jm_intValue_0()
            if (((j_scale > 1) .and. ((j_scale - 1) < size(j_SIZE, 1)))) then
                call this%jm_append_2(j_ROOT, j_SIZE(((j_scale - 1)) + 1)%v)
            else
                jtemp7 => StringMaker_jnew_0()
                jtemp6 => jtemp7%jm_append_1('Invalid Value: ')
                jtemp5 => jtemp6%jm_appendint_1(j_scale)
                error stop JR_toString(JR_newJObject('Exception'))
            end if
  end subroutine

  recursive subroutine BasicGameResources_jm_append_2(this, j_ROOT, j_sizeString)
    class(BasicGameResources), target :: this
    character(len=*), intent(in) :: j_ROOT
    character(len=*), intent(in) :: j_sizeString
    character(len=:), allocatable :: j_DESTROY
    character(len=:), allocatable :: j_string
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_DESTROY = '_destroy'
        j_string = this%jm_getString_0()
        associate (jstaticref1 => BasicGameResources_jstatic_stringBuffer())
        jdiscardRef => jstaticref1%jm_delete_2(0, jstaticref1%jm_length_0())
        end associate
        associate (jstaticref2 => BasicGameResources_jstatic_stringBuffer())
        jdiscardRef => jstaticref2%jm_append_1(j_ROOT)
        end associate
        associate (jstaticref3 => BasicGameResources_jstatic_stringBuffer())
        jdiscardRef => jstaticref3%jm_append_1(j_string)
        end associate
        associate (jstaticref4 => BasicGameResources_jstatic_stringBuffer())
        jdiscardRef => jstaticref4%jm_append_1(j_sizeString)
        end associate
        this%f_RESOURCE = JR_toString(BasicGameResources_jstatic_stringBuffer())
        associate (jstaticref5 => BasicGameResources_jstatic_stringBuffer())
        jdiscardRef => jstaticref5%jm_delete_2(0, jstaticref5%jm_length_0())
        end associate
        associate (jstaticref6 => BasicGameResources_jstatic_stringBuffer())
        jdiscardRef => jstaticref6%jm_append_1(j_ROOT)
        end associate
        associate (jstaticref7 => BasicGameResources_jstatic_stringBuffer())
        jdiscardRef => jstaticref7%jm_append_1(j_DESTROY)
        end associate
        associate (jstaticref8 => BasicGameResources_jstatic_stringBuffer())
        jdiscardRef => jstaticref8%jm_append_1(j_string)
        end associate
        associate (jstaticref9 => BasicGameResources_jstatic_stringBuffer())
        jdiscardRef => jstaticref9%jm_append_1(j_sizeString)
        end associate
        this%f_RESOURCE_DESTROY = JR_toString(BasicGameResources_jstatic_stringBuffer())
  end subroutine

  recursive function BasicGameResources_jm_getString_0(this) result(jresult)
    class(BasicGameResources), target :: this
    character(len=:), allocatable :: jresult
    class(GameGraphicsResourceUtil), pointer :: jtemp8
        jtemp8 => GameGraphicsResourceUtil_jm_getInstance_0()
        jresult = jtemp8%jm_getName_0()
        return
  end function
end module BasicGameResources_m

