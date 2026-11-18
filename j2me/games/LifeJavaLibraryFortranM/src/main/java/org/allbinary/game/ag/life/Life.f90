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
! package org.allbinary.game.ag.life
module Life_m
  use JR_m
  use LifeInterface_m
  implicit none

  type, extends(LifeInterface) :: Life
    integer(4) :: f_lives = 0
    integer(4) :: f_startLives = 0
    integer(4) :: f_maxlives = 0
  contains
    procedure :: jm_get_0 => Life_jm_get_0
    procedure :: jm_set_1 => Life_jm_set_1
    procedure :: jm_reset_0 => Life_jm_reset_0
    procedure :: jm_add_1 => Life_jm_add_1
    procedure :: jm_isAlive_0 => Life_jm_isAlive_0
    procedure :: jm_getMaxlives_0 => Life_jm_getMaxlives_0
    procedure :: jm_reachedLimit_0 => Life_jm_reachedLimit_0
    procedure :: jm_deaths_1 => Life_jm_deaths_1
    procedure :: jm_getStartLives_0 => Life_jm_getStartLives_0
    procedure :: jm_setStartLives_1 => Life_jm_setStartLives_1
  end type

  class(Life), pointer, save :: Life_jcell_NO_LIFE => null()
  logical, save :: Life_jset_NO_LIFE = .false.

contains

  function Life_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Life), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Life)
      jresult => object
    end select
  end function

  function Life_jstatic_NO_LIFE() result(jresult)
    class(Life), pointer :: jresult
    if (.not. Life_jset_NO_LIFE) then
      Life_jset_NO_LIFE = .true.
      Life_jcell_NO_LIFE => Life_jm_createLife_0()
    end if
    jresult => Life_jcell_NO_LIFE
  end function

  subroutine Life_jsetstatic_NO_LIFE(jvalue)
    class(Life), target, optional :: jvalue
    Life_jset_NO_LIFE = .true.
    if (present(jvalue)) then
      Life_jcell_NO_LIFE => jvalue
    else
      Life_jcell_NO_LIFE => null()
    end if
  end subroutine

  recursive function Life_jnew_2(j_lives, j_maxlives) result(this)
    integer(4), value :: j_lives
    integer(4), value :: j_maxlives
    class(Life), pointer :: this
    allocate(this)
    this%jclass = 'Life'
    
    
    
        this%f_maxlives = j_maxlives
        if ((j_lives > this%f_maxlives)) then
            error stop JR_toString(JR_newJObject('Exception'))
        end if
        this%f_lives = j_lives
        this%f_startLives = j_lives
  end function

  recursive function Life_jm_createLife_0() result(jresult)
    class(Life), pointer :: jresult
        continue ! try
            jresult => Life_jnew_2(JR_i16(0), JR_i16(0))
            return
  end function

  recursive function Life_jm_get_0(this) result(jresult)
    class(Life), target :: this
    integer(4) :: jresult
        jresult = this%f_lives
        return
  end function

  recursive subroutine Life_jm_set_1(this, j_lives)
    class(Life), target :: this
    integer(4), value :: j_lives
        this%f_lives = j_lives
  end subroutine

  recursive subroutine Life_jm_reset_0(this)
    class(Life), target :: this
        this%f_lives = this%f_startLives
  end subroutine

  recursive subroutine Life_jm_add_1(this, j_lives)
    class(Life), target :: this
    integer(4), value :: j_lives
        if ((.not. this%jm_reachedLimit_0())) then
            if (((this%f_lives + j_lives) <= this%jm_getMaxlives_0())) then
                this%f_lives = JR_i16(((this%f_lives + j_lives)))
            else
                this%f_lives = this%jm_getMaxlives_0()
            end if
        end if
  end subroutine

  recursive function Life_jm_isAlive_0(this) result(jresult)
    class(Life), target :: this
    logical :: jresult
        if ((this%f_lives <= 0)) then
            jresult = .false.
            return
        else
            jresult = .true.
            return
        end if
  end function

  recursive function Life_jm_getMaxlives_0(this) result(jresult)
    class(Life), target :: this
    integer(4) :: jresult
        jresult = this%f_maxlives
        return
  end function

  recursive function Life_jm_reachedLimit_0(this) result(jresult)
    class(Life), target :: this
    logical :: jresult
        if (((this%f_lives > this%f_maxlives) .or. (this%f_lives < 0))) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive subroutine Life_jm_deaths_1(this, j_lives)
    class(Life), target :: this
    integer(4), value :: j_lives
        if ((.not. this%jm_reachedLimit_0())) then
            if (((this%f_lives - j_lives) >= 0)) then
                this%f_lives = JR_i16(((this%f_lives - j_lives)))
            else
                this%f_lives = 0
            end if
        end if
  end subroutine

  recursive function Life_jm_getStartLives_0(this) result(jresult)
    class(Life), target :: this
    integer(4) :: jresult
        jresult = this%f_startLives
        return
  end function

  recursive subroutine Life_jm_setStartLives_1(this, j_startLives)
    class(Life), target :: this
    integer(4), value :: j_startLives
        this%f_startLives = j_startLives
  end subroutine
end module Life_m

