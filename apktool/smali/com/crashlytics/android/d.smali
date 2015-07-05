.class public final Lcom/crashlytics/android/d;
.super Lcom/crashlytics/android/internal/ck;
.source "SourceFile"


# static fields
.field private static j:Landroid/content/ContextWrapper;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Z

.field private static s:Lcom/crashlytics/android/t;

.field private static t:Lcom/crashlytics/android/internal/bu;

.field private static u:F

.field private static v:Lcom/crashlytics/android/d;


# instance fields
.field private final a:J

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/crashlytics/android/e;

.field private d:Lcom/crashlytics/android/bb;

.field private e:Lcom/crashlytics/android/internal/bo;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lcom/crashlytics/android/d;->r:Z

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/crashlytics/android/d;->s:Lcom/crashlytics/android/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Lcom/crashlytics/android/internal/ck;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/crashlytics/android/d;->e:Lcom/crashlytics/android/internal/bo;

    .line 84
    iput-object v0, p0, Lcom/crashlytics/android/d;->f:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/crashlytics/android/d;->g:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/crashlytics/android/d;->h:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crashlytics/android/d;->a:J

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/d;FI)I
    .locals 1

    .prologue
    .line 54
    int-to-float v0, p2

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private a(Lcom/crashlytics/android/ac;)Lcom/crashlytics/android/ak;
    .locals 11

    .prologue
    .line 977
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/crashlytics/android/d;->i:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/crashlytics/android/internal/bd;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 978
    sget-object v0, Lcom/crashlytics/android/d;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/internal/ai;->a(Ljava/lang/String;)Lcom/crashlytics/android/internal/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/ai;->a()I

    move-result v7

    .line 980
    new-instance v0, Lcom/crashlytics/android/ak;

    sget-object v1, Lcom/crashlytics/android/d;->p:Ljava/lang/String;

    sget-object v2, Lcom/crashlytics/android/d;->k:Ljava/lang/String;

    sget-object v3, Lcom/crashlytics/android/d;->o:Ljava/lang/String;

    sget-object v4, Lcom/crashlytics/android/d;->n:Ljava/lang/String;

    sget-object v6, Lcom/crashlytics/android/d;->m:Ljava/lang/String;

    sget-object v8, Lcom/crashlytics/android/d;->q:Ljava/lang/String;

    const-string/jumbo v9, "0"

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/crashlytics/android/ak;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/ac;)V

    return-object v0
.end method

.method static synthetic a(Lcom/crashlytics/android/d;)Lcom/crashlytics/android/bb;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/crashlytics/android/d;->d:Lcom/crashlytics/android/bb;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/crashlytics/android/d;
    .locals 3

    .prologue
    .line 153
    const-class v1, Lcom/crashlytics/android/d;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    const-class v2, Lcom/crashlytics/android/d;

    invoke-virtual {v0, v2}, Lcom/crashlytics/android/internal/cl;->a(Ljava/lang/Class;)Lcom/crashlytics/android/internal/ck;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    if-eqz v0, :cond_0

    .line 164
    :goto_0
    monitor-exit v1

    return-object v0

    .line 161
    :cond_0
    :try_start_1
    sget-object v0, Lcom/crashlytics/android/d;->v:Lcom/crashlytics/android/d;

    if-nez v0, :cond_1

    .line 162
    new-instance v0, Lcom/crashlytics/android/d;

    invoke-direct {v0}, Lcom/crashlytics/android/d;-><init>()V

    sput-object v0, Lcom/crashlytics/android/d;->v:Lcom/crashlytics/android/d;

    .line 164
    :cond_1
    sget-object v0, Lcom/crashlytics/android/d;->v:Lcom/crashlytics/android/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 252
    invoke-static {p0, p1, p2}, Lcom/crashlytics/android/d;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/crashlytics/android/internal/ci;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 256
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 124
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/crashlytics/android/d;->a(Landroid/content/Context;F)V

    .line 125
    return-void
.end method

.method public static a(Landroid/content/Context;F)V
    .locals 3

    .prologue
    .line 135
    sput p1, Lcom/crashlytics/android/d;->u:F

    .line 138
    invoke-static {p0}, Lcom/crashlytics/android/internal/bd;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/internal/a;

    invoke-direct {v1}, Lcom/crashlytics/android/internal/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/cl;->a(Lcom/crashlytics/android/internal/ci;)V

    .line 143
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/crashlytics/android/internal/ck;

    const/4 v1, 0x0

    invoke-static {}, Lcom/crashlytics/android/d;->a()Lcom/crashlytics/android/d;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/crashlytics/android/internal/c;

    invoke-direct {v2}, Lcom/crashlytics/android/internal/c;-><init>()V

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/crashlytics/android/internal/cl;->a(Landroid/content/Context;[Lcom/crashlytics/android/internal/ck;)V

    .line 144
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    const-class v1, Lcom/crashlytics/android/internal/c;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/cl;->a(Ljava/lang/Class;)Lcom/crashlytics/android/internal/ck;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/c;

    .line 196
    if-eqz v0, :cond_0

    .line 197
    new-instance v1, Lcom/crashlytics/android/internal/bh;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/internal/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/c;->a(Lcom/crashlytics/android/internal/bh;)V

    .line 200
    :cond_0
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/content/Context;F)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 765
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/crashlytics/android/d;->j:Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 766
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v0

    const-string/jumbo v1, "Crashlytics"

    const-string/jumbo v2, "Crashlytics already started, ignoring re-initialization attempt."

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 770
    :cond_1
    :try_start_1
    sput-object p1, Lcom/crashlytics/android/d;->p:Ljava/lang/String;

    .line 771
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/crashlytics/android/d;->j:Landroid/content/ContextWrapper;

    .line 772
    new-instance v0, Lcom/crashlytics/android/internal/bu;

    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/crashlytics/android/internal/bu;-><init>(Lcom/crashlytics/android/internal/ci;)V

    sput-object v0, Lcom/crashlytics/android/d;->t:Lcom/crashlytics/android/internal/bu;

    .line 774
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v0

    const-string/jumbo v2, "Crashlytics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Initializing Crashlytics "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/crashlytics/android/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/crashlytics/android/internal/ci;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 777
    :try_start_2
    sget-object v0, Lcom/crashlytics/android/d;->j:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/d;->k:Ljava/lang/String;

    .line 778
    sget-object v0, Lcom/crashlytics/android/d;->j:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 780
    sget-object v2, Lcom/crashlytics/android/d;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/crashlytics/android/d;->l:Ljava/lang/String;

    .line 781
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v2

    const-string/jumbo v3, "Crashlytics"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Installer package name is: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/crashlytics/android/d;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    sget-object v2, Lcom/crashlytics/android/d;->k:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 784
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/crashlytics/android/d;->n:Ljava/lang/String;

    .line 785
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string/jumbo v0, "0.0"

    :goto_1
    sput-object v0, Lcom/crashlytics/android/d;->o:Ljava/lang/String;

    .line 786
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/d;->m:Ljava/lang/String;

    .line 788
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/d;->q:Ljava/lang/String;

    .line 791
    invoke-static {p2}, Lcom/crashlytics/android/internal/bd;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/d;->i:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 797
    :goto_2
    :try_start_3
    new-instance v0, Lcom/crashlytics/android/internal/bo;

    sget-object v2, Lcom/crashlytics/android/d;->j:Landroid/content/ContextWrapper;

    invoke-direct {v0, v2}, Lcom/crashlytics/android/internal/bo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/crashlytics/android/d;->e:Lcom/crashlytics/android/internal/bo;

    .line 800
    iget-object v0, p0, Lcom/crashlytics/android/d;->e:Lcom/crashlytics/android/internal/bo;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/bo;->h()Ljava/lang/String;

    .line 803
    new-instance v0, Lcom/crashlytics/android/al;

    iget-object v2, p0, Lcom/crashlytics/android/d;->i:Ljava/lang/String;

    sget-object v3, Lcom/crashlytics/android/d;->j:Landroid/content/ContextWrapper;

    const-string/jumbo v4, "com.crashlytics.RequireBuildId"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/crashlytics/android/internal/bd;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/crashlytics/android/al;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/crashlytics/android/d;->k:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/crashlytics/android/al;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 808
    :try_start_4
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v0

    const-string/jumbo v2, "Crashlytics"

    const-string/jumbo v3, "Installing exception handler..."

    invoke-interface {v0, v2, v3}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    new-instance v0, Lcom/crashlytics/android/bb;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/d;->c:Lcom/crashlytics/android/e;

    iget-object v4, p0, Lcom/crashlytics/android/d;->i:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Lcom/crashlytics/android/bb;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crashlytics/android/d;->d:Lcom/crashlytics/android/bb;

    .line 816
    iget-object v0, p0, Lcom/crashlytics/android/d;->d:Lcom/crashlytics/android/bb;

    invoke-virtual {v0}, Lcom/crashlytics/android/bb;->f()Z

    move-result v1

    .line 819
    iget-object v0, p0, Lcom/crashlytics/android/d;->d:Lcom/crashlytics/android/bb;

    invoke-virtual {v0}, Lcom/crashlytics/android/bb;->d()V

    .line 821
    iget-object v0, p0, Lcom/crashlytics/android/d;->d:Lcom/crashlytics/android/bb;

    invoke-virtual {v0}, Lcom/crashlytics/android/bb;->c()V

    .line 822
    iget-object v0, p0, Lcom/crashlytics/android/d;->d:Lcom/crashlytics/android/bb;

    invoke-virtual {v0}, Lcom/crashlytics/android/bb;->h()V

    .line 823
    iget-object v0, p0, Lcom/crashlytics/android/d;->d:Lcom/crashlytics/android/bb;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 824
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v0

    const-string/jumbo v2, "Crashlytics"

    const-string/jumbo v3, "Successfully installed exception handler."

    invoke-interface {v0, v2, v3}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 833
    :goto_3
    :try_start_5
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 835
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/crashlytics/android/az;

    invoke-direct {v3, p0, p2, p3, v0}, Lcom/crashlytics/android/az;-><init>(Lcom/crashlytics/android/d;Landroid/content/Context;FLjava/util/concurrent/CountDownLatch;)V

    const-string/jumbo v4, "Crashlytics Initializer"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 855
    if-eqz v1, :cond_0

    .line 856
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v1

    const-string/jumbo v2, "Crashlytics"

    const-string/jumbo v3, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    invoke-interface {v1, v2, v3}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 860
    const-wide/16 v2, 0xfa0

    :try_start_6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v0

    const-string/jumbo v1, "Crashlytics"

    const-string/jumbo v2, "Crashlytics initialization was not completed in the allotted time."

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/ci;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 863
    :catch_0
    move-exception v0

    .line 864
    :try_start_7
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v1

    const-string/jumbo v2, "Crashlytics"

    const-string/jumbo v3, "Crashlytics was interrupted during initialization."

    invoke-interface {v1, v2, v3, v0}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 765
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 785
    :cond_2
    :try_start_8
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 793
    :catch_1
    move-exception v0

    .line 794
    :try_start_9
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v2

    const-string/jumbo v3, "Crashlytics"

    const-string/jumbo v4, "Error setting up app properties"

    invoke-interface {v2, v3, v4, v0}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 825
    :catch_2
    move-exception v0

    .line 826
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v2

    const-string/jumbo v3, "Crashlytics"

    const-string/jumbo v4, "There was a problem installing the exception handler."

    invoke-interface {v2, v3, v4, v0}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 321
    if-nez p0, :cond_1

    .line 322
    sget-object v0, Lcom/crashlytics/android/d;->j:Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/crashlytics/android/d;->j:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/crashlytics/android/internal/bd;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Custom attribute key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v0

    const-string/jumbo v1, "Crashlytics"

    const-string/jumbo v2, "Attempting to set custom attribute with null key, ignoring."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-static {p0}, Lcom/crashlytics/android/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-static {}, Lcom/crashlytics/android/d;->a()Lcom/crashlytics/android/d;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v2, 0x40

    if-lt v0, v2, :cond_2

    invoke-static {}, Lcom/crashlytics/android/d;->a()Lcom/crashlytics/android/d;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    :cond_2
    if-nez p1, :cond_3

    .line 333
    const-string/jumbo v0, ""

    .line 337
    :goto_1
    invoke-static {}, Lcom/crashlytics/android/d;->a()Lcom/crashlytics/android/d;

    move-result-object v2

    iget-object v2, v2, Lcom/crashlytics/android/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 335
    :cond_3
    invoke-static {p1}, Lcom/crashlytics/android/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 339
    :cond_4
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v0

    const-string/jumbo v1, "Crashlytics"

    const-string/jumbo v2, "Exceeded maximum number of custom attributes (64)"

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 349
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 176
    invoke-static {}, Lcom/crashlytics/android/d;->a()Lcom/crashlytics/android/d;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/crashlytics/android/d;->d:Lcom/crashlytics/android/bb;

    if-nez v1, :cond_1

    .line 178
    :cond_0
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v0

    const-string/jumbo v1, "Crashlytics"

    const-string/jumbo v2, "Crashlytics must be initialized by calling Crashlytics.start(Context) prior to logging exceptions."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    :goto_0
    return-void

    .line 183
    :cond_1
    if-nez p0, :cond_2

    .line 184
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v0

    const/4 v1, 0x5

    const-string/jumbo v2, "Crashlytics"

    const-string/jumbo v3, "Crashlytics is ignoring a request to log a null exception."

    invoke-interface {v0, v1, v2, v3}, Lcom/crashlytics/android/internal/ci;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, v0, Lcom/crashlytics/android/d;->d:Lcom/crashlytics/android/bb;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/crashlytics/android/bb;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static a(Z)V
    .locals 3

    .prologue
    .line 597
    invoke-static {}, Lcom/crashlytics/android/internal/bd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "always_send_reports_opt_in"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 598
    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/d;Landroid/app/Activity;Lcom/crashlytics/android/internal/ar;)Z
    .locals 6

    .prologue
    .line 54
    new-instance v4, Lcom/crashlytics/android/ab;

    invoke-direct {v4, p1, p2}, Lcom/crashlytics/android/ab;-><init>(Landroid/content/Context;Lcom/crashlytics/android/internal/ar;)V

    new-instance v3, Lcom/crashlytics/android/ba;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/crashlytics/android/ba;-><init>(Lcom/crashlytics/android/d;B)V

    new-instance v0, Lcom/crashlytics/android/av;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/av;-><init>(Lcom/crashlytics/android/d;Landroid/app/Activity;Lcom/crashlytics/android/ba;Lcom/crashlytics/android/ab;Lcom/crashlytics/android/internal/ar;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v0

    const-string/jumbo v1, "Crashlytics"

    const-string/jumbo v2, "Waiting for user opt-in."

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/crashlytics/android/ba;->b()V

    invoke-virtual {v3}, Lcom/crashlytics/android/ba;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/crashlytics/android/d;Landroid/content/Context;F)Z
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/d;->b(Landroid/content/Context;F)Z

    move-result v0

    return v0
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 228
    invoke-static {}, Lcom/crashlytics/android/d;->a()Lcom/crashlytics/android/d;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/crashlytics/android/d;->d:Lcom/crashlytics/android/bb;

    if-nez v1, :cond_1

    .line 230
    :cond_0
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v0

    const-string/jumbo v1, "Crashlytics must be initialized by calling Crashlytics.start(Context) prior to logging messages."

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/crashlytics/android/d;->a:J

    sub-long/2addr v2, v4

    .line 235
    iget-object v0, v0, Lcom/crashlytics/android/d;->d:Lcom/crashlytics/android/bb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/crashlytics/android/internal/bd;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/crashlytics/android/bb;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    const-class v1, Lcom/crashlytics/android/internal/c;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/cl;->a(Ljava/lang/Class;)Lcom/crashlytics/android/internal/ck;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/c;

    .line 207
    if-eqz v0, :cond_0

    .line 208
    new-instance v1, Lcom/crashlytics/android/internal/bg;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/internal/bg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/c;->a(Lcom/crashlytics/android/internal/bg;)V

    .line 211
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;F)Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 876
    .line 881
    invoke-virtual {p0}, Lcom/crashlytics/android/d;->w()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/internal/bd;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 884
    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/internal/at;->a()Lcom/crashlytics/android/internal/at;

    move-result-object v0

    sget-object v2, Lcom/crashlytics/android/d;->t:Lcom/crashlytics/android/internal/bu;

    sget-object v3, Lcom/crashlytics/android/d;->n:Ljava/lang/String;

    sget-object v4, Lcom/crashlytics/android/d;->o:Ljava/lang/String;

    invoke-static {}, Lcom/crashlytics/android/d;->l()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/crashlytics/android/internal/at;->a(Landroid/content/Context;Lcom/crashlytics/android/internal/bu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/at;->c()Z

    .line 888
    invoke-static {}, Lcom/crashlytics/android/internal/at;->a()Lcom/crashlytics/android/internal/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/at;->b()Lcom/crashlytics/android/internal/az;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 893
    :goto_0
    if-eqz v2, :cond_7

    .line 895
    :try_start_1
    iget-object v0, v2, Lcom/crashlytics/android/internal/az;->a:Lcom/crashlytics/android/internal/am;

    const-string/jumbo v1, "new"

    iget-object v3, v0, Lcom/crashlytics/android/internal/am;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/crashlytics/android/d;->w()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/crashlytics/android/ac;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/crashlytics/android/ac;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/crashlytics/android/d;->a(Lcom/crashlytics/android/ac;)Lcom/crashlytics/android/ak;

    move-result-object v1

    new-instance v3, Lcom/crashlytics/android/x;

    invoke-static {}, Lcom/crashlytics/android/d;->l()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/crashlytics/android/internal/am;->b:Ljava/lang/String;

    sget-object v5, Lcom/crashlytics/android/d;->t:Lcom/crashlytics/android/internal/bu;

    invoke-direct {v3, v4, v0, v5}, Lcom/crashlytics/android/x;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/bu;)V

    invoke-virtual {v3, v1}, Lcom/crashlytics/android/x;->a(Lcom/crashlytics/android/ak;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/crashlytics/android/internal/at;->a()Lcom/crashlytics/android/internal/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/at;->d()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    move v1, v0

    .line 900
    :goto_2
    :try_start_2
    iget-object v0, v2, Lcom/crashlytics/android/internal/az;->d:Lcom/crashlytics/android/internal/aq;

    iget-boolean v0, v0, Lcom/crashlytics/android/internal/aq;->b:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 907
    :goto_3
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 909
    :try_start_3
    iget-object v0, p0, Lcom/crashlytics/android/d;->d:Lcom/crashlytics/android/bb;

    invoke-virtual {v0}, Lcom/crashlytics/android/bb;->b()Z

    move-result v0

    and-int/lit8 v7, v0, 0x1

    .line 911
    invoke-virtual {p0}, Lcom/crashlytics/android/d;->t()Lcom/crashlytics/android/z;

    move-result-object v0

    .line 912
    if-eqz v0, :cond_0

    .line 913
    new-instance v1, Lcom/crashlytics/android/af;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/af;-><init>(Lcom/crashlytics/android/z;)V

    invoke-virtual {v1, p2}, Lcom/crashlytics/android/af;->a(F)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 920
    :cond_0
    :goto_4
    if-eqz v6, :cond_1

    .line 921
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v0

    const-string/jumbo v1, "Crashlytics"

    const-string/jumbo v2, "Crash reporting disabled."

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :cond_1
    return v7

    .line 889
    :catch_0
    move-exception v0

    .line 890
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v1

    const-string/jumbo v2, "Crashlytics"

    const-string/jumbo v3, "Error dealing with settings"

    invoke-interface {v1, v2, v3, v0}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v8

    goto :goto_0

    .line 895
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v0

    const-string/jumbo v1, "Crashlytics"

    const-string/jumbo v3, "Failed to create app with Crashlytics service."

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v4}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v6

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "configured"

    iget-object v3, v0, Lcom/crashlytics/android/internal/am;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/crashlytics/android/internal/at;->a()Lcom/crashlytics/android/internal/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/at;->d()Z

    move-result v0

    goto :goto_1

    :cond_4
    iget-boolean v1, v0, Lcom/crashlytics/android/internal/am;->d:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v1

    const-string/jumbo v3, "Crashlytics"

    const-string/jumbo v4, "Server says an update is required - forcing a full App update."

    invoke-interface {v1, v3, v4}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/d;->w()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/crashlytics/android/ac;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/crashlytics/android/ac;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/crashlytics/android/d;->a(Lcom/crashlytics/android/ac;)Lcom/crashlytics/android/ak;

    move-result-object v1

    new-instance v3, Lcom/crashlytics/android/ai;

    invoke-static {}, Lcom/crashlytics/android/d;->l()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/crashlytics/android/internal/am;->b:Ljava/lang/String;

    sget-object v5, Lcom/crashlytics/android/d;->t:Lcom/crashlytics/android/internal/bu;

    invoke-direct {v3, v4, v0, v5}, Lcom/crashlytics/android/ai;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/bu;)V

    invoke-virtual {v3, v1}, Lcom/crashlytics/android/ai;->a(Lcom/crashlytics/android/ak;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_5
    move v0, v7

    goto/16 :goto_1

    .line 896
    :catch_1
    move-exception v0

    .line 897
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v1

    const-string/jumbo v3, "Crashlytics"

    const-string/jumbo v4, "Error performing auto configuration."

    invoke-interface {v1, v3, v4, v0}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v6

    goto/16 :goto_2

    .line 901
    :catch_2
    move-exception v0

    .line 902
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v2

    const-string/jumbo v3, "Crashlytics"

    const-string/jumbo v4, "Error getting collect reports setting."

    invoke-interface {v2, v3, v4, v0}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v6

    goto/16 :goto_3

    .line 916
    :catch_3
    move-exception v0

    .line 917
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v1

    const-string/jumbo v2, "Crashlytics"

    const-string/jumbo v3, "Error sending crash report"

    invoke-interface {v1, v2, v3, v0}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_6
    move v6, v7

    goto/16 :goto_4

    :cond_7
    move v0, v6

    move v1, v6

    goto/16 :goto_3
.end method

.method public static c()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 507
    invoke-static {}, Lcom/crashlytics/android/d;->a()Lcom/crashlytics/android/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 224
    const/4 v0, 0x3

    const-string/jumbo v1, "Crashlytics"

    invoke-static {v0, v1, p0}, Lcom/crashlytics/android/d;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Lcom/crashlytics/android/d;->a()Lcom/crashlytics/android/d;

    move-result-object v0

    invoke-static {p0}, Lcom/crashlytics/android/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/crashlytics/android/d;->f:Ljava/lang/String;

    .line 285
    return-void
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 755
    if-eqz p0, :cond_0

    .line 756
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 757
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 758
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 761
    :cond_0
    return-object p0
.end method

.method static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    sget-object v0, Lcom/crashlytics/android/d;->k:Ljava/lang/String;

    return-object v0
.end method

.method static h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    sget-object v0, Lcom/crashlytics/android/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method static i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    sget-object v0, Lcom/crashlytics/android/d;->o:Ljava/lang/String;

    return-object v0
.end method

.method static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    sget-object v0, Lcom/crashlytics/android/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    sget-object v0, Lcom/crashlytics/android/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method static l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 572
    sget-object v0, Lcom/crashlytics/android/d;->j:Landroid/content/ContextWrapper;

    const-string/jumbo v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lcom/crashlytics/android/internal/bd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static n()Z
    .locals 3

    .prologue
    .line 593
    invoke-static {}, Lcom/crashlytics/android/internal/bd;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "always_send_reports_opt_in"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic v()Lcom/crashlytics/android/internal/bu;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/crashlytics/android/d;->t:Lcom/crashlytics/android/internal/bu;

    return-object v0
.end method


# virtual methods
.method final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/crashlytics/android/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final d()Lcom/crashlytics/android/internal/bo;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/crashlytics/android/d;->e:Lcom/crashlytics/android/internal/bo;

    return-object v0
.end method

.method protected final e()V
    .locals 4

    .prologue
    .line 523
    invoke-super {p0}, Lcom/crashlytics/android/internal/ck;->w()Landroid/content/Context;

    move-result-object v0

    .line 524
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crashlytics/android/internal/cj;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 526
    if-nez v1, :cond_0

    .line 538
    :goto_0
    return-void

    .line 531
    :cond_0
    :try_start_0
    sget v2, Lcom/crashlytics/android/d;->u:F

    invoke-direct {p0, v1, v0, v2}, Lcom/crashlytics/android/d;->a(Ljava/lang/String;Landroid/content/Context;F)V
    :try_end_0
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 534
    throw v0

    .line 535
    :catch_1
    move-exception v0

    .line 536
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v1

    const-string/jumbo v2, "Crashlytics"

    const-string/jumbo v3, "Crashlytics was not started due to an exception during initialization"

    invoke-interface {v1, v2, v3, v0}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final m()Z
    .locals 3

    .prologue
    .line 580
    invoke-static {}, Lcom/crashlytics/android/internal/at;->a()Lcom/crashlytics/android/internal/at;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/ar;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/ar;-><init>(Lcom/crashlytics/android/d;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/at;->a(Lcom/crashlytics/android/internal/aw;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method final o()Lcom/crashlytics/android/bb;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/crashlytics/android/d;->d:Lcom/crashlytics/android/bb;

    return-object v0
.end method

.method final p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/crashlytics/android/d;->e:Lcom/crashlytics/android/internal/bo;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/bo;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/d;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/crashlytics/android/d;->e:Lcom/crashlytics/android/internal/bo;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/bo;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/d;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/crashlytics/android/d;->e:Lcom/crashlytics/android/internal/bo;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/bo;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/d;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final s()Z
    .locals 3

    .prologue
    .line 617
    invoke-static {}, Lcom/crashlytics/android/internal/at;->a()Lcom/crashlytics/android/internal/at;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/as;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/as;-><init>(Lcom/crashlytics/android/d;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/at;->a(Lcom/crashlytics/android/internal/aw;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method final t()Lcom/crashlytics/android/z;
    .locals 3

    .prologue
    .line 637
    invoke-static {}, Lcom/crashlytics/android/internal/at;->a()Lcom/crashlytics/android/internal/at;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/at;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/at;-><init>(Lcom/crashlytics/android/d;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/at;->a(Lcom/crashlytics/android/internal/aw;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/z;

    return-object v0
.end method

.method final u()Lcom/crashlytics/android/internal/as;
    .locals 3

    .prologue
    .line 650
    invoke-static {}, Lcom/crashlytics/android/internal/at;->a()Lcom/crashlytics/android/internal/at;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/au;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/au;-><init>(Lcom/crashlytics/android/d;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/at;->a(Lcom/crashlytics/android/internal/aw;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/as;

    return-object v0
.end method
