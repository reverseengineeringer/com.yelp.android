.class public Lcom/comscore/analytics/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/analytics/a;


# direct methods
.method public constructor <init>(Lcom/comscore/analytics/a;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/analytics/b;->a:Lcom/comscore/analytics/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/comscore/analytics/b;->a:Lcom/comscore/analytics/a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/comscore/analytics/b;->a:Lcom/comscore/analytics/a;

    invoke-static {v0}, Lcom/comscore/analytics/a;->a(Lcom/comscore/analytics/a;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/comscore/analytics/b;->a:Lcom/comscore/analytics/a;

    iget-object v0, v0, Lcom/comscore/analytics/a;->X:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/comscore/analytics/b;->a:Lcom/comscore/analytics/a;

    iget-object v0, v0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/an/a;

    iget-object v2, p0, Lcom/comscore/analytics/b;->a:Lcom/comscore/analytics/a;

    iget-object v2, v2, Lcom/comscore/analytics/a;->X:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/yelp/android/an/a;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/comscore/analytics/b;->a:Lcom/comscore/analytics/a;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/comscore/analytics/a;->X:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/comscore/analytics/b;->a:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->x()V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
