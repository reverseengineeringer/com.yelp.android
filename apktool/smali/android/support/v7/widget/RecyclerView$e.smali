.class public abstract Landroid/support/v7/widget/RecyclerView$e;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$e$a;,
        Landroid/support/v7/widget/RecyclerView$e$b;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView$e$b;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$e$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    .line 9697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9699
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$b;

    .line 9700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->b:Ljava/util/ArrayList;

    .line 9703
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$e;->c:J

    .line 9704
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$e;->d:J

    .line 9705
    iput-wide v4, p0, Landroid/support/v7/widget/RecyclerView$e;->e:J

    .line 9706
    iput-wide v4, p0, Landroid/support/v7/widget/RecyclerView$e;->f:J

    .line 9708
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$e;->g:Z

    .line 10122
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method a(Landroid/support/v7/widget/RecyclerView$e$b;)V
    .locals 0

    .prologue
    .line 9820
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$b;

    .line 9821
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$u;Z)V
    .locals 1

    .prologue
    .line 9982
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$e;->d(Landroid/support/v7/widget/RecyclerView$u;Z)V

    .line 9983
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$b;

    if-eqz v0, :cond_0

    .line 9984
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$e$b;->d(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 9986
    :cond_0
    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$u;)Z
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$u;IIII)Z
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$u;IIII)Z
.end method

.method public final b(Landroid/support/v7/widget/RecyclerView$u;Z)V
    .locals 0

    .prologue
    .line 10025
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$e;->c(Landroid/support/v7/widget/RecyclerView$u;Z)V

    .line 10026
    return-void
.end method

.method public abstract b()Z
.end method

.method public abstract b(Landroid/support/v7/widget/RecyclerView$u;)Z
.end method

.method public abstract c()V
.end method

.method public abstract c(Landroid/support/v7/widget/RecyclerView$u;)V
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$u;Z)V
    .locals 0

    .prologue
    .line 10196
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 9716
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$e;->e:J

    return-wide v0
.end method

.method public final d(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 1

    .prologue
    .line 9941
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$e;->k(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 9942
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$b;

    if-eqz v0, :cond_0

    .line 9943
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$e$b;->a(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 9945
    :cond_0
    return-void
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$u;Z)V
    .locals 0

    .prologue
    .line 10208
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 9734
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$e;->c:J

    return-wide v0
.end method

.method public final e(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 1

    .prologue
    .line 9953
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$e;->o(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 9954
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$b;

    if-eqz v0, :cond_0

    .line 9955
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$e$b;->c(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 9957
    :cond_0
    return-void
.end method

.method public f()J
    .locals 2

    .prologue
    .line 9752
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$e;->d:J

    return-wide v0
.end method

.method public final f(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 1

    .prologue
    .line 9965
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$e;->m(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 9966
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$b;

    if-eqz v0, :cond_0

    .line 9967
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$e$b;->b(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 9969
    :cond_0
    return-void
.end method

.method public g()J
    .locals 2

    .prologue
    .line 9770
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$e;->f:J

    return-wide v0
.end method

.method public final g(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    .prologue
    .line 9994
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$e;->j(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 9995
    return-void
.end method

.method public final h(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    .prologue
    .line 10003
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$e;->n(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 10004
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 9788
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$e;->g:Z

    return v0
.end method

.method public final i()V
    .locals 3

    .prologue
    .line 10108
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 10109
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 10110
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$e$a;

    invoke-interface {v0}, Landroid/support/v7/widget/RecyclerView$e$a;->a()V

    .line 10109
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 10112
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10113
    return-void
.end method

.method public final i(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    .prologue
    .line 10012
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$e;->l(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 10013
    return-void
.end method

.method public j(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    .prologue
    .line 10134
    return-void
.end method

.method public k(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    .prologue
    .line 10144
    return-void
.end method

.method public l(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    .prologue
    .line 10154
    return-void
.end method

.method public m(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    .prologue
    .line 10164
    return-void
.end method

.method public n(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    .prologue
    .line 10174
    return-void
.end method

.method public o(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    .prologue
    .line 10184
    return-void
.end method
