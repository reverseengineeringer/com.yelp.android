.class public Lcom/yelp/android/services/push/b;
.super Ljava/lang/Object;
.source "GcmManager.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/yelp/android/services/push/b;


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
    .line 30
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/services/push/b;->a:Ljava/lang/String;

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

    iput-wide v0, p0, Lcom/yelp/android/services/push/b;->c:J

    .line 157
    new-instance v0, Lcom/yelp/android/services/push/b$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/services/push/b$2;-><init>(Lcom/yelp/android/services/push/b;)V

    iput-object v0, p0, Lcom/yelp/android/services/push/b;->g:Ljava/lang/Runnable;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/services/push/b;->f:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/services/push/b;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/yelp/android/services/push/b;->d:I

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/services/push/b;J)J
    .locals 3

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/yelp/android/services/push/b;->c:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lcom/yelp/android/services/push/b;->c:J

    return-wide v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/yelp/android/services/push/b;

    invoke-direct {v0}, Lcom/yelp/android/services/push/b;-><init>()V

    sput-object v0, Lcom/yelp/android/services/push/b;->b:Lcom/yelp/android/services/push/b;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/services/push/b;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/yelp/android/services/push/b;->e:Z

    return p1
.end method

.method public static b()Lcom/yelp/android/services/push/b;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/yelp/android/services/push/b;->b:Lcom/yelp/android/services/push/b;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/yelp/android/services/push/b;->b:Lcom/yelp/android/services/push/b;

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method static synthetic b(Lcom/yelp/android/services/push/b;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/services/push/b;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/services/push/b;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/services/push/b;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/services/push/b;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/yelp/android/services/push/b;->c:J

    return-wide v0
.end method

.method static synthetic e(Lcom/yelp/android/services/push/b;)I
    .locals 2

    .prologue
    .line 27
    iget v0, p0, Lcom/yelp/android/services/push/b;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yelp/android/services/push/b;->d:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 133
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/c;->a(Z)V

    .line 135
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yelp/android/appdata/c;->a(Ljava/lang/String;)V

    .line 136
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/yelp/android/services/push/AccountPushRegistrationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 137
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/yelp/android/services/push/b;->g()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 63
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/c;->X()Ljava/util/Locale;

    move-result-object v2

    .line 65
    if-nez v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/services/push/b;->d()V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/c;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    :cond_2
    invoke-virtual {p0, v0}, Lcom/yelp/android/services/push/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/services/push/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/services/push/b;->e:Z

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/services/push/b;->e:Z

    .line 81
    new-instance v0, Lcom/yelp/android/services/push/b$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/services/push/b$1;-><init>(Lcom/yelp/android/services/push/b;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/services/push/b$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    .line 127
    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/c;->a(Z)V

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->a(Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ar;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/ar;-><init>(Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ar;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 130
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 140
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
    .line 145
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->e()I

    move-result v2

    .line 148
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-static {v3}, Lcom/yelp/android/appdata/AppData;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 149
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 150
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_1

    if-eq v2, v4, :cond_1

    .line 152
    :cond_0
    const/4 v0, 0x0

    .line 154
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
