.class final Lbolts/m;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbolts/j;

.field final synthetic b:Lbolts/k;

.field final synthetic c:Lbolts/s;


# direct methods
.method constructor <init>(Lbolts/j;Lbolts/k;Lbolts/s;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lbolts/m;->a:Lbolts/j;

    iput-object p2, p0, Lbolts/m;->b:Lbolts/k;

    iput-object p3, p0, Lbolts/m;->c:Lbolts/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 486
    :try_start_0
    iget-object v0, p0, Lbolts/m;->a:Lbolts/j;

    iget-object v1, p0, Lbolts/m;->b:Lbolts/k;

    invoke-interface {v0, v1}, Lbolts/j;->then(Lbolts/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/k;

    .line 487
    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lbolts/m;->c:Lbolts/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/s;->b(Ljava/lang/Object;)V

    .line 507
    :goto_0
    return-void

    .line 490
    :cond_0
    new-instance v1, Lbolts/n;

    invoke-direct {v1, p0}, Lbolts/n;-><init>(Lbolts/m;)V

    invoke-virtual {v0, v1}, Lbolts/k;->a(Lbolts/j;)Lbolts/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    iget-object v1, p0, Lbolts/m;->c:Lbolts/s;

    invoke-virtual {v1, v0}, Lbolts/s;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
