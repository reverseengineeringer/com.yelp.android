.class Landroid/support/design/widget/n;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/n$b;,
        Landroid/support/design/widget/n$a;
    }
.end annotation


# static fields
.field private static a:Landroid/support/design/widget/n;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Landroid/os/Handler;

.field private d:Landroid/support/design/widget/n$b;

.field private e:Landroid/support/design/widget/n$b;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/n$1;

    invoke-direct {v2, p0}, Landroid/support/design/widget/n$1;-><init>(Landroid/support/design/widget/n;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/design/widget/n;->c:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static a()Landroid/support/design/widget/n;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Landroid/support/design/widget/n;->a:Landroid/support/design/widget/n;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/support/design/widget/n;

    invoke-direct {v0}, Landroid/support/design/widget/n;-><init>()V

    sput-object v0, Landroid/support/design/widget/n;->a:Landroid/support/design/widget/n;

    .line 41
    :cond_0
    sget-object v0, Landroid/support/design/widget/n;->a:Landroid/support/design/widget/n;

    return-object v0
.end method

.method private a(Landroid/support/design/widget/n$b;)V
    .locals 6

    .prologue
    .line 203
    invoke-static {p1}, Landroid/support/design/widget/n$b;->b(Landroid/support/design/widget/n$b;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 216
    :goto_0
    return-void

    .line 208
    :cond_0
    const/16 v0, 0xabe

    .line 209
    invoke-static {p1}, Landroid/support/design/widget/n$b;->b(Landroid/support/design/widget/n$b;)I

    move-result v1

    if-lez v1, :cond_2

    .line 210
    invoke-static {p1}, Landroid/support/design/widget/n$b;->b(Landroid/support/design/widget/n$b;)I

    move-result v0

    .line 214
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/support/design/widget/n;->c:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 215
    iget-object v1, p0, Landroid/support/design/widget/n;->c:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/n;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 211
    :cond_2
    invoke-static {p1}, Landroid/support/design/widget/n$b;->b(Landroid/support/design/widget/n$b;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 212
    const/16 v0, 0x5dc

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/design/widget/n;Landroid/support/design/widget/n$b;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->b(Landroid/support/design/widget/n$b;)V

    return-void
.end method

.method private a(Landroid/support/design/widget/n$b;I)Z
    .locals 1

    .prologue
    .line 186
    invoke-static {p1}, Landroid/support/design/widget/n$b;->a(Landroid/support/design/widget/n$b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/n$a;

    .line 187
    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0, p2}, Landroid/support/design/widget/n$a;->a(I)V

    .line 189
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    iput-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    .line 173
    iput-object v1, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    .line 175
    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    invoke-static {v0}, Landroid/support/design/widget/n$b;->a(Landroid/support/design/widget/n$b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/n$a;

    .line 176
    if-eqz v0, :cond_1

    .line 177
    invoke-interface {v0}, Landroid/support/design/widget/n$a;->a()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iput-object v1, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    goto :goto_0
.end method

.method private b(Landroid/support/design/widget/n$b;)V
    .locals 2

    .prologue
    .line 219
    iget-object v1, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    if-ne v0, p1, :cond_1

    .line 221
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/n;->a(Landroid/support/design/widget/n$b;I)Z

    .line 223
    :cond_1
    monitor-exit v1

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private e(Landroid/support/design/widget/n$a;)Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/n$b;->a(Landroid/support/design/widget/n$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Landroid/support/design/widget/n$a;)Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/n$b;->a(Landroid/support/design/widget/n$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/design/widget/n$a;)V
    .locals 2

    .prologue
    .line 117
    iget-object v1, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->e(Landroid/support/design/widget/n$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    .line 121
    iget-object v0, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Landroid/support/design/widget/n;->b()V

    .line 125
    :cond_0
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/support/design/widget/n$a;I)V
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->e(Landroid/support/design/widget/n$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    invoke-direct {p0, v0, p2}, Landroid/support/design/widget/n;->a(Landroid/support/design/widget/n$b;I)Z

    .line 109
    :cond_0
    :goto_0
    monitor-exit v1

    .line 110
    return-void

    .line 106
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->f(Landroid/support/design/widget/n$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    invoke-direct {p0, v0, p2}, Landroid/support/design/widget/n;->a(Landroid/support/design/widget/n$b;I)Z

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Landroid/support/design/widget/n$a;)V
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->e(Landroid/support/design/widget/n$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    invoke-direct {p0, v0}, Landroid/support/design/widget/n;->a(Landroid/support/design/widget/n$b;)V

    .line 137
    :cond_0
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Landroid/support/design/widget/n$a;)V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->e(Landroid/support/design/widget/n$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/support/design/widget/n;->c:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 145
    :cond_0
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Landroid/support/design/widget/n$a;)V
    .locals 2

    .prologue
    .line 149
    iget-object v1, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->e(Landroid/support/design/widget/n$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    invoke-direct {p0, v0}, Landroid/support/design/widget/n;->a(Landroid/support/design/widget/n$b;)V

    .line 153
    :cond_0
    monitor-exit v1

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
