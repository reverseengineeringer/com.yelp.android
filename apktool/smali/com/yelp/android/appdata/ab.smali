.class public Lcom/yelp/android/appdata/ab;
.super Ljava/lang/Object;
.source "NotificationsCountController.java"

# interfaces
.implements Lcom/yelp/android/services/push/j;


# static fields
.field private static a:Lcom/yelp/android/appdata/ab;


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:Lcom/yelp/android/appdata/webrequests/gg;

.field private f:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/serializable/AlertsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lcom/yelp/android/appdata/ac;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/ac;-><init>(Lcom/yelp/android/appdata/ab;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/ab;->f:Lcom/yelp/android/appdata/webrequests/j;

    .line 162
    new-instance v0, Lcom/yelp/android/appdata/ad;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/ad;-><init>(Lcom/yelp/android/appdata/ab;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/ab;->g:Landroid/content/BroadcastReceiver;

    .line 66
    iput-boolean v1, p0, Lcom/yelp/android/appdata/ab;->d:Z

    .line 67
    iput v1, p0, Lcom/yelp/android/appdata/ab;->b:I

    .line 68
    iput v1, p0, Lcom/yelp/android/appdata/ab;->c:I

    .line 69
    invoke-virtual {p0}, Lcom/yelp/android/appdata/ab;->i()V

    .line 70
    return-void
.end method

.method public static declared-synchronized a()Lcom/yelp/android/appdata/ab;
    .locals 4

    .prologue
    .line 34
    const-class v1, Lcom/yelp/android/appdata/ab;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yelp/android/appdata/ab;->a:Lcom/yelp/android/appdata/ab;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/yelp/android/appdata/ab;

    invoke-direct {v0}, Lcom/yelp/android/appdata/ab;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/ab;->a:Lcom/yelp/android/appdata/ab;

    .line 36
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->c()Lcom/yelp/android/services/push/i;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/appdata/ab;->a:Lcom/yelp/android/appdata/ab;

    invoke-virtual {v0, v2}, Lcom/yelp/android/services/push/i;->a(Lcom/yelp/android/services/push/j;)V

    .line 37
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/appdata/ab;->a:Lcom/yelp/android/appdata/ab;

    iget-object v2, v2, Lcom/yelp/android/appdata/ab;->g:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.yelp.android.messages.read"

    invoke-static {v3}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/appdata/AppData;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    .line 41
    sget-object v2, Lcom/yelp/android/appdata/ab;->a:Lcom/yelp/android/appdata/ab;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->M()I

    move-result v3

    iput v3, v2, Lcom/yelp/android/appdata/ab;->c:I

    .line 42
    sget-object v2, Lcom/yelp/android/appdata/ab;->a:Lcom/yelp/android/appdata/ab;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->L()I

    move-result v0

    iput v0, v2, Lcom/yelp/android/appdata/ab;->b:I

    .line 45
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/ab;->a:Lcom/yelp/android/appdata/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(I)V
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lcom/yelp/android/appdata/ab;->b:I

    .line 133
    invoke-direct {p0}, Lcom/yelp/android/appdata/ab;->j()V

    .line 134
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/ab;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/yelp/android/appdata/ab;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/ab;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/yelp/android/appdata/ab;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/appdata/ab;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/yelp/android/appdata/ab;->d:Z

    return p1
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/yelp/android/appdata/ab;->a:Lcom/yelp/android/appdata/ab;

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/yelp/android/appdata/ab;->a:Lcom/yelp/android/appdata/ab;

    iget v1, v1, Lcom/yelp/android/appdata/ab;->c:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/i;->d(I)V

    .line 57
    sget-object v1, Lcom/yelp/android/appdata/ab;->a:Lcom/yelp/android/appdata/ab;

    iget v1, v1, Lcom/yelp/android/appdata/ab;->b:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/i;->c(I)V

    .line 59
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->c()Lcom/yelp/android/services/push/i;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/ab;->a:Lcom/yelp/android/appdata/ab;

    invoke-virtual {v0, v1}, Lcom/yelp/android/services/push/i;->b(Lcom/yelp/android/services/push/j;)V

    .line 60
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/ab;->a:Lcom/yelp/android/appdata/ab;

    iget-object v1, v1, Lcom/yelp/android/appdata/ab;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 62
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/yelp/android/appdata/ab;->a:Lcom/yelp/android/appdata/ab;

    .line 63
    return-void
.end method

.method private b(I)V
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/yelp/android/appdata/ab;->c:I

    .line 138
    invoke-direct {p0}, Lcom/yelp/android/appdata/ab;->k()V

    .line 139
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/appdata/ab;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/yelp/android/appdata/ab;->b(I)V

    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget v1, p0, Lcom/yelp/android/appdata/ab;->b:I

    const-string/jumbo v2, "com.yelp.android.messages.count.update"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget v1, p0, Lcom/yelp/android/appdata/ab;->c:I

    const-string/jumbo v2, "com.yelp.android.notifications.count.update"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 129
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/services/push/h;)V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/yelp/android/appdata/ab;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/ab;->a(I)V

    .line 81
    return-void
.end method

.method public b(Lcom/yelp/android/services/push/h;)Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "NotificationCountController"

    return-object v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/yelp/android/appdata/ab;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/ab;->e()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/yelp/android/appdata/ab;->b:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/yelp/android/appdata/ab;->c:I

    return v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/ab;->b(I)V

    .line 102
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/ab;->a(I)V

    .line 106
    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/ab;->b(I)V

    .line 107
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yelp/android/appdata/ab;->e:Lcom/yelp/android/appdata/webrequests/gg;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/yelp/android/appdata/ab;->e:Lcom/yelp/android/appdata/webrequests/gg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gg;->cancel(Z)V

    .line 115
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gg;

    iget-object v1, p0, Lcom/yelp/android/appdata/ab;->f:Lcom/yelp/android/appdata/webrequests/j;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/gg;-><init>(Lcom/yelp/android/appdata/webrequests/j;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/ab;->e:Lcom/yelp/android/appdata/webrequests/gg;

    .line 116
    iget-object v0, p0, Lcom/yelp/android/appdata/ab;->e:Lcom/yelp/android/appdata/webrequests/gg;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gg;->executeWithLocation([Ljava/lang/Object;)V

    .line 117
    return-void
.end method
