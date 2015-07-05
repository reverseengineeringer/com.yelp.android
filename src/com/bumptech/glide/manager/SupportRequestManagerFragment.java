package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.support.v4.app.Fragment;
import com.bumptech.glide.j;

public class SupportRequestManagerFragment
  extends Fragment
{
  private j a;
  private final a b;
  
  public SupportRequestManagerFragment()
  {
    this(new a());
  }
  
  @SuppressLint({"ValidFragment"})
  public SupportRequestManagerFragment(a parama)
  {
    b = parama;
  }
  
  a a()
  {
    return b;
  }
  
  public void a(j paramj)
  {
    a = paramj;
  }
  
  public j b()
  {
    return a;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    b.c();
  }
  
  public void onStart()
  {
    super.onStart();
    b.a();
  }
  
  public void onStop()
  {
    super.onStop();
    b.b();
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.manager.SupportRequestManagerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */