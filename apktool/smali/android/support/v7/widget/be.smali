.class Landroid/support/v7/widget/be;
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
    .line 365
    iput-object p1, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    invoke-virtual {v0}, Landroid/support/v7/widget/bl;->a()V

    .line 371
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/be;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Z)Z

    .line 372
    return-void
.end method