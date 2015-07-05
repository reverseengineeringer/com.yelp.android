.class Landroid/support/v7/widget/bx;
.super Landroid/support/v7/widget/bk;
.source "RecyclerView.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 3641
    iput-object p1, p0, Landroid/support/v7/widget/bx;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/bk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/bd;)V
    .locals 0

    .prologue
    .line 3641
    invoke-direct {p0, p1}, Landroid/support/v7/widget/bx;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3644
    iget-object v0, p0, Landroid/support/v7/widget/bx;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 3645
    iget-object v0, p0, Landroid/support/v7/widget/bx;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/bi;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3649
    iget-object v0, p0, Landroid/support/v7/widget/bx;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v0, v2}, Landroid/support/v7/widget/cb;->a(Landroid/support/v7/widget/cb;Z)Z

    .line 3650
    iget-object v0, p0, Landroid/support/v7/widget/bx;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->l(Landroid/support/v7/widget/RecyclerView;)V

    .line 3655
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/bx;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3656
    iget-object v0, p0, Landroid/support/v7/widget/bx;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3658
    :cond_0
    return-void

    .line 3652
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bx;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v0, v2}, Landroid/support/v7/widget/cb;->a(Landroid/support/v7/widget/cb;Z)Z

    .line 3653
    iget-object v0, p0, Landroid/support/v7/widget/bx;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->l(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method
