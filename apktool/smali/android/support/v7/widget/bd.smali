.class Landroid/support/v7/widget/bd;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Landroid/support/v7/widget/bd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Landroid/support/v7/widget/bd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    const-string/jumbo v0, "RV FullInvalidate"

    invoke-static {v0}, Lcom/yelp/android/c/h;->a(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Landroid/support/v7/widget/bd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->j()V

    .line 255
    invoke-static {}, Lcom/yelp/android/c/h;->a()V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/bd;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const-string/jumbo v0, "RV PartialInvalidate"

    invoke-static {v0}, Lcom/yelp/android/c/h;->a(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Landroid/support/v7/widget/bd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 259
    iget-object v0, p0, Landroid/support/v7/widget/bd;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->b()V

    .line 260
    iget-object v0, p0, Landroid/support/v7/widget/bd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 263
    iget-object v0, p0, Landroid/support/v7/widget/bd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->n()V

    .line 265
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/bd;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 266
    invoke-static {}, Lcom/yelp/android/c/h;->a()V

    goto :goto_0
.end method
