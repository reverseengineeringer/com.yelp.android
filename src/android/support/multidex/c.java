package android.support.multidex;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.zip.CRC32;
import java.util.zip.ZipException;

final class c
{
  static long a(File paramFile)
    throws IOException
  {
    paramFile = new RandomAccessFile(paramFile, "r");
    try
    {
      long l = a(paramFile, a(paramFile));
      return l;
    }
    finally
    {
      paramFile.close();
    }
  }
  
  static long a(RandomAccessFile paramRandomAccessFile, a parama)
    throws IOException
  {
    CRC32 localCRC32 = new CRC32();
    long l = b;
    paramRandomAccessFile.seek(a);
    int i = (int)Math.min(16384L, l);
    parama = new byte['䀀'];
    for (i = paramRandomAccessFile.read(parama, 0, i);; i = paramRandomAccessFile.read(parama, 0, (int)Math.min(16384L, l))) {
      if (i != -1)
      {
        localCRC32.update(parama, 0, i);
        l -= i;
        if (l != 0L) {}
      }
      else
      {
        return localCRC32.getValue();
      }
    }
  }
  
  static a a(RandomAccessFile paramRandomAccessFile)
    throws IOException, ZipException
  {
    long l1 = 0L;
    long l2 = paramRandomAccessFile.length() - 22L;
    if (l2 < 0L) {
      throw new ZipException("File too short to be a zip file: " + paramRandomAccessFile.length());
    }
    long l3 = l2 - 65536L;
    if (l3 < 0L) {}
    for (;;)
    {
      int i = Integer.reverseBytes(101010256);
      do
      {
        paramRandomAccessFile.seek(l2);
        if (paramRandomAccessFile.readInt() == i)
        {
          paramRandomAccessFile.skipBytes(2);
          paramRandomAccessFile.skipBytes(2);
          paramRandomAccessFile.skipBytes(2);
          paramRandomAccessFile.skipBytes(2);
          a locala = new a();
          b = (Integer.reverseBytes(paramRandomAccessFile.readInt()) & 0xFFFFFFFF);
          a = (Integer.reverseBytes(paramRandomAccessFile.readInt()) & 0xFFFFFFFF);
          return locala;
        }
        l3 = l2 - 1L;
        l2 = l3;
      } while (l3 >= l1);
      throw new ZipException("End Of Central Directory signature not found");
      l1 = l3;
    }
  }
  
  static class a
  {
    long a;
    long b;
  }
}

/* Location:
 * Qualified Name:     android.support.multidex.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */