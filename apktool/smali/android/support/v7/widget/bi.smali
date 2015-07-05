.class public abstract Landroid/support/v7/widget/bi;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/ce;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/bj;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4730
    new-instance v0, Landroid/support/v7/widget/bj;

    invoke-direct {v0}, Landroid/support/v7/widget/bj;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bi;->a:Landroid/support/v7/widget/bj;

    .line 4731
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/bi;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 4822
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 5006
    return-void
.end method

.method public a(Landroid/support/v7/widget/bk;)V
    .locals 1

    .prologue
    .line 4980
    iget-object v0, p0, Landroid/support/v7/widget/bi;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bj;->registerObserver(Ljava/lang/Object;)V

    .line 4981
    return-void
.end method

.method public a(Landroid/support/v7/widget/ce;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 4889
    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/ce;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 4850
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ce;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 4782
    const-string/jumbo v0, "RV CreateView"

    invoke-static {v0}, Lcom/yelp/android/c/h;->a(Ljava/lang/String;)V

    .line 4783
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/bi;->a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ce;

    move-result-object v0

    .line 4784
    iput p2, v0, Landroid/support/v7/widget/ce;->e:I

    .line 4785
    invoke-static {}, Lcom/yelp/android/c/h;->a()V

    .line 4786
    return-object v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 5015
    return-void
.end method

.method public b(Landroid/support/v7/widget/bk;)V
    .locals 1

    .prologue
    .line 4994
    iget-object v0, p0, Landroid/support/v7/widget/bi;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bj;->unregisterObserver(Ljava/lang/Object;)V

    .line 4995
    return-void
.end method

.method public final b(Landroid/support/v7/widget/ce;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 4797
    iput p2, p1, Landroid/support/v7/widget/ce;->b:I

    .line 4798
    invoke-virtual {p0}, Landroid/support/v7/widget/bi;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4799
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/bi;->b(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/support/v7/widget/ce;->d:J

    .line 4801
    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x207

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/ce;->a(II)V

    .line 4804
    const-string/jumbo v0, "RV OnBindView"

    invoke-static {v0}, Lcom/yelp/android/c/h;->a(Ljava/lang/String;)V

    .line 4805
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/bi;->a(Landroid/support/v7/widget/ce;I)V

    .line 4806
    invoke-static {}, Lcom/yelp/android/c/h;->a()V

    .line 4807
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 4868
    iget-boolean v0, p0, Landroid/support/v7/widget/bi;->b:Z

    return v0
.end method

.method public b(Landroid/support/v7/widget/ce;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .prologue
    .line 4926
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 5047
    iget-object v0, p0, Landroid/support/v7/widget/bi;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->a()V

    .line 5048
    return-void
.end method

.method public c(Landroid/support/v7/widget/ce;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 4940
    return-void
.end method

.method public d(Landroid/support/v7/widget/ce;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 4952
    return-void
.end method
