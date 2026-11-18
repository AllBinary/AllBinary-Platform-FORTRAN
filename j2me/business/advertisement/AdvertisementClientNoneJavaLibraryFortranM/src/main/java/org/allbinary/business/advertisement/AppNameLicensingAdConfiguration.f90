! Generated Code Do Not Modify
! package org.allbinary.business.advertisement
module AppNameLicensingAdConfiguration_m
  use JR_m
  use StringUtil_m
  use AdConfiguration_m
  implicit none

  type, extends(AdConfiguration) :: AppNameLicensingAdConfiguration
  end type


contains

  function AppNameLicensingAdConfiguration_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AppNameLicensingAdConfiguration), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AppNameLicensingAdConfiguration)
      jresult => object
    end select
  end function

  recursive function AppNameLicensingAdConfiguration_jnew_0() result(this)
    class(AppNameLicensingAdConfiguration), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
    allocate(this)
    this%jclass = 'AppNameLicensingAdConfiguration'
        jtemp1 => StringUtil_jm_getInstance_0()
        jtemp2 => StringUtil_jm_getInstance_0()
        jtemp3 => StringUtil_jm_getInstance_0()
        continue ! super()
  end function
end module AppNameLicensingAdConfiguration_m

function AppNameLicensingAdConfiguration_jnew_0_jext() result(this)
  use AppNameLicensingAdConfiguration_m, only: JObject, AppNameLicensingAdConfiguration_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => AppNameLicensingAdConfiguration_jnew_0()
end function

