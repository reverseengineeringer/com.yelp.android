.class Lcom/bumptech/glide/k;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bumptech/glide/manager/h;

.field final synthetic b:Lcom/bumptech/glide/j;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/j;Lcom/bumptech/glide/manager/h;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/bumptech/glide/k;->b:Lcom/bumptech/glide/j;

    iput-object p2, p0, Lcom/bumptech/glide/k;->a:Lcom/bumptech/glide/manager/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/k;->a:Lcom/bumptech/glide/manager/h;

    iget-object v1, p0, Lcom/bumptech/glide/k;->b:Lcom/bumptech/glide/j;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/h;->a(Lcom/bumptech/glide/manager/i;)V

    .line 73
    return-void
.end method
