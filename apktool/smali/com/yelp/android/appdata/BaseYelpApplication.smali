.class public abstract Lcom/yelp/android/appdata/BaseYelpApplication;
.super Landroid/app/Application;
.source "BaseYelpApplication.java"


# static fields
.field protected static f:Lcom/yelp/android/appdata/BaseYelpApplication;

.field public static final g:Ljava/text/SimpleDateFormat;


# instance fields
.field private a:Landroid/content/res/Configuration;

.field protected b:Z

.field protected c:Z

.field protected d:Z

.field protected e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/yelp/android/appdata/BaseYelpApplication;->g:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static declared-synchronized K()Lcom/yelp/android/appdata/BaseYelpApplication;
    .locals 2

    .prologue
    .line 151
    const-class v0, Lcom/yelp/android/appdata/BaseYelpApplication;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/yelp/android/appdata/BaseYelpApplication;->f:Lcom/yelp/android/appdata/BaseYelpApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Process;)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string/jumbo v1, "Could not determine Application Version"

    invoke-static {p0, v1, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    const-string/jumbo v0, "???"

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Lcom/yelp/android/appdata/BaseYelpApplication;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/BaseYelpApplication;

    return-object v0
.end method


# virtual methods
.method public abstract I()Lcom/yelp/android/appdata/d;
.end method

.method public abstract J()Lcom/yelp/android/appdata/r;
.end method

.method public abstract g()Lcom/yelp/android/appdata/LocaleSettings;
.end method

.method public abstract h()Lcom/yelp/android/appdata/f;
.end method

.method public abstract j()Lcom/yelp/android/database/e;
.end method

.method public declared-synchronized onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 115
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 120
    iget-object v2, p0, Lcom/yelp/android/appdata/BaseYelpApplication;->a:Landroid/content/res/Configuration;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/yelp/android/appdata/BaseYelpApplication;->a:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    move v4, v2

    .line 122
    :goto_0
    and-int/lit8 v2, v4, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/yelp/android/appdata/BaseYelpApplication;->b:Z

    .line 123
    and-int/lit8 v2, v4, 0x1

    if-eq v2, v0, :cond_0

    and-int/lit8 v2, v4, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    :cond_0
    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/yelp/android/appdata/BaseYelpApplication;->e:Z

    .line 127
    and-int/lit16 v2, v4, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    move v3, v0

    .line 129
    :goto_3
    and-int/lit16 v2, v4, 0x100

    const/16 v5, 0x100

    if-ne v2, v5, :cond_8

    move v2, v0

    .line 132
    :goto_4
    if-nez v3, :cond_1

    if-eqz v2, :cond_9

    :cond_1
    move v2, v0

    :goto_5
    iput-boolean v2, p0, Lcom/yelp/android/appdata/BaseYelpApplication;->c:Z

    .line 134
    and-int v2, v4, v6

    if-ne v2, v6, :cond_a

    :goto_6
    iput-boolean v0, p0, Lcom/yelp/android/appdata/BaseYelpApplication;->d:Z

    .line 137
    iget-boolean v0, p0, Lcom/yelp/android/appdata/BaseYelpApplication;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/yelp/android/appdata/BaseYelpApplication;->c:Z

    if-eqz v0, :cond_3

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/appdata/BaseYelpApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(F)V

    .line 147
    :cond_3
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/BaseYelpApplication;->a:Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 120
    :cond_4
    const/4 v2, -0x1

    move v4, v2

    goto :goto_0

    :cond_5
    move v2, v1

    .line 122
    goto :goto_1

    :cond_6
    move v2, v1

    .line 123
    goto :goto_2

    :cond_7
    move v3, v1

    .line 127
    goto :goto_3

    :cond_8
    move v2, v1

    .line 129
    goto :goto_4

    :cond_9
    move v2, v1

    .line 132
    goto :goto_5

    :cond_a
    move v0, v1

    .line 134
    goto :goto_6

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 37
    sput-object p0, Lcom/yelp/android/appdata/BaseYelpApplication;->f:Lcom/yelp/android/appdata/BaseYelpApplication;

    .line 38
    invoke-static {}, Lcom/yelp/android/appdata/a;->a()Lcom/yelp/android/appdata/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 39
    return-void
.end method

.method public abstract t()Lcom/yelp/android/debug/Debug;
.end method
