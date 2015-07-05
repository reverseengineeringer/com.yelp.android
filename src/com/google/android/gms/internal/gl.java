package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@ey
public final class gl
{
  private final Context mContext;
  private int mState = 0;
  private final float rz;
  private String wH;
  private float wI;
  private float wJ;
  private float wK;
  
  public gl(Context paramContext)
  {
    mContext = paramContext;
    rz = getResourcesgetDisplayMetricsdensity;
  }
  
  public gl(Context paramContext, String paramString)
  {
    this(paramContext);
    wH = paramString;
  }
  
  private void a(int paramInt, float paramFloat1, float paramFloat2)
  {
    if (paramInt == 0)
    {
      mState = 0;
      wI = paramFloat1;
      wJ = paramFloat2;
      wK = paramFloat2;
    }
    label24:
    label224:
    do
    {
      do
      {
        break label24;
        do
        {
          return;
        } while (mState == -1);
        if (paramInt != 2) {
          break;
        }
        if (paramFloat2 > wJ) {
          wJ = paramFloat2;
        }
        while (wJ - wK > 30.0F * rz)
        {
          mState = -1;
          return;
          if (paramFloat2 < wK) {
            wK = paramFloat2;
          }
        }
        if ((mState == 0) || (mState == 2)) {
          if (paramFloat1 - wI >= 50.0F * rz) {
            wI = paramFloat1;
          }
        }
        for (mState += 1;; mState += 1)
        {
          do
          {
            if ((mState != 1) && (mState != 3)) {
              break label224;
            }
            if (paramFloat1 <= wI) {
              break;
            }
            wI = paramFloat1;
            return;
          } while (((mState != 1) && (mState != 3)) || (paramFloat1 - wI > -50.0F * rz));
          wI = paramFloat1;
        }
      } while ((mState != 2) || (paramFloat1 >= wI));
      wI = paramFloat1;
      return;
    } while ((paramInt != 1) || (mState != 4));
    showDialog();
  }
  
  private void showDialog()
  {
    Object localObject2;
    Object localObject1;
    if (!TextUtils.isEmpty(wH))
    {
      localObject2 = new Uri.Builder().encodedQuery(wH).build();
      localObject1 = new StringBuilder();
      localObject2 = gi.c((Uri)localObject2);
      Iterator localIterator = ((Map)localObject2).keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        ((StringBuilder)localObject1).append(str).append(" = ").append((String)((Map)localObject2).get(str)).append("\n\n");
      }
      localObject1 = ((StringBuilder)localObject1).toString().trim();
      if (TextUtils.isEmpty((CharSequence)localObject1)) {}
    }
    for (;;)
    {
      localObject2 = new AlertDialog.Builder(mContext);
      ((AlertDialog.Builder)localObject2).setMessage((CharSequence)localObject1);
      ((AlertDialog.Builder)localObject2).setTitle("Ad Information");
      ((AlertDialog.Builder)localObject2).setPositiveButton("Share", new gl.1(this, (String)localObject1));
      ((AlertDialog.Builder)localObject2).setNegativeButton("Close", new gl.2(this));
      ((AlertDialog.Builder)localObject2).create().show();
      return;
      localObject1 = "No debug information";
      continue;
      localObject1 = "No debug information";
    }
  }
  
  public void Q(String paramString)
  {
    wH = paramString;
  }
  
  public void c(MotionEvent paramMotionEvent)
  {
    int j = paramMotionEvent.getHistorySize();
    int i = 0;
    while (i < j)
    {
      a(paramMotionEvent.getActionMasked(), paramMotionEvent.getHistoricalX(0, i), paramMotionEvent.getHistoricalY(0, i));
      i += 1;
    }
    a(paramMotionEvent.getActionMasked(), paramMotionEvent.getX(), paramMotionEvent.getY());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */