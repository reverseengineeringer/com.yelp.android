package com.google.android.gms.common.stats;

import com.google.android.gms.internal.jb;

public final class zzc
{
  public static jb<Integer> zzanx = jb.a("gms:common:stats:max_num_of_events", Integer.valueOf(100));
  public static jb<Integer> zzany = jb.a("gms:common:stats:max_chunk_size", Integer.valueOf(100));
  
  public static final class zza
  {
    public static jb<String> zzanA = jb.a("gms:common:stats:connections:ignored_calling_processes", "");
    public static jb<String> zzanB = jb.a("gms:common:stats:connections:ignored_calling_services", "");
    public static jb<String> zzanC = jb.a("gms:common:stats:connections:ignored_target_processes", "");
    public static jb<String> zzanD = jb.a("gms:common:stats:connections:ignored_target_services", "com.google.android.gms.auth.GetToken");
    public static jb<Long> zzanE = jb.a("gms:common:stats:connections:time_out_duration", Long.valueOf(600000L));
    public static jb<Integer> zzanz = jb.a("gms:common:stats:connections:level", Integer.valueOf(zzd.LOG_LEVEL_OFF));
  }
  
  public static final class zzb
  {
    public static jb<Long> zzanE = jb.a("gms:common:stats:wakelocks:time_out_duration", Long.valueOf(600000L));
    public static jb<Integer> zzanz = jb.a("gms:common:stats:wakeLocks:level", Integer.valueOf(zzd.LOG_LEVEL_OFF));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.stats.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */