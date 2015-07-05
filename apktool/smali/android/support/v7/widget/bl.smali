.class public abstract Landroid/support/v7/widget/bl;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field private a:Landroid/support/v7/widget/bn;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/bm;",
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

    .line 8803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8805
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/bl;->a:Landroid/support/v7/widget/bn;

    .line 8806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bl;->b:Ljava/util/ArrayList;

    .line 8809
    iput-wide v2, p0, Landroid/support/v7/widget/bl;->c:J

    .line 8810
    iput-wide v2, p0, Landroid/support/v7/widget/bl;->d:J

    .line 8811
    iput-wide v4, p0, Landroid/support/v7/widget/bl;->e:J

    .line 8812
    iput-wide v4, p0, Landroid/support/v7/widget/bl;->f:J

    .line 8814
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/bl;->g:Z

    .line 9228
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method a(Landroid/support/v7/widget/bn;)V
    .locals 0

    .prologue
    .line 8926
    iput-object p1, p0, Landroid/support/v7/widget/bl;->a:Landroid/support/v7/widget/bn;

    .line 8927
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ce;Z)V
    .locals 1

    .prologue
    .line 9088
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/bl;->d(Landroid/support/v7/widget/ce;Z)V

    .line 9089
    iget-object v0, p0, Landroid/support/v7/widget/bl;->a:Landroid/support/v7/widget/bn;

    if-eqz v0, :cond_0

    .line 9090
    iget-object v0, p0, Landroid/support/v7/widget/bl;->a:Landroid/support/v7/widget/bn;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/bn;->d(Landroid/support/v7/widget/ce;)V

    .line 9092
    :cond_0
    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/ce;)Z
.end method

.method public abstract a(Landroid/support/v7/widget/ce;IIII)Z
.end method

.method public abstract a(Landroid/support/v7/widget/ce;Landroid/support/v7/widget/ce;IIII)Z
.end method

.method public final b(Landroid/support/v7/widget/ce;Z)V
    .locals 0

    .prologue
    .line 9131
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/bl;->c(Landroid/support/v7/widget/ce;Z)V

    .line 9132
    return-void
.end method

.method public abstract b()Z
.end method

.method public abstract b(Landroid/support/v7/widget/ce;)Z
.end method

.method public abstract c()V
.end method

.method public abstract c(Landroid/support/v7/widget/ce;)V
.end method

.method public c(Landroid/support/v7/widget/ce;Z)V
    .locals 0

    .prologue
    .line 9302
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 8822
    iget-wide v0, p0, Landroid/support/v7/widget/bl;->e:J

    return-wide v0
.end method

.method public final d(Landroid/support/v7/widget/ce;)V
    .locals 1

    .prologue
    .line 9047
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bl;->k(Landroid/support/v7/widget/ce;)V

    .line 9048
    iget-object v0, p0, Landroid/support/v7/widget/bl;->a:Landroid/support/v7/widget/bn;

    if-eqz v0, :cond_0

    .line 9049
    iget-object v0, p0, Landroid/support/v7/widget/bl;->a:Landroid/support/v7/widget/bn;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/bn;->a(Landroid/support/v7/widget/ce;)V

    .line 9051
    :cond_0
    return-void
.end method

.method public d(Landroid/support/v7/widget/ce;Z)V
    .locals 0

    .prologue
    .line 9314
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 8840
    iget-wide v0, p0, Landroid/support/v7/widget/bl;->c:J

    return-wide v0
.end method

.method public final e(Landroid/support/v7/widget/ce;)V
    .locals 1

    .prologue
    .line 9059
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bl;->o(Landroid/support/v7/widget/ce;)V

    .line 9060
    iget-object v0, p0, Landroid/support/v7/widget/bl;->a:Landroid/support/v7/widget/bn;

    if-eqz v0, :cond_0

    .line 9061
    iget-object v0, p0, Landroid/support/v7/widget/bl;->a:Landroid/support/v7/widget/bn;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/bn;->c(Landroid/support/v7/widget/ce;)V

    .line 9063
    :cond_0
    return-void
.end method

.method public f()J
    .locals 2

    .prologue
    .line 8858
    iget-wide v0, p0, Landroid/support/v7/widget/bl;->d:J

    return-wide v0
.end method

.method public final f(Landroid/support/v7/widget/ce;)V
    .locals 1

    .prologue
    .line 9071
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bl;->m(Landroid/support/v7/widget/ce;)V

    .line 9072
    iget-object v0, p0, Landroid/support/v7/widget/bl;->a:Landroid/support/v7/widget/bn;

    if-eqz v0, :cond_0

    .line 9073
    iget-object v0, p0, Landroid/support/v7/widget/bl;->a:Landroid/support/v7/widget/bn;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/bn;->b(Landroid/support/v7/widget/ce;)V

    .line 9075
    :cond_0
    return-void
.end method

.method public g()J
    .locals 2

    .prologue
    .line 8876
    iget-wide v0, p0, Landroid/support/v7/widget/bl;->f:J

    return-wide v0
.end method

.method public final g(Landroid/support/v7/widget/ce;)V
    .locals 0

    .prologue
    .line 9100
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bl;->j(Landroid/support/v7/widget/ce;)V

    .line 9101
    return-void
.end method

.method public final h(Landroid/support/v7/widget/ce;)V
    .locals 0

    .prologue
    .line 9109
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bl;->n(Landroid/support/v7/widget/ce;)V

    .line 9110
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 8894
    iget-boolean v0, p0, Landroid/support/v7/widget/bl;->g:Z

    return v0
.end method

.method public final i()V
    .locals 3

    .prologue
    .line 9214
    iget-object v0, p0, Landroid/support/v7/widget/bl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 9215
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 9216
    iget-object v0, p0, Landroid/support/v7/widget/bl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bm;

    invoke-interface {v0}, Landroid/support/v7/widget/bm;->a()V

    .line 9215
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 9218
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bl;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9219
    return-void
.end method

.method public final i(Landroid/support/v7/widget/ce;)V
    .locals 0

    .prologue
    .line 9118
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bl;->l(Landroid/support/v7/widget/ce;)V

    .line 9119
    return-void
.end method

.method public j(Landroid/support/v7/widget/ce;)V
    .locals 0

    .prologue
    .line 9240
    return-void
.end method

.method public k(Landroid/support/v7/widget/ce;)V
    .locals 0

    .prologue
    .line 9250
    return-void
.end method

.method public l(Landroid/support/v7/widget/ce;)V
    .locals 0

    .prologue
    .line 9260
    return-void
.end method

.method public m(Landroid/support/v7/widget/ce;)V
    .locals 0

    .prologue
    .line 9270
    return-void
.end method

.method public n(Landroid/support/v7/widget/ce;)V
    .locals 0

    .prologue
    .line 9280
    return-void
.end method

.method public o(Landroid/support/v7/widget/ce;)V
    .locals 0

    .prologue
    .line 9290
    return-void
.end method
