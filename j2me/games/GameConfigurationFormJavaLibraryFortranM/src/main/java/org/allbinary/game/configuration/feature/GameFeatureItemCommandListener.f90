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
! package org.allbinary.game.configuration.feature
module GameFeatureItemCommandListener_m
  use JR_m
  use GameConfigurationGauge_m
  use GameConfigurationUtil_m
  use GameOptionsForm_m
  use LogUtil_m
  use StringMaker_m
  use MidletStrings_m
  use CommonLabels_m
  use CommonStrings_m
  implicit none

  type, extends(ItemCommandListener) :: GameFeatureItemCommandListener
    class(LogUtil), pointer :: f_logUtil => null()
    class(GameOptionsForm), pointer :: f_gameOptionsForm => null()
  contains
    procedure :: jm_commandAction_2 => GameFeatureItemCommandListener_jm_commandAction_2
  end type


contains

  function GameFeatureItemCommandListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameFeatureItemCommandListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameFeatureItemCommandListener)
      jresult => object
    end select
  end function

  recursive function GameFeatureItemCommandListener_jnew_1(j_gameOptionsForm) result(this)
    class(GameOptionsForm), target, optional :: j_gameOptionsForm
    class(GameFeatureItemCommandListener), pointer :: this
    allocate(this)
    this%jclass = 'GameFeatureItemCommandListener'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
        this%f_gameOptionsForm => j_gameOptionsForm
  end function

  recursive subroutine GameFeatureItemCommandListener_jm_commandAction_2(this, j_command, j_item)
    class(GameFeatureItemCommandListener), target :: this
    class(Command), target, optional :: j_command
    class(Item), target, optional :: j_item
    character(len=:), allocatable :: j_itemLabel
    class(CommonStrings), pointer :: j_commonStrings
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(CommonLabels), pointer :: jtemp4
    class(MidletStrings), pointer :: jtemp5
    class(GameConfigurationUtil), pointer :: jtemp6
    class(MidletStrings), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_itemLabel = j_item%jm_getLabel_0()
            jtemp4 => CommonLabels_jm_getInstance_0()
            jtemp3 => StringMaker_jnew_0()
            jtemp2 => jtemp3%jm_append_1(jtemp4%f_ITEM_LABEL)
            jtemp1 => jtemp2%jm_append_1(j_itemLabel)
            jtemp5 => MidletStrings_jm_getInstance_0()
            call this%f_logUtil%jm_putF_3(jtemp1%jm_toString_0(), this, jtemp5%f_COMMAND_ACTION)
            if ((JR_className(j_item) == 'GameConfigurationGauge')) then
                jtemp6 => GameConfigurationUtil_jm_getInstance_0()
                call jtemp6%jm_change_2(this%f_gameOptionsForm, GameConfigurationGauge_jcast(j_item))
            end if
  end subroutine
end module GameFeatureItemCommandListener_m

