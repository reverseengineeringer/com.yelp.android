package com.google.android.gms.dynamic;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.util.LinkedList;

public abstract class a<T extends LifecycleDelegate>
{
  private T Tu;
  private Bundle Tv;
  private LinkedList<a.a> Tw;
  private final f<T> Tx = new a.1(this);
  
  private void a(Bundle paramBundle, a.a parama)
  {
    if (Tu != null)
    {
      parama.b(Tu);
      return;
    }
    if (Tw == null) {
      Tw = new LinkedList();
    }
    Tw.add(parama);
    if (paramBundle != null)
    {
      if (Tv != null) {
        break label76;
      }
      Tv = ((Bundle)paramBundle.clone());
    }
    for (;;)
    {
      a(Tx);
      return;
      label76:
      Tv.putAll(paramBundle);
    }
  }
  
  public static void b(FrameLayout paramFrameLayout)
  {
    Context localContext = paramFrameLayout.getContext();
    int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(localContext);
    String str2 = GooglePlayServicesUtil.b(localContext, i);
    String str1 = GooglePlayServicesUtil.c(localContext, i);
    LinearLayout localLinearLayout = new LinearLayout(paramFrameLayout.getContext());
    localLinearLayout.setOrientation(1);
    localLinearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
    paramFrameLayout.addView(localLinearLayout);
    paramFrameLayout = new TextView(paramFrameLayout.getContext());
    paramFrameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
    paramFrameLayout.setText(str2);
    localLinearLayout.addView(paramFrameLayout);
    if (str1 != null)
    {
      paramFrameLayout = new Button(localContext);
      paramFrameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
      paramFrameLayout.setText(str1);
      localLinearLayout.addView(paramFrameLayout);
      paramFrameLayout.setOnClickListener(new a.5(localContext, i));
    }
  }
  
  private void cG(int paramInt)
  {
    while ((!Tw.isEmpty()) && (((a.a)Tw.getLast()).getState() >= paramInt)) {
      Tw.removeLast();
    }
  }
  
  protected void a(FrameLayout paramFrameLayout)
  {
    b(paramFrameLayout);
  }
  
  protected abstract void a(f<T> paramf);
  
  public T je()
  {
    return Tu;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    a(paramBundle, new a.3(this, paramBundle));
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    FrameLayout localFrameLayout = new FrameLayout(paramLayoutInflater.getContext());
    a(paramBundle, new a.4(this, localFrameLayout, paramLayoutInflater, paramViewGroup, paramBundle));
    if (Tu == null) {
      a(localFrameLayout);
    }
    return localFrameLayout;
  }
  
  public void onDestroy()
  {
    if (Tu != null)
    {
      Tu.onDestroy();
      return;
    }
    cG(1);
  }
  
  public void onDestroyView()
  {
    if (Tu != null)
    {
      Tu.onDestroyView();
      return;
    }
    cG(2);
  }
  
  public void onInflate(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    a(paramBundle2, new a.2(this, paramActivity, paramBundle1, paramBundle2));
  }
  
  public void onLowMemory()
  {
    if (Tu != null) {
      Tu.onLowMemory();
    }
  }
  
  public void onPause()
  {
    if (Tu != null)
    {
      Tu.onPause();
      return;
    }
    cG(5);
  }
  
  public void onResume()
  {
    a(null, new a.7(this));
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (Tu != null) {
      Tu.onSaveInstanceState(paramBundle);
    }
    while (Tv == null) {
      return;
    }
    paramBundle.putAll(Tv);
  }
  
  public void onStart()
  {
    a(null, new a.6(this));
  }
  
  public void onStop()
  {
    if (Tu != null)
    {
      Tu.onStop();
      return;
    }
    cG(4);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.dynamic.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */