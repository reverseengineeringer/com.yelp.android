package android.support.v7.internal.widget;

import android.content.ComponentName;
import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import android.util.Xml;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import org.xmlpull.v1.XmlSerializer;

final class s
  extends AsyncTask<Object, Void, Void>
{
  private s(m paramm) {}
  
  public Void a(Object... paramVarArgs)
  {
    int i = 0;
    List localList = (List)paramVarArgs[0];
    Object localObject2 = (String)paramVarArgs[1];
    for (;;)
    {
      try
      {
        paramVarArgs = m.a(a).openFileOutput((String)localObject2, 0);
        localObject2 = Xml.newSerializer();
        int j;
        q localq;
        ((XmlSerializer)localObject2).endTag(null, "historical-records");
      }
      catch (FileNotFoundException paramVarArgs)
      {
        try
        {
          ((XmlSerializer)localObject2).setOutput(paramVarArgs, null);
          ((XmlSerializer)localObject2).startDocument("UTF-8", Boolean.valueOf(true));
          ((XmlSerializer)localObject2).startTag(null, "historical-records");
          j = localList.size();
          if (i >= j) {
            break label213;
          }
          localq = (q)localList.remove(0);
          ((XmlSerializer)localObject2).startTag(null, "historical-record");
          ((XmlSerializer)localObject2).attribute(null, "activity", a.flattenToString());
          ((XmlSerializer)localObject2).attribute(null, "time", String.valueOf(b));
          ((XmlSerializer)localObject2).attribute(null, "weight", String.valueOf(c));
          ((XmlSerializer)localObject2).endTag(null, "historical-record");
          i += 1;
          continue;
          paramVarArgs = paramVarArgs;
          Log.e(m.d(), "Error writing historical recrod file: " + (String)localObject2, paramVarArgs);
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          Log.e(m.d(), "Error writing historical recrod file: " + m.b(a), localIllegalArgumentException);
          m.a(a, true);
          if (paramVarArgs == null) {
            continue;
          }
          try
          {
            paramVarArgs.close();
            return null;
          }
          catch (IOException paramVarArgs)
          {
            return null;
          }
        }
        catch (IllegalStateException localIllegalStateException)
        {
          Log.e(m.d(), "Error writing historical recrod file: " + m.b(a), localIllegalStateException);
          m.a(a, true);
          if (paramVarArgs == null) {
            continue;
          }
          try
          {
            paramVarArgs.close();
            return null;
          }
          catch (IOException paramVarArgs)
          {
            return null;
          }
        }
        catch (IOException localIOException)
        {
          Log.e(m.d(), "Error writing historical recrod file: " + m.b(a), localIOException);
          m.a(a, true);
          if (paramVarArgs == null) {
            continue;
          }
          try
          {
            paramVarArgs.close();
            return null;
          }
          catch (IOException paramVarArgs)
          {
            return null;
          }
        }
        finally
        {
          m.a(a, true);
          if (paramVarArgs == null) {
            break label446;
          }
        }
        return null;
      }
      label213:
      ((XmlSerializer)localObject2).endDocument();
      m.a(a, true);
      if (paramVarArgs != null) {
        try
        {
          paramVarArgs.close();
          return null;
        }
        catch (IOException paramVarArgs)
        {
          return null;
        }
      }
    }
    try
    {
      paramVarArgs.close();
      label446:
      throw ((Throwable)localObject1);
    }
    catch (IOException paramVarArgs)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */