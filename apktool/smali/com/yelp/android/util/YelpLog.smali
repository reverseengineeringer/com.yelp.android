.class public Lcom/yelp/android/util/YelpLog;
.super Ljava/lang/Object;
.source "YelpLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/util/YelpLog$YelpLogException;,
        Lcom/yelp/android/util/YelpLog$a;
    }
.end annotation


# static fields
.field private static mDelegate:Lcom/yelp/android/util/YelpLog$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/yelp/android/util/YelpLog;->mDelegate:Lcom/yelp/android/util/YelpLog$a;

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
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 122
    invoke-static {p1}, Lcom/yelp/android/util/YelpLog;->showDebugToast(Ljava/lang/String;)V

    .line 123
    invoke-static {p0}, Lcom/yelp/android/util/YelpLog;->resolveTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .prologue
    .line 127
    invoke-static {p1}, Lcom/yelp/android/util/YelpLog;->showDebugToast(Ljava/lang/String;)V

    .line 128
    invoke-static {p0}, Lcom/yelp/android/util/YelpLog;->resolveTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public static registerDelegate(Lcom/yelp/android/util/YelpLog$a;)V
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lcom/yelp/android/util/YelpLog;->mDelegate:Lcom/yelp/android/util/YelpLog$a;

    .line 28
    return-void
.end method

.method public static remoteBreadcrumb(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    const-string/jumbo v0, "Breadcrumb"

    invoke-static {v0, p0}, Lcom/yelp/android/util/YelpLog;->d(Ljava/lang/Object;Ljava/lang/String;)I

    .line 86
    sget-object v0, Lcom/yelp/android/util/YelpLog;->mDelegate:Lcom/yelp/android/util/YelpLog$a;

    invoke-interface {v0, p0}, Lcom/yelp/android/util/YelpLog$a;->remoteBreadcrumb(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static remoteError(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    new-instance v1, Lcom/yelp/android/util/YelpLog$YelpLogException;

    invoke-direct {v1, p1}, Lcom/yelp/android/util/YelpLog$YelpLogException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    return-void
.end method

.method public static remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 70
    invoke-static {p0}, Lcom/yelp/android/util/YelpLog;->resolveTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
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

    .line 75
    :cond_0
    invoke-static {v1, v0, p2}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    sget-object v0, Lcom/yelp/android/util/YelpLog;->mDelegate:Lcom/yelp/android/util/YelpLog$a;

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Lcom/yelp/android/util/YelpLog;->mDelegate:Lcom/yelp/android/util/YelpLog$a;

    invoke-interface {v0, p0, p1, p2}, Lcom/yelp/android/util/YelpLog$a;->remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    :cond_1
    return-void
.end method

.method public static remoteError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method public static remoteError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-static {v0, v0, p0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public static removeTopOfStackTrace(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 47
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v2, v0, [Ljava/lang/StackTraceElement;

    .line 48
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 49
    add-int/lit8 v3, v0, 0x1

    aget-object v3, v1, v3

    aput-object v3, v2, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 52
    return-void
.end method

.method private static resolveTag(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    if-nez p0, :cond_0

    .line 139
    const-class v0, Lcom/yelp/android/util/YelpLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 143
    :goto_0
    return-object p0

    .line 140
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 141
    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 143
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
    .line 135
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 117
    invoke-static {p1}, Lcom/yelp/android/util/YelpLog;->showDebugToast(Ljava/lang/String;)V

    .line 118
    invoke-static {p0}, Lcom/yelp/android/util/YelpLog;->resolveTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
