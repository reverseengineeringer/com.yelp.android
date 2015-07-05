.class public Lcom/yelp/android/services/push/d;
.super Ljava/lang/Object;
.source "GcmManager.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/yelp/android/services/push/d;


# instance fields
.field private c:J

.field private d:I

.field private e:Z

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/services/push/d;->a:Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0x35s
        0x31s
        0x36s
        0x32s
        0x32s
        0x32s
        0x39s
        0x33s
        0x37s
        0x35s
        0x35s
        0x31s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/yelp/android/services/push/d;->c:J

    .line 144
    new-instance v0, Lcom/yelp/android/services/push/f;

    invoke-direct {v0, p0}, Lcom/yelp/android/services/push/f;-><init>(Lcom/yelp/android/services/push/d;)V

    iput-object v0, p0, Lcom/yelp/android/services/push/d;->g:Ljava/lang/Runnable;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/services/push/d;->f:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/services/push/d;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/yelp/android/services/push/d;->d:I

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/services/push/d;J)J
    .locals 3

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/yelp/android/services/push/d;->c:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lcom/yelp/android/services/push/d;->c:J

    return-wide v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/yelp/android/services/push/d;

    invoke-direct {v0}, Lcom/yelp/android/services/push/d;-><init>()V

    sput-object v0, Lcom/yelp/android/services/push/d;->b:Lcom/yelp/android/services/push/d;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/services/push/d;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/yelp/android/services/push/d;->e:Z

    return p1
.end method

.method public static b()Lcom/yelp/android/services/push/d;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/yelp/android/services/push/d;->b:Lcom/yelp/android/services/push/d;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/yelp/android/services/push/d;->b:Lcom/yelp/android/services/push/d;

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method static synthetic b(Lcom/yelp/android/services/push/d;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/services/push/d;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/services/push/d;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/services/push/d;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/services/push/d;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/yelp/android/services/push/d;->c:J

    return-wide v0
.end method

.method static synthetic e(Lcom/yelp/android/services/push/d;)I
    .locals 2

    .prologue
    .line 27
    iget v0, p0, Lcom/yelp/android/services/push/d;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yelp/android/services/push/d;->d:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 121
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yelp/android/appdata/i;->a(Ljava/lang/String;)V

    .line 123
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/yelp/android/services/push/AccountPushRegistrationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 124
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/services/push/d;->g()Ljava/lang/String;

    move-result-object v0

    .line 58
    if-nez v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/services/push/d;->d()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/i;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Lcom/yelp/android/services/push/d;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/yelp/android/services/push/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/services/push/d;->e:Z

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/services/push/d;->e:Z

    .line 73
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    .line 74
    new-instance v0, Lcom/yelp/android/services/push/e;

    invoke-direct {v0, p0}, Lcom/yelp/android/services/push/e;-><init>(Lcom/yelp/android/services/push/d;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/services/push/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/i;->a(Z)V

    .line 116
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/i;->a(Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/yelp/android/aw/a;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/aw/a;-><init>(Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/aw/a;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 118
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 5

    .prologue
    .line 132
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->d()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->e()I

    move-result v2

    .line 135
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-static {v3}, Lcom/yelp/android/appdata/AppData;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 136
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 137
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_1

    if-eq v2, v4, :cond_1

    .line 139
    :cond_0
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
