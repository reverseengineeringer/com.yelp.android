.class Landroid/support/v7/widget/db;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field final d:I

.field final synthetic e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic a(Landroid/support/v7/widget/db;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 2046
    iget-object v0, p0, Landroid/support/v7/widget/db;->f:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method a(I)I
    .locals 2

    .prologue
    .line 2060
    iget v0, p0, Landroid/support/v7/widget/db;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 2061
    iget p1, p0, Landroid/support/v7/widget/db;->a:I

    .line 2067
    :cond_0
    :goto_0
    return p1

    .line 2063
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/db;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2066
    invoke-virtual {p0}, Landroid/support/v7/widget/db;->a()V

    .line 2067
    iget p1, p0, Landroid/support/v7/widget/db;->a:I

    goto :goto_0
.end method

.method a()V
    .locals 3

    .prologue
    .line 2071
    iget-object v0, p0, Landroid/support/v7/widget/db;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2072
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/db;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2073
    iget-object v2, p0, Landroid/support/v7/widget/db;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/db;->a:I

    .line 2074
    iget-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v0, :cond_0

    .line 2075
    iget-object v0, p0, Landroid/support/v7/widget/db;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 2077
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2078
    iget v1, p0, Landroid/support/v7/widget/db;->a:I

    iget v2, p0, Landroid/support/v7/widget/db;->d:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/db;->a:I

    .line 2081
    :cond_0
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 2127
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/db;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2128
    iput-object p0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroid/support/v7/widget/db;

    .line 2129
    iget-object v1, p0, Landroid/support/v7/widget/db;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2130
    iput v3, p0, Landroid/support/v7/widget/db;->a:I

    .line 2131
    iget-object v1, p0, Landroid/support/v7/widget/db;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2132
    iput v3, p0, Landroid/support/v7/widget/db;->b:I

    .line 2134
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2135
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/db;->c:I

    iget-object v1, p0, Landroid/support/v7/widget/db;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ba;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/db;->c:I

    .line 2137
    :cond_2
    return-void
.end method

.method a(ZI)V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 2155
    if-eqz p1, :cond_1

    .line 2156
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/db;->b(I)I

    move-result v0

    .line 2160
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/db;->e()V

    .line 2161
    if-ne v0, v2, :cond_2

    .line 2172
    :cond_0
    :goto_1
    return-void

    .line 2158
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/db;->a(I)I

    move-result v0

    goto :goto_0

    .line 2164
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/db;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v1}, Landroid/support/v7/widget/ba;->d()I

    move-result v1

    if-lt v0, v1, :cond_0

    :cond_3
    if-nez p1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/db;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v1}, Landroid/support/v7/widget/ba;->c()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2168
    :cond_4
    if-eq p2, v2, :cond_5

    .line 2169
    add-int/2addr v0, p2

    .line 2171
    :cond_5
    iput v0, p0, Landroid/support/v7/widget/db;->b:I

    iput v0, p0, Landroid/support/v7/widget/db;->a:I

    goto :goto_1
.end method

.method b()I
    .locals 2

    .prologue
    .line 2085
    iget v0, p0, Landroid/support/v7/widget/db;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2086
    iget v0, p0, Landroid/support/v7/widget/db;->a:I

    .line 2089
    :goto_0
    return v0

    .line 2088
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/db;->a()V

    .line 2089
    iget v0, p0, Landroid/support/v7/widget/db;->a:I

    goto :goto_0
.end method

.method b(I)I
    .locals 2

    .prologue
    .line 2093
    iget v0, p0, Landroid/support/v7/widget/db;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 2094
    iget p1, p0, Landroid/support/v7/widget/db;->b:I

    .line 2101
    :cond_0
    :goto_0
    return p1

    .line 2096
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/db;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2097
    if-eqz v0, :cond_0

    .line 2100
    invoke-virtual {p0}, Landroid/support/v7/widget/db;->c()V

    .line 2101
    iget p1, p0, Landroid/support/v7/widget/db;->b:I

    goto :goto_0
.end method

.method b(Landroid/view/View;)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 2140
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/db;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2141
    iput-object p0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroid/support/v7/widget/db;

    .line 2142
    iget-object v1, p0, Landroid/support/v7/widget/db;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2143
    iput v3, p0, Landroid/support/v7/widget/db;->b:I

    .line 2144
    iget-object v1, p0, Landroid/support/v7/widget/db;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2145
    iput v3, p0, Landroid/support/v7/widget/db;->a:I

    .line 2147
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2148
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/db;->c:I

    iget-object v1, p0, Landroid/support/v7/widget/db;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ba;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/db;->c:I

    .line 2150
    :cond_2
    return-void
.end method

.method c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    .locals 1

    .prologue
    .line 2221
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    return-object v0
.end method

.method c()V
    .locals 3

    .prologue
    .line 2105
    iget-object v0, p0, Landroid/support/v7/widget/db;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/db;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2106
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/db;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2107
    iget-object v2, p0, Landroid/support/v7/widget/db;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/db;->b:I

    .line 2108
    iget-boolean v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v0, :cond_0

    .line 2109
    iget-object v0, p0, Landroid/support/v7/widget/db;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 2111
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2112
    iget v1, p0, Landroid/support/v7/widget/db;->b:I

    iget v2, p0, Landroid/support/v7/widget/db;->d:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/db;->b:I

    .line 2115
    :cond_0
    return-void
.end method

.method c(I)V
    .locals 0

    .prologue
    .line 2186
    iput p1, p0, Landroid/support/v7/widget/db;->a:I

    iput p1, p0, Landroid/support/v7/widget/db;->b:I

    .line 2187
    return-void
.end method

.method d()I
    .locals 2

    .prologue
    .line 2119
    iget v0, p0, Landroid/support/v7/widget/db;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2120
    iget v0, p0, Landroid/support/v7/widget/db;->b:I

    .line 2123
    :goto_0
    return v0

    .line 2122
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/db;->c()V

    .line 2123
    iget v0, p0, Landroid/support/v7/widget/db;->b:I

    goto :goto_0
.end method

.method d(I)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 2225
    iget v0, p0, Landroid/support/v7/widget/db;->a:I

    if-eq v0, v1, :cond_0

    .line 2226
    iget v0, p0, Landroid/support/v7/widget/db;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/db;->a:I

    .line 2228
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/db;->b:I

    if-eq v0, v1, :cond_1

    .line 2229
    iget v0, p0, Landroid/support/v7/widget/db;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/db;->b:I

    .line 2231
    :cond_1
    return-void
.end method

.method e()V
    .locals 1

    .prologue
    .line 2175
    iget-object v0, p0, Landroid/support/v7/widget/db;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2176
    invoke-virtual {p0}, Landroid/support/v7/widget/db;->f()V

    .line 2177
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/db;->c:I

    .line 2178
    return-void
.end method

.method f()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 2181
    iput v0, p0, Landroid/support/v7/widget/db;->a:I

    .line 2182
    iput v0, p0, Landroid/support/v7/widget/db;->b:I

    .line 2183
    return-void
.end method

.method g()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 2190
    iget-object v0, p0, Landroid/support/v7/widget/db;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2191
    iget-object v0, p0, Landroid/support/v7/widget/db;->f:Ljava/util/ArrayList;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2192
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/db;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v2

    .line 2193
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroid/support/v7/widget/db;

    .line 2194
    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->c()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2195
    :cond_0
    iget v2, p0, Landroid/support/v7/widget/db;->c:I

    iget-object v3, p0, Landroid/support/v7/widget/db;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ba;->c(Landroid/view/View;)I

    move-result v0

    sub-int v0, v2, v0

    iput v0, p0, Landroid/support/v7/widget/db;->c:I

    .line 2197
    :cond_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 2198
    iput v4, p0, Landroid/support/v7/widget/db;->a:I

    .line 2200
    :cond_2
    iput v4, p0, Landroid/support/v7/widget/db;->b:I

    .line 2201
    return-void
.end method

.method h()V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 2204
    iget-object v0, p0, Landroid/support/v7/widget/db;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2205
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/db;->c(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2206
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroid/support/v7/widget/db;

    .line 2207
    iget-object v2, p0, Landroid/support/v7/widget/db;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 2208
    iput v3, p0, Landroid/support/v7/widget/db;->b:I

    .line 2210
    :cond_0
    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->c()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2211
    :cond_1
    iget v1, p0, Landroid/support/v7/widget/db;->c:I

    iget-object v2, p0, Landroid/support/v7/widget/db;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ba;->c(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/db;->c:I

    .line 2213
    :cond_2
    iput v3, p0, Landroid/support/v7/widget/db;->a:I

    .line 2214
    return-void
.end method

.method public i()I
    .locals 1

    .prologue
    .line 2217
    iget v0, p0, Landroid/support/v7/widget/db;->c:I

    return v0
.end method
