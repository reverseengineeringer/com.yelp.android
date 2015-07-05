package android.support.v7.app;

class f
  implements Runnable
{
  f(ActionBarActivityDelegateBase paramActionBarActivityDelegateBase) {}
  
  public void run()
  {
    if ((ActionBarActivityDelegateBase.a(a) & 0x1) != 0) {
      ActionBarActivityDelegateBase.a(a, 0);
    }
    if ((ActionBarActivityDelegateBase.a(a) & 0x100) != 0) {
      ActionBarActivityDelegateBase.a(a, 8);
    }
    ActionBarActivityDelegateBase.a(a, false);
    ActionBarActivityDelegateBase.b(a, 0);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */