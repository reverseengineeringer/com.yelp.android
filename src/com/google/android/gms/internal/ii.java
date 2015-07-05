package com.google.android.gms.internal;

public enum ii
{
  public static String Fk = "Error";
  public static String Fl = "status";
  private final String Fm;
  
  static
  {
    EA = new ii("SERVICE_DISABLED", 9, "ServiceDisabled");
    EB = new ii("SERVICE_UNAVAILABLE", 10, "ServiceUnavailable");
    EC = new ii("CAPTCHA", 11, "CaptchaRequired");
    ED = new ii("NETWORK_ERROR", 12, "NetworkError");
    EE = new ii("USER_CANCEL", 13, "UserCancel");
    EF = new ii("PERMISSION_DENIED", 14, "PermissionDenied");
    EG = new ii("DEVICE_MANAGEMENT_REQUIRED", 15, "DeviceManagementRequiredOrSyncDisabled");
    EH = new ii("DM_INTERNAL_ERROR", 16, "DeviceManagementInternalError");
    EI = new ii("DM_SYNC_DISABLED", 17, "DeviceManagementSyncDisabled");
    EJ = new ii("DM_ADMIN_BLOCKED", 18, "DeviceManagementAdminBlocked");
    EK = new ii("DM_ADMIN_PENDING_APPROVAL", 19, "DeviceManagementAdminPendingApproval");
    EL = new ii("DM_STALE_SYNC_REQUIRED", 20, "DeviceManagementStaleSyncRequired");
    EM = new ii("DM_DEACTIVATED", 21, "DeviceManagementDeactivated");
    EN = new ii("DM_REQUIRED", 22, "DeviceManagementRequired");
    EO = new ii("CLIENT_LOGIN_DISABLED", 23, "ClientLoginDisabled");
    EP = new ii("NEED_PERMISSION", 24, "NeedPermission");
    EQ = new ii("BAD_PASSWORD", 25, "WeakPassword");
    ER = new ii("ALREADY_HAS_GMAIL", 26, "ALREADY_HAS_GMAIL");
    ES = new ii("BAD_REQUEST", 27, "BadRequest");
    ET = new ii("BAD_USERNAME", 28, "BadUsername");
    EU = new ii("LOGIN_FAIL", 29, "LoginFail");
    EV = new ii("NOT_LOGGED_IN", 30, "NotLoggedIn");
    EW = new ii("NO_GMAIL", 31, "NoGmail");
    EX = new ii("REQUEST_DENIED", 32, "RequestDenied");
    EY = new ii("SERVER_ERROR", 33, "ServerError");
    EZ = new ii("USERNAME_UNAVAILABLE", 34, "UsernameUnavailable");
    Fa = new ii("DELETED_GMAIL", 35, "DeletedGmail");
    Fb = new ii("SOCKET_TIMEOUT", 36, "SocketTimeout");
    Fc = new ii("EXISTING_USERNAME", 37, "ExistingUsername");
    Fd = new ii("NEEDS_BROWSER", 38, "NeedsBrowser");
    Fe = new ii("GPLUS_OTHER", 39, "GPlusOther");
    Ff = new ii("GPLUS_NICKNAME", 40, "GPlusNickname");
    Fg = new ii("GPLUS_INVALID_CHAR", 41, "GPlusInvalidChar");
    Fh = new ii("GPLUS_INTERSTITIAL", 42, "GPlusInterstitial");
    Fi = new ii("GPLUS_PROFILE_ERROR", 43, "ProfileUpgradeError");
    Fj = new ii("INVALID_SCOPE", 44, "INVALID_SCOPE");
    Fn = new ii[] { Er, Es, Et, Eu, Ev, Ew, Ex, Ey, Ez, EA, EB, EC, ED, EE, EF, EG, EH, EI, EJ, EK, EL, EM, EN, EO, EP, EQ, ER, ES, ET, EU, EV, EW, EX, EY, EZ, Fa, Fb, Fc, Fd, Fe, Ff, Fg, Fh, Fi, Fj };
  }
  
  private ii(String paramString)
  {
    Fm = paramString;
  }
  
  public String fO()
  {
    return Fm;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ii
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */