.class Lcom/comscore/analytics/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/analytics/ApplicationState;

.field final synthetic b:Lcom/comscore/analytics/ApplicationState;

.field final synthetic c:Lcom/comscore/analytics/SessionState;

.field final synthetic d:Lcom/comscore/analytics/SessionState;

.field final synthetic e:Lcom/comscore/analytics/a;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/a;Lcom/comscore/analytics/ApplicationState;Lcom/comscore/analytics/ApplicationState;Lcom/comscore/analytics/SessionState;Lcom/comscore/analytics/SessionState;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/analytics/e;->e:Lcom/comscore/analytics/a;

    iput-object p2, p0, Lcom/comscore/analytics/e;->a:Lcom/comscore/analytics/ApplicationState;

    iput-object p3, p0, Lcom/comscore/analytics/e;->b:Lcom/comscore/analytics/ApplicationState;

    iput-object p4, p0, Lcom/comscore/analytics/e;->c:Lcom/comscore/analytics/SessionState;

    iput-object p5, p0, Lcom/comscore/analytics/e;->d:Lcom/comscore/analytics/SessionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/comscore/analytics/e;->e:Lcom/comscore/analytics/a;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/comscore/analytics/e;->a:Lcom/comscore/analytics/ApplicationState;

    iget-object v4, p0, Lcom/comscore/analytics/e;->b:Lcom/comscore/analytics/ApplicationState;

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/comscore/analytics/e;->e:Lcom/comscore/analytics/a;

    iget-object v4, p0, Lcom/comscore/analytics/e;->e:Lcom/comscore/analytics/a;

    iget-object v4, v4, Lcom/comscore/analytics/a;->x:Lcom/comscore/analytics/ApplicationState;

    invoke-virtual {v2, v4}, Lcom/comscore/analytics/a;->a(Lcom/comscore/analytics/ApplicationState;)V

    iget-object v2, p0, Lcom/comscore/analytics/e;->e:Lcom/comscore/analytics/a;

    iget-object v4, p0, Lcom/comscore/analytics/e;->b:Lcom/comscore/analytics/ApplicationState;

    invoke-virtual {v2, v4}, Lcom/comscore/analytics/a;->b(Lcom/comscore/analytics/ApplicationState;)V

    iget-object v2, p0, Lcom/comscore/analytics/e;->e:Lcom/comscore/analytics/a;

    invoke-virtual {v2}, Lcom/comscore/analytics/a;->C()V

    iget-object v2, p0, Lcom/comscore/analytics/e;->e:Lcom/comscore/analytics/a;

    iget-object v4, p0, Lcom/comscore/analytics/e;->b:Lcom/comscore/analytics/ApplicationState;

    iput-object v4, v2, Lcom/comscore/analytics/a;->x:Lcom/comscore/analytics/ApplicationState;

    move v2, v0

    :goto_0
    iget-object v4, p0, Lcom/comscore/analytics/e;->c:Lcom/comscore/analytics/SessionState;

    iget-object v5, p0, Lcom/comscore/analytics/e;->d:Lcom/comscore/analytics/SessionState;

    if-eq v4, v5, :cond_2

    iget-object v1, p0, Lcom/comscore/analytics/e;->e:Lcom/comscore/analytics/a;

    iget-object v4, p0, Lcom/comscore/analytics/e;->e:Lcom/comscore/analytics/a;

    iget-object v4, v4, Lcom/comscore/analytics/a;->K:Lcom/comscore/analytics/SessionState;

    invoke-virtual {v1, v4}, Lcom/comscore/analytics/a;->a(Lcom/comscore/analytics/SessionState;)V

    iget-object v1, p0, Lcom/comscore/analytics/e;->e:Lcom/comscore/analytics/a;

    iget-object v4, p0, Lcom/comscore/analytics/e;->d:Lcom/comscore/analytics/SessionState;

    invoke-virtual {v1, v4}, Lcom/comscore/analytics/a;->b(Lcom/comscore/analytics/SessionState;)V

    iget-object v1, p0, Lcom/comscore/analytics/e;->e:Lcom/comscore/analytics/a;

    invoke-virtual {v1}, Lcom/comscore/analytics/a;->D()V

    iget-object v1, p0, Lcom/comscore/analytics/e;->e:Lcom/comscore/analytics/a;

    iget-object v4, p0, Lcom/comscore/analytics/e;->d:Lcom/comscore/analytics/SessionState;

    iput-object v4, v1, Lcom/comscore/analytics/a;->K:Lcom/comscore/analytics/SessionState;

    :goto_1
    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/comscore/analytics/e;->e:Lcom/comscore/analytics/a;

    iget-object v2, p0, Lcom/comscore/analytics/e;->a:Lcom/comscore/analytics/ApplicationState;

    iget-object v4, p0, Lcom/comscore/analytics/e;->e:Lcom/comscore/analytics/a;

    iget-object v4, v4, Lcom/comscore/analytics/a;->x:Lcom/comscore/analytics/ApplicationState;

    invoke-virtual {v1, v2, v4}, Lcom/comscore/analytics/a;->a(Lcom/comscore/analytics/ApplicationState;Lcom/comscore/analytics/ApplicationState;)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/comscore/analytics/e;->e:Lcom/comscore/analytics/a;

    iget-object v1, p0, Lcom/comscore/analytics/e;->c:Lcom/comscore/analytics/SessionState;

    iget-object v2, p0, Lcom/comscore/analytics/e;->e:Lcom/comscore/analytics/a;

    iget-object v2, v2, Lcom/comscore/analytics/a;->K:Lcom/comscore/analytics/SessionState;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/analytics/a;->a(Lcom/comscore/analytics/SessionState;Lcom/comscore/analytics/SessionState;)V

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_0
.end method
