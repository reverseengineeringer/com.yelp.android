.class Lcom/comscore/analytics/g;
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

    iput-object p1, p0, Lcom/comscore/analytics/g;->e:Lcom/comscore/analytics/a;

    iput-object p2, p0, Lcom/comscore/analytics/g;->a:Lcom/comscore/analytics/ApplicationState;

    iput-object p3, p0, Lcom/comscore/analytics/g;->b:Lcom/comscore/analytics/ApplicationState;

    iput-object p4, p0, Lcom/comscore/analytics/g;->c:Lcom/comscore/analytics/SessionState;

    iput-object p5, p0, Lcom/comscore/analytics/g;->d:Lcom/comscore/analytics/SessionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/comscore/analytics/g;->a:Lcom/comscore/analytics/ApplicationState;

    iget-object v3, p0, Lcom/comscore/analytics/g;->b:Lcom/comscore/analytics/ApplicationState;

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/comscore/analytics/g;->e:Lcom/comscore/analytics/a;

    iget-object v3, p0, Lcom/comscore/analytics/g;->e:Lcom/comscore/analytics/a;

    iget-object v3, v3, Lcom/comscore/analytics/a;->x:Lcom/comscore/analytics/ApplicationState;

    invoke-virtual {v0, v3}, Lcom/comscore/analytics/a;->a(Lcom/comscore/analytics/ApplicationState;)V

    iget-object v0, p0, Lcom/comscore/analytics/g;->e:Lcom/comscore/analytics/a;

    iget-object v3, p0, Lcom/comscore/analytics/g;->b:Lcom/comscore/analytics/ApplicationState;

    invoke-virtual {v0, v3}, Lcom/comscore/analytics/a;->b(Lcom/comscore/analytics/ApplicationState;)V

    iget-object v0, p0, Lcom/comscore/analytics/g;->e:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->C()V

    iget-object v0, p0, Lcom/comscore/analytics/g;->e:Lcom/comscore/analytics/a;

    iget-object v3, p0, Lcom/comscore/analytics/g;->b:Lcom/comscore/analytics/ApplicationState;

    iput-object v3, v0, Lcom/comscore/analytics/a;->x:Lcom/comscore/analytics/ApplicationState;

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/comscore/analytics/g;->c:Lcom/comscore/analytics/SessionState;

    iget-object v4, p0, Lcom/comscore/analytics/g;->d:Lcom/comscore/analytics/SessionState;

    if-eq v3, v4, :cond_2

    iget-object v2, p0, Lcom/comscore/analytics/g;->e:Lcom/comscore/analytics/a;

    iget-object v3, p0, Lcom/comscore/analytics/g;->e:Lcom/comscore/analytics/a;

    iget-object v3, v3, Lcom/comscore/analytics/a;->K:Lcom/comscore/analytics/SessionState;

    invoke-virtual {v2, v3}, Lcom/comscore/analytics/a;->a(Lcom/comscore/analytics/SessionState;)V

    iget-object v2, p0, Lcom/comscore/analytics/g;->e:Lcom/comscore/analytics/a;

    iget-object v3, p0, Lcom/comscore/analytics/g;->d:Lcom/comscore/analytics/SessionState;

    invoke-virtual {v2, v3}, Lcom/comscore/analytics/a;->b(Lcom/comscore/analytics/SessionState;)V

    iget-object v2, p0, Lcom/comscore/analytics/g;->e:Lcom/comscore/analytics/a;

    invoke-virtual {v2}, Lcom/comscore/analytics/a;->D()V

    iget-object v2, p0, Lcom/comscore/analytics/g;->e:Lcom/comscore/analytics/a;

    iget-object v3, p0, Lcom/comscore/analytics/g;->d:Lcom/comscore/analytics/SessionState;

    iput-object v3, v2, Lcom/comscore/analytics/a;->K:Lcom/comscore/analytics/SessionState;

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/analytics/g;->e:Lcom/comscore/analytics/a;

    iget-object v2, p0, Lcom/comscore/analytics/g;->a:Lcom/comscore/analytics/ApplicationState;

    iget-object v3, p0, Lcom/comscore/analytics/g;->e:Lcom/comscore/analytics/a;

    iget-object v3, v3, Lcom/comscore/analytics/a;->x:Lcom/comscore/analytics/ApplicationState;

    invoke-virtual {v0, v2, v3}, Lcom/comscore/analytics/a;->a(Lcom/comscore/analytics/ApplicationState;Lcom/comscore/analytics/ApplicationState;)V

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/comscore/analytics/g;->e:Lcom/comscore/analytics/a;

    iget-object v1, p0, Lcom/comscore/analytics/g;->c:Lcom/comscore/analytics/SessionState;

    iget-object v2, p0, Lcom/comscore/analytics/g;->e:Lcom/comscore/analytics/a;

    iget-object v2, v2, Lcom/comscore/analytics/a;->K:Lcom/comscore/analytics/SessionState;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/analytics/a;->a(Lcom/comscore/analytics/SessionState;Lcom/comscore/analytics/SessionState;)V

    :cond_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method
