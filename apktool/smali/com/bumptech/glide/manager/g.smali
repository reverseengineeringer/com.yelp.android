.class Lcom/bumptech/glide/manager/g;
.super Landroid/content/BroadcastReceiver;
.source "DefaultConnectivityMonitor.java"


# instance fields
.field final synthetic a:Lcom/bumptech/glide/manager/f;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/f;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/manager/g;->a:Lcom/bumptech/glide/manager/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bumptech/glide/manager/g;->a:Lcom/bumptech/glide/manager/f;

    invoke-static {v0}, Lcom/bumptech/glide/manager/f;->a(Lcom/bumptech/glide/manager/f;)Z

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/bumptech/glide/manager/g;->a:Lcom/bumptech/glide/manager/f;

    iget-object v2, p0, Lcom/bumptech/glide/manager/g;->a:Lcom/bumptech/glide/manager/f;

    invoke-static {v2, p1}, Lcom/bumptech/glide/manager/f;->a(Lcom/bumptech/glide/manager/f;Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bumptech/glide/manager/f;->a(Lcom/bumptech/glide/manager/f;Z)Z

    .line 22
    iget-object v1, p0, Lcom/bumptech/glide/manager/g;->a:Lcom/bumptech/glide/manager/f;

    invoke-static {v1}, Lcom/bumptech/glide/manager/f;->a(Lcom/bumptech/glide/manager/f;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/bumptech/glide/manager/g;->a:Lcom/bumptech/glide/manager/f;

    invoke-static {v0}, Lcom/bumptech/glide/manager/f;->b(Lcom/bumptech/glide/manager/f;)Lcom/bumptech/glide/manager/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/manager/g;->a:Lcom/bumptech/glide/manager/f;

    invoke-static {v1}, Lcom/bumptech/glide/manager/f;->a(Lcom/bumptech/glide/manager/f;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/d;->a(Z)V

    .line 25
    :cond_0
    return-void
.end method
