package pl.droidsonroids.gif;

abstract class l
  implements Runnable
{
  final c c;
  
  l(c paramc)
  {
    c = paramc;
  }
  
  abstract void a();
  
  public final void run()
  {
    try
    {
      if (!c.b()) {
        a();
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      Thread.UncaughtExceptionHandler localUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
      if (localUncaughtExceptionHandler != null) {
        localUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), localThrowable);
      }
      throw localThrowable;
    }
  }
}

/* Location:
 * Qualified Name:     pl.droidsonroids.gif.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */