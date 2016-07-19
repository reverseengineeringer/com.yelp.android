package android.support.v4.view;

import android.view.View;
import java.lang.reflect.Field;
import java.util.WeakHashMap;

class ai$e
  extends ai.d
{
  static Field b;
  static boolean c = false;
  
  public void a(View paramView, a parama)
  {
    if (parama == null) {}
    for (parama = null;; parama = parama.a())
    {
      an.a(paramView, parama);
      return;
    }
  }
  
  public void a(View paramView, boolean paramBoolean)
  {
    an.a(paramView, paramBoolean);
  }
  
  public boolean a(View paramView, int paramInt)
  {
    return an.a(paramView, paramInt);
  }
  
  /* Error */
  public boolean b(View paramView)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: getstatic 15	android/support/v4/view/ai$e:c	Z
    //   5: ifeq +5 -> 10
    //   8: iconst_0
    //   9: ireturn
    //   10: getstatic 42	android/support/v4/view/ai$e:b	Ljava/lang/reflect/Field;
    //   13: ifnonnull +20 -> 33
    //   16: ldc 44
    //   18: ldc 46
    //   20: invokevirtual 52	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   23: putstatic 42	android/support/v4/view/ai$e:b	Ljava/lang/reflect/Field;
    //   26: getstatic 42	android/support/v4/view/ai$e:b	Ljava/lang/reflect/Field;
    //   29: iconst_1
    //   30: invokevirtual 58	java/lang/reflect/Field:setAccessible	(Z)V
    //   33: getstatic 42	android/support/v4/view/ai$e:b	Ljava/lang/reflect/Field;
    //   36: aload_1
    //   37: invokevirtual 62	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   40: astore_1
    //   41: aload_1
    //   42: ifnull +12 -> 54
    //   45: iload_2
    //   46: ireturn
    //   47: astore_1
    //   48: iconst_1
    //   49: putstatic 15	android/support/v4/view/ai$e:c	Z
    //   52: iconst_0
    //   53: ireturn
    //   54: iconst_0
    //   55: istore_2
    //   56: goto -11 -> 45
    //   59: astore_1
    //   60: iconst_1
    //   61: putstatic 15	android/support/v4/view/ai$e:c	Z
    //   64: iconst_0
    //   65: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	e
    //   0	66	1	paramView	View
    //   1	55	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   16	33	47	java/lang/Throwable
    //   33	41	59	java/lang/Throwable
  }
  
  public boolean b(View paramView, int paramInt)
  {
    return an.b(paramView, paramInt);
  }
  
  public az u(View paramView)
  {
    if (a == null) {
      a = new WeakHashMap();
    }
    az localaz2 = (az)a.get(paramView);
    az localaz1 = localaz2;
    if (localaz2 == null)
    {
      localaz1 = new az(paramView);
      a.put(paramView, localaz1);
    }
    return localaz1;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ai.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */