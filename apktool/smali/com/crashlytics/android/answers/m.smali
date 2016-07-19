.class Lcom/crashlytics/android/answers/m;
.super Ljava/lang/Object;
.source "SessionAnalyticsManager.java"


# instance fields
.field final a:Lcom/crashlytics/android/answers/o;

.field final b:Lcom/crashlytics/android/answers/q;

.field c:Z


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/o;Lcom/crashlytics/android/answers/q;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crashlytics/android/answers/m;->c:Z

    .line 42
    iput-object p1, p0, Lcom/crashlytics/android/answers/m;->a:Lcom/crashlytics/android/answers/o;

    .line 43
    iput-object p2, p0, Lcom/crashlytics/android/answers/m;->b:Lcom/crashlytics/android/answers/q;

    .line 44
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/crashlytics/android/answers/o;Lcom/crashlytics/android/answers/k;Lio/fabric/sdk/android/services/network/c;)Lcom/crashlytics/android/answers/m;
    .locals 3

    .prologue
    .line 32
    const-string/jumbo v0, "Crashlytics SAM"

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/l;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/crashlytics/android/answers/e;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/crashlytics/android/answers/e;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/answers/k;Lio/fabric/sdk/android/services/network/c;)V

    .line 36
    new-instance v2, Lcom/crashlytics/android/answers/q;

    invoke-direct {v2, p0, v1, p2, v0}, Lcom/crashlytics/android/answers/q;-><init>(Landroid/content/Context;Lcom/yelp/android/ct/i;Lcom/crashlytics/android/answers/k;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 38
    new-instance v0, Lcom/crashlytics/android/answers/m;

    invoke-direct {v0, p1, v2}, Lcom/crashlytics/android/answers/m;-><init>(Lcom/crashlytics/android/answers/o;Lcom/crashlytics/android/answers/q;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/crashlytics/android/answers/m;->b:Lcom/crashlytics/android/answers/q;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/q;->b()V

    .line 121
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/crashlytics/android/answers/m;->b:Lcom/crashlytics/android/answers/q;

    iget-object v1, p0, Lcom/crashlytics/android/answers/m;->a:Lcom/crashlytics/android/answers/o;

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->CREATE:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-static {v1, v2, p1}, Lcom/crashlytics/android/answers/SessionEvent;->a(Lcom/crashlytics/android/answers/o;Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/answers/q;->a(Ljava/lang/Object;Z)V

    .line 81
    return-void
.end method

.method public a(Lio/fabric/sdk/android/services/settings/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p1, Lio/fabric/sdk/android/services/settings/b;->f:Z

    iput-boolean v0, p0, Lcom/crashlytics/android/answers/m;->c:Z

    .line 116
    iget-object v0, p0, Lcom/crashlytics/android/answers/m;->b:Lcom/crashlytics/android/answers/q;

    invoke-virtual {v0, p1, p2}, Lcom/crashlytics/android/answers/q;->a(Lio/fabric/sdk/android/services/settings/b;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onCrash called from main thread!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/m;->b:Lcom/crashlytics/android/answers/q;

    iget-object v1, p0, Lcom/crashlytics/android/answers/m;->a:Lcom/crashlytics/android/answers/o;

    invoke-static {v1, p1}, Lcom/crashlytics/android/answers/SessionEvent;->b(Lcom/crashlytics/android/answers/o;Ljava/lang/String;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/q;->a(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/crashlytics/android/answers/m;->b:Lcom/crashlytics/android/answers/q;

    iget-object v1, p0, Lcom/crashlytics/android/answers/m;->a:Lcom/crashlytics/android/answers/o;

    invoke-static {v1}, Lcom/crashlytics/android/answers/SessionEvent;->a(Lcom/crashlytics/android/answers/o;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/answers/q;->a(Ljava/lang/Object;Z)V

    .line 76
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/crashlytics/android/answers/m;->b:Lcom/crashlytics/android/answers/q;

    iget-object v1, p0, Lcom/crashlytics/android/answers/m;->a:Lcom/crashlytics/android/answers/o;

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->DESTROY:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-static {v1, v2, p1}, Lcom/crashlytics/android/answers/SessionEvent;->a(Lcom/crashlytics/android/answers/o;Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/answers/q;->a(Ljava/lang/Object;Z)V

    .line 86
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/crashlytics/android/answers/m;->b:Lcom/crashlytics/android/answers/q;

    iget-object v1, p0, Lcom/crashlytics/android/answers/m;->a:Lcom/crashlytics/android/answers/o;

    invoke-static {v1, p1}, Lcom/crashlytics/android/answers/SessionEvent;->a(Lcom/crashlytics/android/answers/o;Ljava/lang/String;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/answers/q;->a(Ljava/lang/Object;Z)V

    .line 72
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/crashlytics/android/answers/m;->b:Lcom/crashlytics/android/answers/q;

    iget-object v1, p0, Lcom/crashlytics/android/answers/m;->a:Lcom/crashlytics/android/answers/o;

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->PAUSE:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-static {v1, v2, p1}, Lcom/crashlytics/android/answers/SessionEvent;->a(Lcom/crashlytics/android/answers/o;Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/answers/q;->a(Ljava/lang/Object;Z)V

    .line 91
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/crashlytics/android/answers/m;->b:Lcom/crashlytics/android/answers/q;

    iget-object v1, p0, Lcom/crashlytics/android/answers/m;->a:Lcom/crashlytics/android/answers/o;

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->RESUME:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-static {v1, v2, p1}, Lcom/crashlytics/android/answers/SessionEvent;->a(Lcom/crashlytics/android/answers/o;Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/answers/q;->a(Ljava/lang/Object;Z)V

    .line 96
    return-void
.end method

.method public e(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/crashlytics/android/answers/m;->b:Lcom/crashlytics/android/answers/q;

    iget-object v1, p0, Lcom/crashlytics/android/answers/m;->a:Lcom/crashlytics/android/answers/o;

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->SAVE_INSTANCE_STATE:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-static {v1, v2, p1}, Lcom/crashlytics/android/answers/SessionEvent;->a(Lcom/crashlytics/android/answers/o;Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/answers/q;->a(Ljava/lang/Object;Z)V

    .line 101
    return-void
.end method

.method public f(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/crashlytics/android/answers/m;->b:Lcom/crashlytics/android/answers/q;

    iget-object v1, p0, Lcom/crashlytics/android/answers/m;->a:Lcom/crashlytics/android/answers/o;

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->START:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-static {v1, v2, p1}, Lcom/crashlytics/android/answers/SessionEvent;->a(Lcom/crashlytics/android/answers/o;Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/answers/q;->a(Ljava/lang/Object;Z)V

    .line 106
    return-void
.end method

.method public g(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/crashlytics/android/answers/m;->b:Lcom/crashlytics/android/answers/q;

    iget-object v1, p0, Lcom/crashlytics/android/answers/m;->a:Lcom/crashlytics/android/answers/o;

    sget-object v2, Lcom/crashlytics/android/answers/SessionEvent$Type;->STOP:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-static {v1, v2, p1}, Lcom/crashlytics/android/answers/SessionEvent;->a(Lcom/crashlytics/android/answers/o;Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/answers/q;->a(Ljava/lang/Object;Z)V

    .line 111
    return-void
.end method
