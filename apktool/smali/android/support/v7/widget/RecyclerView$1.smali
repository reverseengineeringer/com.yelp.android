.class Landroid/support/v7/widget/RecyclerView$1;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$1;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$1;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$1;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    const-string/jumbo v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/i;->a(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$1;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 267
    invoke-static {}, Landroid/support/v4/os/i;->a()V

    goto :goto_0

    .line 268
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$1;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const-string/jumbo v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/i;->a(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$1;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 271
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$1;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->b()V

    .line 272
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$1;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 275
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$1;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->o()V

    .line 277
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$1;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 278
    invoke-static {}, Landroid/support/v4/os/i;->a()V

    goto :goto_0
.end method
