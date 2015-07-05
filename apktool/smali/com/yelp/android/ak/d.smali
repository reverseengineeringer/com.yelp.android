.class public Lcom/yelp/android/ak/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static c:Z

.field private static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/yelp/android/ak/d;->c:Z

    const-string/jumbo v0, "com.google.android.gms"

    sput-object v0, Lcom/yelp/android/ak/d;->a:Ljava/lang/String;

    const-string/jumbo v0, "com.google.android.gms.ads.identifier.service.START"

    sput-object v0, Lcom/yelp/android/ak/d;->b:Ljava/lang/String;

    sput-boolean v1, Lcom/yelp/android/ak/d;->d:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-gt v2, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.android.vending"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lcom/yelp/android/ak/f;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/yelp/android/ak/f;-><init>(Lcom/yelp/android/ak/e;)V

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/yelp/android/ak/d;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/yelp/android/ak/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v2, Lcom/yelp/android/ak/d;->c:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    new-instance v2, Lcom/yelp/android/ak/f;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/yelp/android/ak/f;-><init>(Lcom/yelp/android/ak/e;)V

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/yelp/android/ak/d;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/yelp/android/ak/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_4

    :try_start_0
    new-instance v3, Lcom/yelp/android/ak/g;

    invoke-virtual {v2}, Lcom/yelp/android/ak/f;->a()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/yelp/android/ak/g;-><init>(Landroid/os/IBinder;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/yelp/android/ak/g;->a(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_4
    :goto_1
    if-nez v0, :cond_1

    sput-boolean v1, Lcom/yelp/android/ak/d;->c:Z

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method public static final c(Landroid/content/Context;)Lcom/yelp/android/ak/c;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/yelp/android/ak/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {p0}, Lcom/yelp/android/ak/d;->a(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/yelp/android/ak/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/yelp/android/ak/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/yelp/android/ak/c;

    invoke-direct {v1, v0}, Lcom/yelp/android/ak/c;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    const-string/jumbo v0, "none"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/yelp/android/ak/d;->d(Landroid/content/Context;)Lcom/yelp/android/ak/c;

    move-result-object v0

    goto :goto_1
.end method

.method public static d(Landroid/content/Context;)Lcom/yelp/android/ak/c;
    .locals 4

    invoke-static {p0}, Lcom/yelp/android/ak/d;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x3

    const/4 v0, 0x1

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/yelp/android/ak/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x7

    const/4 v0, 0x2

    :cond_0
    new-instance v3, Lcom/yelp/android/ak/c;

    invoke-direct {v3, v2, v1, v0}, Lcom/yelp/android/ak/c;-><init>(Ljava/lang/String;II)V

    return-object v3
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, ""

    new-instance v1, Lcom/yelp/android/ak/f;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/yelp/android/ak/f;-><init>(Lcom/yelp/android/ak/e;)V

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/yelp/android/ak/d;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/yelp/android/ak/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Lcom/yelp/android/ak/g;

    invoke-virtual {v1}, Lcom/yelp/android/ak/f;->a()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yelp/android/ak/g;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v2}, Lcom/yelp/android/ak/g;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    sget-boolean v0, Lcom/yelp/android/ak/d;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/yelp/android/ak/a;->a(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final g(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x3

    invoke-static {p0}, Lcom/yelp/android/ak/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "***"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final h(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/yelp/android/ak/d;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/yelp/android/ak/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final j(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, "9774d56d682e549c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android_id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
