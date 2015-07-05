.class public Lcom/yelp/android/util/YelpLog;
.super Ljava/lang/Object;
.source "YelpLog.java"


# static fields
.field private static mDelegate:Lcom/yelp/android/util/al;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/yelp/android/util/YelpLog;->mDelegate:Lcom/yelp/android/util/al;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 67
    invoke-static {p1}, Lcom/yelp/android/util/YelpLog;->showDebugToast(Ljava/lang/String;)V

    .line 68
    invoke-static {p0}, Lcom/yelp/android/util/YelpLog;->resolveTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 82
    invoke-static {p1}, Lcom/yelp/android/util/YelpLog;->showDebugToast(Ljava/lang/String;)V

    .line 83
    invoke-static {p0}, Lcom/yelp/android/util/YelpLog;->resolveTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .prologue
    .line 87
    invoke-static {p1}, Lcom/yelp/android/util/YelpLog;->showDebugToast(Ljava/lang/String;)V

    .line 88
    invoke-static {p0}, Lcom/yelp/android/util/YelpLog;->resolveTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static error(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-static {v0, v0, p0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 47
    return-void
.end method

.method public static error(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 43
    return-void
.end method

.method public static error(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/yelp/android/util/YelpLog$YelpLogException;

    invoke-direct {v0}, Lcom/yelp/android/util/YelpLog$YelpLogException;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 39
    return-void
.end method

.method public static error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 50
    invoke-static {p0}, Lcom/yelp/android/util/YelpLog;->resolveTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_0
    invoke-static {v1, v0, p2}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    sget-object v0, Lcom/yelp/android/util/YelpLog;->mDelegate:Lcom/yelp/android/util/al;

    if-eqz v0, :cond_1

    .line 57
    sget-object v0, Lcom/yelp/android/util/YelpLog;->mDelegate:Lcom/yelp/android/util/al;

    invoke-interface {v0, p0, p1, p2}, Lcom/yelp/android/util/al;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 59
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 72
    invoke-static {p1}, Lcom/yelp/android/util/YelpLog;->showDebugToast(Ljava/lang/String;)V

    .line 73
    invoke-static {p0}, Lcom/yelp/android/util/YelpLog;->resolveTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static registerDelegate(Lcom/yelp/android/util/al;)V
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lcom/yelp/android/util/YelpLog;->mDelegate:Lcom/yelp/android/util/al;

    .line 28
    return-void
.end method

.method private static resolveTag(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    if-nez p0, :cond_0

    .line 99
    const-class v0, Lcom/yelp/android/util/YelpLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 103
    :goto_0
    return-object p0

    .line 100
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 101
    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static showDebugToast(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 62
    invoke-static {p1}, Lcom/yelp/android/util/YelpLog;->showDebugToast(Ljava/lang/String;)V

    .line 63
    invoke-static {p0}, Lcom/yelp/android/util/YelpLog;->resolveTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 77
    invoke-static {p1}, Lcom/yelp/android/util/YelpLog;->showDebugToast(Ljava/lang/String;)V

    .line 78
    invoke-static {p0}, Lcom/yelp/android/util/YelpLog;->resolveTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
