package rx.exceptions;

import com.yelp.android.dk.d;
import java.util.HashSet;
import java.util.Set;

public final class OnErrorThrowable
  extends RuntimeException
{
  private static final long serialVersionUID = -569558213262703934L;
  private final boolean hasValue;
  private final Object value;
  
  private OnErrorThrowable(Throwable paramThrowable)
  {
    super(paramThrowable);
    hasValue = false;
    value = null;
  }
  
  private OnErrorThrowable(Throwable paramThrowable, Object paramObject)
  {
    super(paramThrowable);
    hasValue = true;
    value = paramObject;
  }
  
  public static Throwable addValueAsLastCause(Throwable paramThrowable, Object paramObject)
  {
    Object localObject = paramThrowable;
    if (paramThrowable == null) {
      localObject = new NullPointerException();
    }
    paramThrowable = a.b((Throwable)localObject);
    if ((paramThrowable != null) && ((paramThrowable instanceof OnNextValue)) && (((OnNextValue)paramThrowable).getValue() == paramObject)) {
      return (Throwable)localObject;
    }
    a.a((Throwable)localObject, new OnNextValue(paramObject));
    return (Throwable)localObject;
  }
  
  public static OnErrorThrowable from(Throwable paramThrowable)
  {
    Object localObject = paramThrowable;
    if (paramThrowable == null) {
      localObject = new NullPointerException();
    }
    paramThrowable = a.b((Throwable)localObject);
    if ((paramThrowable instanceof OnNextValue)) {
      return new OnErrorThrowable((Throwable)localObject, ((OnNextValue)paramThrowable).getValue());
    }
    return new OnErrorThrowable((Throwable)localObject);
  }
  
  public Object getValue()
  {
    return value;
  }
  
  public boolean isValueNull()
  {
    return hasValue;
  }
  
  public static class OnNextValue
    extends RuntimeException
  {
    private static final long serialVersionUID = -3454462756050397899L;
    private final Object value;
    
    public OnNextValue(Object paramObject)
    {
      super();
      value = paramObject;
    }
    
    static String renderValue(Object paramObject)
    {
      if (paramObject == null) {
        return "null";
      }
      if (a.a.contains(paramObject.getClass())) {
        return paramObject.toString();
      }
      if ((paramObject instanceof String)) {
        return (String)paramObject;
      }
      if ((paramObject instanceof Enum)) {
        return ((Enum)paramObject).name();
      }
      String str = d.a().b().a(paramObject);
      if (str != null) {
        return str;
      }
      return paramObject.getClass().getName() + ".class";
    }
    
    public Object getValue()
    {
      return value;
    }
    
    private static final class a
    {
      static final Set<Class<?>> a = ;
      
      private static Set<Class<?>> a()
      {
        HashSet localHashSet = new HashSet();
        localHashSet.add(Boolean.class);
        localHashSet.add(Character.class);
        localHashSet.add(Byte.class);
        localHashSet.add(Short.class);
        localHashSet.add(Integer.class);
        localHashSet.add(Long.class);
        localHashSet.add(Float.class);
        localHashSet.add(Double.class);
        return localHashSet;
      }
    }
  }
}

/* Location:
 * Qualified Name:     rx.exceptions.OnErrorThrowable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */