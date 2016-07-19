package android.support.v4.app;

import android.os.Bundle;

class aj
{
  static Bundle a(ai.a parama)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("resultKey", parama.a());
    localBundle.putCharSequence("label", parama.b());
    localBundle.putCharSequenceArray("choices", parama.c());
    localBundle.putBoolean("allowFreeFormInput", parama.d());
    localBundle.putBundle("extras", parama.e());
    return localBundle;
  }
  
  static Bundle[] a(ai.a[] paramArrayOfa)
  {
    if (paramArrayOfa == null) {
      return null;
    }
    Bundle[] arrayOfBundle = new Bundle[paramArrayOfa.length];
    int i = 0;
    while (i < paramArrayOfa.length)
    {
      arrayOfBundle[i] = a(paramArrayOfa[i]);
      i += 1;
    }
    return arrayOfBundle;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */