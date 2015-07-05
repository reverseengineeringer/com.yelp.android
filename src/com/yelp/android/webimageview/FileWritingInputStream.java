package com.yelp.android.webimageview;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class FileWritingInputStream
  extends FilterInputStream
{
  private static final int BUFFER_SIZE = 4096;
  final FileDescriptor mFd;
  final OutputStream mOutput;
  
  public FileWritingInputStream(InputStream paramInputStream, FileOutputStream paramFileOutputStream)
  {
    super(new BufferedInputStream(paramInputStream, 4096));
    try
    {
      mFd = paramFileOutputStream.getFD();
      mOutput = new BufferedOutputStream(paramFileOutputStream, 4096);
      return;
    }
    catch (IOException paramInputStream)
    {
      throw new FileNotFoundException("Could not get file descriptor for given file.");
    }
  }
  
  public void close()
  {
    super.close();
    mOutput.flush();
    mFd.sync();
    mOutput.close();
  }
  
  public void mark(int paramInt) {}
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
  {
    int i = super.read();
    if (i >= 0) {
      mOutput.write(i);
    }
    return i;
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramInt2 = super.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt2 >= 0) {
      mOutput.write(paramArrayOfByte, paramInt1, paramInt2);
    }
    return paramInt2;
  }
  
  public void reset()
  {
    try
    {
      throw new IOException("Reset not supported by " + getClass().getSimpleName());
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.webimageview.FileWritingInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */