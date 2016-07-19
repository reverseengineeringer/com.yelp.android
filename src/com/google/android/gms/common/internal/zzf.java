package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.lg;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class zzf
{
  private final Account zzTI;
  private final String zzUW;
  private final Set<Scope> zzagh;
  private final int zzagj;
  private final View zzagk;
  private final String zzagl;
  private final Set<Scope> zzalb;
  private final Map<Api<?>, zza> zzalc;
  private final lg zzald;
  private Integer zzale;
  
  public zzf(Account paramAccount, Set<Scope> paramSet, Map<Api<?>, zza> paramMap, int paramInt, View paramView, String paramString1, String paramString2, lg paramlg)
  {
    zzTI = paramAccount;
    if (paramSet == null) {}
    for (paramAccount = Collections.EMPTY_SET;; paramAccount = Collections.unmodifiableSet(paramSet))
    {
      zzagh = paramAccount;
      paramAccount = paramMap;
      if (paramMap == null) {
        paramAccount = Collections.EMPTY_MAP;
      }
      zzalc = paramAccount;
      zzagk = paramView;
      zzagj = paramInt;
      zzUW = paramString1;
      zzagl = paramString2;
      zzald = paramlg;
      paramAccount = new HashSet(zzagh);
      paramSet = zzalc.values().iterator();
      while (paramSet.hasNext()) {
        paramAccount.addAll(nextzzXf);
      }
    }
    zzalb = Collections.unmodifiableSet(paramAccount);
  }
  
  public static zzf zzat(Context paramContext)
  {
    return new GoogleApiClient.Builder(paramContext).zzoY();
  }
  
  public Account getAccount()
  {
    return zzTI;
  }
  
  @Deprecated
  public String getAccountName()
  {
    if (zzTI != null) {
      return zzTI.name;
    }
    return null;
  }
  
  public void zza(Integer paramInteger)
  {
    zzale = paramInteger;
  }
  
  public Set<Scope> zzb(Api<?> paramApi)
  {
    paramApi = (zza)zzalc.get(paramApi);
    if ((paramApi == null) || (zzXf.isEmpty())) {
      return zzagh;
    }
    HashSet localHashSet = new HashSet(zzagh);
    localHashSet.addAll(zzXf);
    return localHashSet;
  }
  
  public Account zzqq()
  {
    if (zzTI != null) {
      return zzTI;
    }
    return new Account("<<default account>>", "com.google");
  }
  
  public int zzqr()
  {
    return zzagj;
  }
  
  public Set<Scope> zzqs()
  {
    return zzagh;
  }
  
  public Set<Scope> zzqt()
  {
    return zzalb;
  }
  
  public Map<Api<?>, zza> zzqu()
  {
    return zzalc;
  }
  
  public String zzqv()
  {
    return zzUW;
  }
  
  public String zzqw()
  {
    return zzagl;
  }
  
  public View zzqx()
  {
    return zzagk;
  }
  
  public lg zzqy()
  {
    return zzald;
  }
  
  public Integer zzqz()
  {
    return zzale;
  }
  
  public static final class zza
  {
    public final Set<Scope> zzXf;
    public final boolean zzalf;
    
    public zza(Set<Scope> paramSet, boolean paramBoolean)
    {
      zzx.zzz(paramSet);
      zzXf = Collections.unmodifiableSet(paramSet);
      zzalf = paramBoolean;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */