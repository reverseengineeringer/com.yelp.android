.class public abstract Landroid/support/v7/widget/bz;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field private a:I

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Landroid/support/v7/widget/br;

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private final g:Landroid/support/v7/widget/ca;


# direct methods
.method private a(II)V
    .locals 3

    .prologue
    .line 8127
    iget-boolean v0, p0, Landroid/support/v7/widget/bz;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/bz;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 8128
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/bz;->a()V

    .line 8130
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/bz;->d:Z

    .line 8131
    iget-object v0, p0, Landroid/support/v7/widget/bz;->f:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 8133
    iget-object v0, p0, Landroid/support/v7/widget/bz;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bz;->a(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/bz;->a:I

    if-ne v0, v1, :cond_4

    .line 8134
    iget-object v0, p0, Landroid/support/v7/widget/bz;->f:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/bz;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v2, p0, Landroid/support/v7/widget/bz;->g:Landroid/support/v7/widget/ca;

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/bz;->a(Landroid/view/View;Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ca;)V

    .line 8135
    iget-object v0, p0, Landroid/support/v7/widget/bz;->g:Landroid/support/v7/widget/ca;

    iget-object v1, p0, Landroid/support/v7/widget/bz;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v7/widget/ca;->a(Landroid/support/v7/widget/ca;Landroid/support/v7/widget/RecyclerView;)V

    .line 8136
    invoke-virtual {p0}, Landroid/support/v7/widget/bz;->a()V

    .line 8142
    :cond_2
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/bz;->e:Z

    if-eqz v0, :cond_3

    .line 8143
    iget-object v0, p0, Landroid/support/v7/widget/bz;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v1, p0, Landroid/support/v7/widget/bz;->g:Landroid/support/v7/widget/ca;

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/bz;->a(IILandroid/support/v7/widget/cb;Landroid/support/v7/widget/ca;)V

    .line 8144
    iget-object v0, p0, Landroid/support/v7/widget/bz;->g:Landroid/support/v7/widget/ca;

    iget-object v1, p0, Landroid/support/v7/widget/bz;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v7/widget/ca;->a(Landroid/support/v7/widget/ca;Landroid/support/v7/widget/RecyclerView;)V

    .line 8146
    :cond_3
    return-void

    .line 8138
    :cond_4
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Passed over target position while smooth scrolling."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8139
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/bz;->f:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/bz;II)V
    .locals 0

    .prologue
    .line 8017
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/bz;->a(II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 8152
    iget-object v0, p0, Landroid/support/v7/widget/bz;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 8081
    iget-boolean v0, p0, Landroid/support/v7/widget/bz;->e:Z

    if-nez v0, :cond_0

    .line 8095
    :goto_0
    return-void

    .line 8084
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/bz;->e()V

    .line 8085
    iget-object v0, p0, Landroid/support/v7/widget/bz;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v0, v2}, Landroid/support/v7/widget/cb;->d(Landroid/support/v7/widget/cb;I)I

    .line 8086
    iput-object v1, p0, Landroid/support/v7/widget/bz;->f:Landroid/view/View;

    .line 8087
    iput v2, p0, Landroid/support/v7/widget/bz;->a:I

    .line 8088
    iput-boolean v3, p0, Landroid/support/v7/widget/bz;->d:Z

    .line 8089
    iput-boolean v3, p0, Landroid/support/v7/widget/bz;->e:Z

    .line 8091
    iget-object v0, p0, Landroid/support/v7/widget/bz;->c:Landroid/support/v7/widget/br;

    invoke-static {v0, p0}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/br;Landroid/support/v7/widget/bz;)V

    .line 8093
    iput-object v1, p0, Landroid/support/v7/widget/bz;->c:Landroid/support/v7/widget/br;

    .line 8094
    iput-object v1, p0, Landroid/support/v7/widget/bz;->b:Landroid/support/v7/widget/RecyclerView;

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 8064
    iput p1, p0, Landroid/support/v7/widget/bz;->a:I

    .line 8065
    return-void
.end method

.method protected abstract a(IILandroid/support/v7/widget/cb;Landroid/support/v7/widget/ca;)V
.end method

.method protected abstract a(Landroid/view/View;Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ca;)V
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 8177
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bz;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/bz;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 8178
    iput-object p1, p0, Landroid/support/v7/widget/bz;->f:Landroid/view/View;

    .line 8183
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 8105
    iget-boolean v0, p0, Landroid/support/v7/widget/bz;->d:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 8113
    iget-boolean v0, p0, Landroid/support/v7/widget/bz;->e:Z

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 8123
    iget v0, p0, Landroid/support/v7/widget/bz;->a:I

    return v0
.end method

.method protected abstract e()V
.end method
