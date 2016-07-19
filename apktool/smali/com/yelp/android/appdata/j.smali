.class public Lcom/yelp/android/appdata/j;
.super Ljava/lang/Object;
.source "NotificationsCountController.java"

# interfaces
.implements Lcom/yelp/android/services/push/e$a;


# static fields
.field private static a:Lcom/yelp/android/appdata/j;


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:Lcom/yelp/android/appdata/webrequests/ez;

.field private f:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
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

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Lcom/yelp/android/appdata/j$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/j$1;-><init>(Lcom/yelp/android/appdata/j;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/j;->f:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 167
    new-instance v0, Lcom/yelp/android/appdata/j$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/j$2;-><init>(Lcom/yelp/android/appdata/j;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/j;->g:Landroid/content/BroadcastReceiver;

    .line 68
    iput-boolean v1, p0, Lcom/yelp/android/appdata/j;->d:Z

    .line 69
    iput v1, p0, Lcom/yelp/android/appdata/j;->b:I

    .line 70
    iput v1, p0, Lcom/yelp/android/appdata/j;->c:I

    .line 71
    invoke-virtual {p0}, Lcom/yelp/android/appdata/j;->i()V

    .line 72
    return-void
.end method

.method public static declared-synchronized a()Lcom/yelp/android/appdata/j;
    .locals 4

    .prologue
    .line 34
    const-class v1, Lcom/yelp/android/appdata/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yelp/android/appdata/j;->a:Lcom/yelp/android/appdata/j;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/yelp/android/appdata/j;

    invoke-direct {v0}, Lcom/yelp/android/appdata/j;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/j;->a:Lcom/yelp/android/appdata/j;

    .line 36
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->c()Lcom/yelp/android/services/push/e;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/appdata/j;->a:Lcom/yelp/android/appdata/j;

    invoke-virtual {v0, v2}, Lcom/yelp/android/services/push/e;->a(Lcom/yelp/android/services/push/e$a;)V

    .line 37
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/appdata/j;->a:Lcom/yelp/android/appdata/j;

    iget-object v2, v2, Lcom/yelp/android/appdata/j;->g:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.yelp.android.messages.read"

    invoke-static {v3}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/appdata/AppData;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    .line 43
    sget-object v2, Lcom/yelp/android/appdata/j;->a:Lcom/yelp/android/appdata/j;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->P()I

    move-result v3

    iput v3, v2, Lcom/yelp/android/appdata/j;->c:I

    .line 44
    sget-object v2, Lcom/yelp/android/appdata/j;->a:Lcom/yelp/android/appdata/j;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->O()I

    move-result v0

    iput v0, v2, Lcom/yelp/android/appdata/j;->b:I

    .line 47
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/j;->a:Lcom/yelp/android/appdata/j;
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
    .line 136
    iput p1, p0, Lcom/yelp/android/appdata/j;->b:I

    .line 137
    invoke-direct {p0}, Lcom/yelp/android/appdata/j;->j()V

    .line 138
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/j;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/yelp/android/appdata/j;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/j;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/yelp/android/appdata/j;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/appdata/j;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/yelp/android/appdata/j;->d:Z

    return p1
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/yelp/android/appdata/j;->a:Lcom/yelp/android/appdata/j;

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    .line 58
    sget-object v1, Lcom/yelp/android/appdata/j;->a:Lcom/yelp/android/appdata/j;

    iget v1, v1, Lcom/yelp/android/appdata/j;->c:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->d(I)V

    .line 59
    sget-object v1, Lcom/yelp/android/appdata/j;->a:Lcom/yelp/android/appdata/j;

    iget v1, v1, Lcom/yelp/android/appdata/j;->b:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->c(I)V

    .line 61
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->c()Lcom/yelp/android/services/push/e;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/j;->a:Lcom/yelp/android/appdata/j;

    invoke-virtual {v0, v1}, Lcom/yelp/android/services/push/e;->b(Lcom/yelp/android/services/push/e$a;)V

    .line 62
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/j;->a:Lcom/yelp/android/appdata/j;

    iget-object v1, v1, Lcom/yelp/android/appdata/j;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 64
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/yelp/android/appdata/j;->a:Lcom/yelp/android/appdata/j;

    .line 65
    return-void
.end method

.method private b(I)V
    .locals 0

    .prologue
    .line 141
    iput p1, p0, Lcom/yelp/android/appdata/j;->c:I

    .line 142
    invoke-direct {p0}, Lcom/yelp/android/appdata/j;->k()V

    .line 143
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/appdata/j;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/yelp/android/appdata/j;->b(I)V

    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget v1, p0, Lcom/yelp/android/appdata/j;->b:I

    const-string/jumbo v2, "com.yelp.android.messages.count.update"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 129
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget v1, p0, Lcom/yelp/android/appdata/j;->c:I

    const-string/jumbo v2, "com.yelp.android.notifications.count.update"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 133
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/services/push/d$a;)V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/yelp/android/appdata/j;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/j;->a(I)V

    .line 83
    return-void
.end method

.method public b(Lcom/yelp/android/services/push/d$a;)Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "NotificationCountController"

    return-object v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/yelp/android/appdata/j;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/j;->e()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/yelp/android/appdata/j;->b:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/yelp/android/appdata/j;->c:I

    return v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/j;->b(I)V

    .line 104
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/j;->a(I)V

    .line 108
    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/j;->b(I)V

    .line 109
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/appdata/j;->e:Lcom/yelp/android/appdata/webrequests/ez;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/yelp/android/appdata/j;->e:Lcom/yelp/android/appdata/webrequests/ez;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ez;->a(Z)V

    .line 117
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ez;

    iget-object v1, p0, Lcom/yelp/android/appdata/j;->f:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/ez;-><init>(Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/j;->e:Lcom/yelp/android/appdata/webrequests/ez;

    .line 118
    iget-object v0, p0, Lcom/yelp/android/appdata/j;->e:Lcom/yelp/android/appdata/webrequests/ez;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ez;->a([Ljava/lang/Object;)V

    .line 119
    return-void
.end method
