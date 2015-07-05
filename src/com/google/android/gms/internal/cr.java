package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@ey
public final class cr
{
  public final long qA;
  public int qB;
  public int qC;
  public final List<cq> qu;
  public final long qv;
  public final List<String> qw;
  public final List<String> qx;
  public final List<String> qy;
  public final String qz;
  
  public cr(String paramString)
  {
    paramString = new JSONObject(paramString);
    if (gr.v(2)) {
      gr.V("Mediation Response JSON: " + paramString.toString(2));
    }
    JSONArray localJSONArray = paramString.getJSONArray("ad_networks");
    ArrayList localArrayList = new ArrayList(localJSONArray.length());
    int j = -1;
    int i = 0;
    while (i < localJSONArray.length())
    {
      cq localcq = new cq(localJSONArray.getJSONObject(i));
      localArrayList.add(localcq);
      int k = j;
      if (j < 0)
      {
        k = j;
        if (a(localcq)) {
          k = i;
        }
      }
      i += 1;
      j = k;
    }
    qB = j;
    qC = localJSONArray.length();
    qu = Collections.unmodifiableList(localArrayList);
    qz = paramString.getString("qdata");
    paramString = paramString.optJSONObject("settings");
    if (paramString != null)
    {
      qv = paramString.optLong("ad_network_timeout_millis", -1L);
      qw = cw.a(paramString, "click_urls");
      qx = cw.a(paramString, "imp_urls");
      qy = cw.a(paramString, "nofill_urls");
      long l = paramString.optLong("refresh", -1L);
      if (l > 0L) {}
      for (l *= 1000L;; l = -1L)
      {
        qA = l;
        return;
      }
    }
    qv = -1L;
    qw = null;
    qx = null;
    qy = null;
    qA = -1L;
  }
  
  private boolean a(cq paramcq)
  {
    paramcq = qp.iterator();
    while (paramcq.hasNext()) {
      if (((String)paramcq.next()).equals("com.google.ads.mediation.admob.AdMobAdapter")) {
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */