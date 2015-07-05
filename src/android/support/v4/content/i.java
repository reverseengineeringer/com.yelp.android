package android.support.v4.content;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;

public class i
  extends a<Cursor>
{
  final r<Cursor>.s f = new s(this);
  Uri g;
  String[] h;
  String i;
  String[] j;
  String k;
  Cursor l;
  
  public i(Context paramContext, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    super(paramContext);
    g = paramUri;
    h = paramArrayOfString1;
    i = paramString1;
    j = paramArrayOfString2;
    k = paramString2;
  }
  
  public void a(Cursor paramCursor)
  {
    if (isReset()) {
      if (paramCursor != null) {
        paramCursor.close();
      }
    }
    Cursor localCursor;
    do
    {
      return;
      localCursor = l;
      l = paramCursor;
      if (isStarted()) {
        super.deliverResult(paramCursor);
      }
    } while ((localCursor == null) || (localCursor == paramCursor) || (localCursor.isClosed()));
    localCursor.close();
  }
  
  public void b(Cursor paramCursor)
  {
    if ((paramCursor != null) && (!paramCursor.isClosed())) {
      paramCursor.close();
    }
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mUri=");
    paramPrintWriter.println(g);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mProjection=");
    paramPrintWriter.println(Arrays.toString(h));
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSelection=");
    paramPrintWriter.println(i);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSelectionArgs=");
    paramPrintWriter.println(Arrays.toString(j));
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSortOrder=");
    paramPrintWriter.println(k);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mCursor=");
    paramPrintWriter.println(l);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mContentChanged=");
    paramPrintWriter.println(mContentChanged);
  }
  
  public Cursor e()
  {
    Cursor localCursor = getContext().getContentResolver().query(g, h, i, j, k);
    if (localCursor != null)
    {
      localCursor.getCount();
      localCursor.registerContentObserver(f);
    }
    return localCursor;
  }
  
  protected void onReset()
  {
    super.onReset();
    onStopLoading();
    if ((l != null) && (!l.isClosed())) {
      l.close();
    }
    l = null;
  }
  
  protected void onStartLoading()
  {
    if (l != null) {
      a(l);
    }
    if ((takeContentChanged()) || (l == null)) {
      forceLoad();
    }
  }
  
  protected void onStopLoading()
  {
    a();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */