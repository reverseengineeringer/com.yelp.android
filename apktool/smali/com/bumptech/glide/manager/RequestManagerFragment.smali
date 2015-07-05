.class public Lcom/bumptech/glide/manager/RequestManagerFragment;
.super Landroid/app/Fragment;
.source "RequestManagerFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/manager/a;

.field private b:Lcom/bumptech/glide/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/bumptech/glide/manager/a;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;-><init>(Lcom/bumptech/glide/manager/a;)V

    .line 26
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/manager/a;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->a:Lcom/bumptech/glide/manager/a;

    .line 32
    return-void
.end method


# virtual methods
.method a()Lcom/bumptech/glide/manager/a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->a:Lcom/bumptech/glide/manager/a;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/j;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->b:Lcom/bumptech/glide/j;

    .line 41
    return-void
.end method

.method public b()Lcom/bumptech/glide/j;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->b:Lcom/bumptech/glide/j;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 69
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->a:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->c()V

    .line 70
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 57
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->a:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->a()V

    .line 58
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->a:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->b()V

    .line 64
    return-void
.end method
