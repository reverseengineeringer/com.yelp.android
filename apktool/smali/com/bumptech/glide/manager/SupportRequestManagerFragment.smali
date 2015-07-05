.class public Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
.super Landroid/support/v4/app/Fragment;
.source "SupportRequestManagerFragment.java"


# instance fields
.field private a:Lcom/bumptech/glide/j;

.field private final b:Lcom/bumptech/glide/manager/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/bumptech/glide/manager/a;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;-><init>(Lcom/bumptech/glide/manager/a;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/manager/a;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->b:Lcom/bumptech/glide/manager/a;

    .line 29
    return-void
.end method


# virtual methods
.method a()Lcom/bumptech/glide/manager/a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->b:Lcom/bumptech/glide/manager/a;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/j;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a:Lcom/bumptech/glide/j;

    .line 38
    return-void
.end method

.method public b()Lcom/bumptech/glide/j;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a:Lcom/bumptech/glide/j;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 66
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->b:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->c()V

    .line 67
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 54
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->b:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->a()V

    .line 55
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->b:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->b()V

    .line 61
    return-void
.end method
