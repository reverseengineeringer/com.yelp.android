package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Fragment;
import com.bumptech.glide.j;

@TargetApi(11)
public class RequestManagerFragment
  extends Fragment
{
  private final a a;
  private j b;
  
  public RequestManagerFragment()
  {
    this(new a());
  }
  
  @SuppressLint({"ValidFragment"})
  RequestManagerFragment(a parama)
  {
    a = parama;
  }
  
  a a()
  {
    return a;
  }
  
  public void a(j paramj)
  {
    b = paramj;
  }
  
  public j b()
  {
    return b;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    a.c();
  }
  
  public void onStart()
  {
    super.onStart();
    a.a();
  }
  
  public void onStop()
  {
    super.onStop();
    a.b();
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.manager.RequestManagerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */