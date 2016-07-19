package android.support.multidex;

import java.io.File;
import java.io.FileFilter;

final class b$1
  implements FileFilter
{
  b$1(String paramString) {}
  
  public boolean accept(File paramFile)
  {
    return !paramFile.getName().startsWith(a);
  }
}

/* Location:
 * Qualified Name:     android.support.multidex.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */