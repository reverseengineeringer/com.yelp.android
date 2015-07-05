.class Landroid/support/v7/widget/ai;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# instance fields
.field a:I

.field b:I

.field c:Z

.field final synthetic d:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/ai;Landroid/view/View;Landroid/support/v7/widget/cb;)Z
    .locals 1

    .prologue
    .line 2024
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;Landroid/support/v7/widget/cb;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/view/View;Landroid/support/v7/widget/cb;)Z
    .locals 2

    .prologue
    .line 2054
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2055
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/cb;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 2029
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/ai;->a:I

    .line 2030
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/ai;->b:I

    .line 2031
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ai;->c:Z

    .line 2032
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2060
    iget-object v0, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->b()I

    move-result v0

    .line 2061
    if-ltz v0, :cond_1

    .line 2062
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)V

    .line 2104
    :cond_0
    :goto_0
    return-void

    .line 2065
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ai;->a:I

    .line 2066
    iget-boolean v1, p0, Landroid/support/v7/widget/ai;->c:Z

    if-eqz v1, :cond_2

    .line 2067
    iget-object v1, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v1}, Landroid/support/v7/widget/ba;->d()I

    move-result v1

    sub-int v0, v1, v0

    .line 2068
    iget-object v1, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v1

    .line 2069
    sub-int/2addr v0, v1

    .line 2070
    iget-object v1, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v1}, Landroid/support/v7/widget/ba;->d()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/ai;->b:I

    .line 2072
    if-lez v0, :cond_0

    .line 2073
    iget-object v1, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ba;->c(Landroid/view/View;)I

    move-result v1

    .line 2074
    iget v2, p0, Landroid/support/v7/widget/ai;->b:I

    sub-int v1, v2, v1

    .line 2075
    iget-object v2, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v2}, Landroid/support/v7/widget/ba;->c()I

    move-result v2

    .line 2076
    iget-object v3, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v3, v2

    .line 2078
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2079
    sub-int/2addr v1, v2

    .line 2080
    if-gez v1, :cond_0

    .line 2082
    iget v2, p0, Landroid/support/v7/widget/ai;->b:I

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Landroid/support/v7/widget/ai;->b:I

    goto :goto_0

    .line 2086
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v1

    .line 2087
    iget-object v2, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v2}, Landroid/support/v7/widget/ba;->c()I

    move-result v2

    sub-int v2, v1, v2

    .line 2088
    iput v1, p0, Landroid/support/v7/widget/ai;->b:I

    .line 2089
    if-lez v2, :cond_0

    .line 2090
    iget-object v3, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ba;->c(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2092
    iget-object v3, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v3}, Landroid/support/v7/widget/ba;->d()I

    move-result v3

    sub-int v0, v3, v0

    .line 2094
    iget-object v3, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    .line 2096
    iget-object v3, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v3}, Landroid/support/v7/widget/ba;->d()I

    move-result v3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v3, v0

    .line 2098
    sub-int/2addr v0, v1

    .line 2099
    if-gez v0, :cond_0

    .line 2100
    iget v1, p0, Landroid/support/v7/widget/ai;->b:I

    neg-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/ai;->b:I

    goto/16 :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 2039
    iget-boolean v0, p0, Landroid/support/v7/widget/ai;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->d()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/ai;->b:I

    .line 2042
    return-void

    .line 2039
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->c()I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2107
    iget-boolean v0, p0, Landroid/support/v7/widget/ai;->c:Z

    if-eqz v0, :cond_0

    .line 2108
    iget-object v0, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v1}, Landroid/support/v7/widget/ba;->b()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/ai;->b:I

    .line 2114
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ai;->a:I

    .line 2115
    return-void

    .line 2111
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ai;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ai;->b:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/ai;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/ai;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/ai;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
