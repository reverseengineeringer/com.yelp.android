.class Landroid/support/v7/widget/ak;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Z

.field j:I

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/ce;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1814
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ak;->a:Z

    .line 1855
    iput v1, p0, Landroid/support/v7/widget/ak;->h:I

    .line 1862
    iput-boolean v1, p0, Landroid/support/v7/widget/ak;->i:Z

    .line 1873
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/ak;->k:Ljava/util/List;

    return-void
.end method

.method private b()Landroid/view/View;
    .locals 5

    .prologue
    .line 1905
    iget-object v0, p0, Landroid/support/v7/widget/ak;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1906
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 1907
    iget-object v0, p0, Landroid/support/v7/widget/ak;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 1908
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->p()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1906
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1911
    :cond_1
    iget v3, p0, Landroid/support/v7/widget/ak;->d:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1912
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ak;->a(Landroid/support/v7/widget/ce;)V

    .line 1913
    iget-object v0, v0, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    .line 1916
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method a(Landroid/support/v7/widget/bv;)Landroid/view/View;
    .locals 3

    .prologue
    .line 1889
    iget-object v0, p0, Landroid/support/v7/widget/ak;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1890
    invoke-direct {p0}, Landroid/support/v7/widget/ak;->b()Landroid/view/View;

    move-result-object v0

    .line 1894
    :goto_0
    return-object v0

    .line 1892
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ak;->d:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/bv;->c(I)Landroid/view/View;

    move-result-object v0

    .line 1893
    iget v1, p0, Landroid/support/v7/widget/ak;->d:I

    iget v2, p0, Landroid/support/v7/widget/ak;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/ak;->d:I

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 1920
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ak;->a(Landroid/support/v7/widget/ce;)V

    .line 1921
    return-void
.end method

.method public a(Landroid/support/v7/widget/ce;)V
    .locals 1

    .prologue
    .line 1924
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ak;->b(Landroid/support/v7/widget/ce;)Landroid/support/v7/widget/ce;

    move-result-object v0

    .line 1925
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/ak;->d:I

    .line 1927
    return-void

    .line 1925
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v0

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/cb;)Z
    .locals 2

    .prologue
    .line 1879
    iget v0, p0, Landroid/support/v7/widget/ak;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ak;->d:I

    invoke-virtual {p1}, Landroid/support/v7/widget/cb;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/ce;)Landroid/support/v7/widget/ce;
    .locals 7

    .prologue
    .line 1930
    iget-object v0, p0, Landroid/support/v7/widget/ak;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 1931
    const/4 v3, 0x0

    .line 1932
    const v1, 0x7fffffff

    .line 1936
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_4

    .line 1937
    iget-object v0, p0, Landroid/support/v7/widget/ak;->k:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 1938
    if-eq v0, p1, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    move-object v1, v3

    .line 1936
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_0

    .line 1941
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v2

    iget v6, p0, Landroid/support/v7/widget/ak;->d:I

    sub-int/2addr v2, v6

    iget v6, p0, Landroid/support/v7/widget/ak;->e:I

    mul-int/2addr v2, v6

    .line 1943
    if-gez v2, :cond_1

    move v0, v1

    move-object v1, v3

    .line 1944
    goto :goto_1

    .line 1946
    :cond_1
    if-ge v2, v1, :cond_3

    .line 1949
    if-nez v2, :cond_2

    .line 1954
    :goto_2
    return-object v0

    :cond_2
    move-object v1, v0

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    move-object v1, v3

    goto :goto_1

    :cond_4
    move-object v0, v3

    goto :goto_2
.end method
