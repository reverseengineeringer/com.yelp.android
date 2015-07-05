.class Lcom/comscore/analytics/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/comscore/analytics/a;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/analytics/s;->b:Lcom/comscore/analytics/a;

    iput-boolean p2, p0, Lcom/comscore/analytics/s;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/comscore/analytics/s;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/comscore/analytics/s;->b:Lcom/comscore/analytics/a;

    invoke-static {v0}, Lcom/comscore/analytics/a;->a(Lcom/comscore/analytics/a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/comscore/analytics/s;->b:Lcom/comscore/analytics/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/comscore/analytics/a;->a(Lcom/comscore/analytics/a;Z)Z

    iget-object v0, p0, Lcom/comscore/analytics/s;->b:Lcom/comscore/analytics/a;

    iget-object v1, p0, Lcom/comscore/analytics/s;->b:Lcom/comscore/analytics/a;

    invoke-static {v1}, Lcom/comscore/analytics/a;->b(Lcom/comscore/analytics/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/comscore/analytics/a;->q(Z)V

    iget-object v0, p0, Lcom/comscore/analytics/s;->b:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->a()V

    iget-object v0, p0, Lcom/comscore/analytics/s;->b:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->q()Lcom/comscore/utils/ConnectivityChangeReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a()V

    iget-object v0, p0, Lcom/comscore/analytics/s;->b:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->u()Lcom/comscore/applications/d;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/comscore/applications/d;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/comscore/analytics/s;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/s;->b:Lcom/comscore/analytics/a;

    invoke-static {v0}, Lcom/comscore/analytics/a;->a(Lcom/comscore/analytics/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/s;->b:Lcom/comscore/analytics/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/comscore/analytics/a;->a(Lcom/comscore/analytics/a;Z)Z

    iget-object v0, p0, Lcom/comscore/analytics/s;->b:Lcom/comscore/analytics/a;

    iget-object v1, p0, Lcom/comscore/analytics/s;->b:Lcom/comscore/analytics/a;

    iget-boolean v1, v1, Lcom/comscore/analytics/a;->af:Z

    invoke-static {v0, v1}, Lcom/comscore/analytics/a;->b(Lcom/comscore/analytics/a;Z)Z

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/analytics/s;->b:Lcom/comscore/analytics/a;

    iget-object v1, v1, Lcom/comscore/analytics/a;->ag:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/comscore/analytics/s;->b:Lcom/comscore/analytics/a;

    iget-object v0, v0, Lcom/comscore/analytics/a;->ag:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_2
    iget-object v0, p0, Lcom/comscore/analytics/s;->b:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->q()Lcom/comscore/utils/ConnectivityChangeReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->b()V

    iget-object v0, p0, Lcom/comscore/analytics/s;->b:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->u()Lcom/comscore/applications/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/applications/d;->d()V

    iget-object v0, p0, Lcom/comscore/analytics/s;->b:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->p()Lcom/comscore/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/utils/j;->e()V

    iget-object v0, p0, Lcom/comscore/analytics/s;->b:Lcom/comscore/analytics/a;

    iget-object v0, v0, Lcom/comscore/analytics/a;->f:Lcom/yelp/android/an/a;

    invoke-virtual {v0}, Lcom/yelp/android/an/a;->c()V

    goto :goto_0
.end method
