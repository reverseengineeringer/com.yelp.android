package rx.exceptions;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public final class CompositeException
  extends RuntimeException
{
  private static final long serialVersionUID = 3026362227162912146L;
  private Throwable cause = null;
  private final List<Throwable> exceptions;
  private final String message;
  
  @Deprecated
  public CompositeException(String paramString, Collection<? extends Throwable> paramCollection)
  {
    paramString = new LinkedHashSet();
    ArrayList localArrayList = new ArrayList();
    if (paramCollection != null)
    {
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext())
      {
        Throwable localThrowable = (Throwable)paramCollection.next();
        if ((localThrowable instanceof CompositeException)) {
          paramString.addAll(((CompositeException)localThrowable).getExceptions());
        } else if (localThrowable != null) {
          paramString.add(localThrowable);
        } else {
          paramString.add(new NullPointerException());
        }
      }
    }
    paramString.add(new NullPointerException());
    localArrayList.addAll(paramString);
    exceptions = Collections.unmodifiableList(localArrayList);
    message = (exceptions.size() + " exceptions occurred. ");
  }
  
  public CompositeException(Collection<? extends Throwable> paramCollection)
  {
    this(null, paramCollection);
  }
  
  public CompositeException(Throwable... paramVarArgs)
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    ArrayList localArrayList = new ArrayList();
    if (paramVarArgs != null)
    {
      int j = paramVarArgs.length;
      int i = 0;
      if (i < j)
      {
        Throwable localThrowable = paramVarArgs[i];
        if ((localThrowable instanceof CompositeException)) {
          localLinkedHashSet.addAll(((CompositeException)localThrowable).getExceptions());
        }
        for (;;)
        {
          i += 1;
          break;
          if (localThrowable != null) {
            localLinkedHashSet.add(localThrowable);
          } else {
            localLinkedHashSet.add(new NullPointerException());
          }
        }
      }
    }
    else
    {
      localLinkedHashSet.add(new NullPointerException());
    }
    localArrayList.addAll(localLinkedHashSet);
    exceptions = Collections.unmodifiableList(localArrayList);
    message = (exceptions.size() + " exceptions occurred. ");
  }
  
  private List<Throwable> a(Throwable paramThrowable)
  {
    ArrayList localArrayList = new ArrayList();
    Throwable localThrowable = paramThrowable.getCause();
    paramThrowable = localThrowable;
    if (localThrowable == null) {
      return localArrayList;
    }
    do
    {
      paramThrowable = paramThrowable.getCause();
      localArrayList.add(paramThrowable);
    } while (paramThrowable.getCause() != null);
    return localArrayList;
  }
  
  private void a(StringBuilder paramStringBuilder, Throwable paramThrowable, String paramString)
  {
    paramStringBuilder.append(paramString).append(paramThrowable).append("\n");
    paramString = paramThrowable.getStackTrace();
    int j = paramString.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = paramString[i];
      paramStringBuilder.append("\t\tat ").append(localObject).append("\n");
      i += 1;
    }
    if (paramThrowable.getCause() != null)
    {
      paramStringBuilder.append("\tCaused by: ");
      a(paramStringBuilder, paramThrowable.getCause(), "");
    }
  }
  
  private void a(a parama)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this).append("\n");
    ??? = getStackTrace();
    int j = ???.length;
    int i = 0;
    Object localObject2;
    while (i < j)
    {
      localObject2 = ???[i];
      localStringBuilder.append("\tat ").append(localObject2).append("\n");
      i += 1;
    }
    ??? = exceptions.iterator();
    i = 1;
    while (((Iterator)???).hasNext())
    {
      localObject2 = (Throwable)((Iterator)???).next();
      localStringBuilder.append("  ComposedException ").append(i).append(" :").append("\n");
      a(localStringBuilder, (Throwable)localObject2, "\t");
      i += 1;
    }
    synchronized (parama.a())
    {
      parama.a(localStringBuilder.toString());
      return;
    }
  }
  
  public Throwable getCause()
  {
    CompositeExceptionCausalChain localCompositeExceptionCausalChain;
    for (;;)
    {
      try
      {
        if (cause != null) {
          break label184;
        }
        localCompositeExceptionCausalChain = new CompositeExceptionCausalChain();
        HashSet localHashSet = new HashSet();
        Iterator localIterator1 = exceptions.iterator();
        localObject3 = localCompositeExceptionCausalChain;
        if (!localIterator1.hasNext()) {
          break label179;
        }
        Object localObject1 = (Throwable)localIterator1.next();
        if (localHashSet.contains(localObject1)) {
          continue;
        }
        localHashSet.add(localObject1);
        Iterator localIterator2 = a((Throwable)localObject1).iterator();
        if (!localIterator2.hasNext()) {
          break label157;
        }
        Throwable localThrowable3 = (Throwable)localIterator2.next();
        if (localHashSet.contains(localThrowable3))
        {
          localObject1 = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
          continue;
        }
        localHashSet.add(localThrowable3);
      }
      finally {}
      continue;
      try
      {
        label157:
        ((Throwable)localObject3).initCause(localThrowable1);
        localObject3 = ((Throwable)localObject3).getCause();
        localObject2 = localObject3;
      }
      catch (Throwable localThrowable2)
      {
        for (;;) {}
      }
      Object localObject3 = localObject2;
    }
    label179:
    cause = localCompositeExceptionCausalChain;
    label184:
    Object localObject2 = cause;
    return (Throwable)localObject2;
  }
  
  public List<Throwable> getExceptions()
  {
    return exceptions;
  }
  
  public String getMessage()
  {
    return message;
  }
  
  public void printStackTrace()
  {
    printStackTrace(System.err);
  }
  
  public void printStackTrace(PrintStream paramPrintStream)
  {
    a(new b(paramPrintStream));
  }
  
  public void printStackTrace(PrintWriter paramPrintWriter)
  {
    a(new c(paramPrintWriter));
  }
  
  static final class CompositeExceptionCausalChain
    extends RuntimeException
  {
    static String MESSAGE = "Chain of Causes for CompositeException In Order Received =>";
    private static final long serialVersionUID = 3875212506787802066L;
    
    public String getMessage()
    {
      return MESSAGE;
    }
  }
  
  private static abstract class a
  {
    abstract Object a();
    
    abstract void a(Object paramObject);
  }
  
  private static class b
    extends CompositeException.a
  {
    private final PrintStream a;
    
    b(PrintStream paramPrintStream)
    {
      super();
      a = paramPrintStream;
    }
    
    Object a()
    {
      return a;
    }
    
    void a(Object paramObject)
    {
      a.println(paramObject);
    }
  }
  
  private static class c
    extends CompositeException.a
  {
    private final PrintWriter a;
    
    c(PrintWriter paramPrintWriter)
    {
      super();
      a = paramPrintWriter;
    }
    
    Object a()
    {
      return a;
    }
    
    void a(Object paramObject)
    {
      a.println(paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     rx.exceptions.CompositeException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */