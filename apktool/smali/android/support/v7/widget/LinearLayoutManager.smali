.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/br;
.source "LinearLayoutManager.java"


# instance fields
.field private a:Landroid/support/v7/widget/ak;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field j:I

.field k:Landroid/support/v7/widget/ba;

.field l:Z

.field m:I

.field n:I

.field o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field final p:Landroid/support/v7/widget/ai;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0}, Landroid/support/v7/widget/br;-><init>()V

    .line 91
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    .line 98
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    .line 105
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 123
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 151
    new-instance v0, Landroid/support/v7/widget/ai;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ai;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/ai;

    .line 152
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(I)V

    .line 153
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Z)V

    .line 154
    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 322
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 323
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private B()Landroid/view/View;
    .locals 1

    .prologue
    .line 1454
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->e(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private C()Landroid/view/View;
    .locals 1

    .prologue
    .line 1464
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->e(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private a(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;Z)I
    .locals 3

    .prologue
    .line 814
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->d()I

    move-result v0

    sub-int/2addr v0, p1

    .line 816
    if-lez v0, :cond_1

    .line 817
    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I

    move-result v0

    neg-int v0, v0

    .line 822
    add-int v1, p1, v0

    .line 823
    if-eqz p4, :cond_0

    .line 825
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v2}, Landroid/support/v7/widget/ba;->d()I

    move-result v2

    sub-int v1, v2, v1

    .line 826
    if-lez v1, :cond_0

    .line 827
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ba;->a(I)V

    .line 828
    add-int/2addr v0, v1

    .line 831
    :cond_0
    :goto_0
    return v0

    .line 819
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ZZ)Landroid/view/View;
    .locals 2

    .prologue
    .line 1476
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_0

    .line 1477
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1480
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private a(IIZLandroid/support/v7/widget/cb;)V
    .locals 6

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 1085
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/cb;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/ak;->h:I

    .line 1086
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput p1, v2, Landroid/support/v7/widget/ak;->f:I

    .line 1088
    if-ne p1, v1, :cond_2

    .line 1089
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v3, v2, Landroid/support/v7/widget/ak;->h:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v4}, Landroid/support/v7/widget/ba;->g()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/ak;->h:I

    .line 1091
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->C()Landroid/view/View;

    move-result-object v2

    .line 1093
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v4, :cond_1

    :goto_0
    iput v0, v3, Landroid/support/v7/widget/ak;->e:I

    .line 1095
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v3, v3, Landroid/support/v7/widget/ak;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/ak;->d:I

    .line 1096
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/ak;->b:I

    .line 1098
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v1}, Landroid/support/v7/widget/ba;->d()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1111
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput p2, v1, Landroid/support/v7/widget/ak;->c:I

    .line 1112
    if-eqz p3, :cond_0

    .line 1113
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v2, v1, Landroid/support/v7/widget/ak;->c:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/support/v7/widget/ak;->c:I

    .line 1115
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput v0, v1, Landroid/support/v7/widget/ak;->g:I

    .line 1116
    return-void

    :cond_1
    move v0, v1

    .line 1093
    goto :goto_0

    .line 1102
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->B()Landroid/view/View;

    move-result-object v2

    .line 1103
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v4, v3, Landroid/support/v7/widget/ak;->h:I

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v5}, Landroid/support/v7/widget/ba;->c()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/ak;->h:I

    .line 1104
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v4, :cond_3

    :goto_2
    iput v1, v3, Landroid/support/v7/widget/ak;->e:I

    .line 1106
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v3, v3, Landroid/support/v7/widget/ak;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/ak;->d:I

    .line 1107
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/ak;->b:I

    .line 1108
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v1}, Landroid/support/v7/widget/ba;->c()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 1104
    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/ai;)V
    .locals 2

    .prologue
    .line 860
    iget v0, p1, Landroid/support/v7/widget/ai;->a:I

    iget v1, p1, Landroid/support/v7/widget/ai;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)V

    .line 861
    return-void
.end method

.method private a(Landroid/support/v7/widget/bv;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1185
    if-gez p2, :cond_1

    .line 1212
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v2

    .line 1195
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_3

    .line 1196
    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_0

    .line 1197
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->e(I)Landroid/view/View;

    move-result-object v1

    .line 1198
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v1

    if-le v1, p2, :cond_2

    .line 1199
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bv;II)V

    goto :goto_0

    .line 1196
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1204
    :goto_2
    if-ge v0, v2, :cond_0

    .line 1205
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->e(I)Landroid/view/View;

    move-result-object v3

    .line 1206
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_4

    .line 1207
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bv;II)V

    goto :goto_0

    .line 1204
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/bv;II)V
    .locals 1

    .prologue
    .line 1158
    if-ne p2, p3, :cond_1

    .line 1173
    :cond_0
    return-void

    .line 1164
    :cond_1
    if-le p3, p2, :cond_2

    .line 1165
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_0

    .line 1166
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/bv;)V

    .line 1165
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1169
    :cond_2
    :goto_1
    if-le p2, p3, :cond_0

    .line 1170
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/bv;)V

    .line 1169
    add-int/lit8 p2, p2, -0x1

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ak;)V
    .locals 2

    .prologue
    .line 1265
    iget-boolean v0, p2, Landroid/support/v7/widget/ak;->a:Z

    if-nez v0, :cond_0

    .line 1273
    :goto_0
    return-void

    .line 1268
    :cond_0
    iget v0, p2, Landroid/support/v7/widget/ak;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1269
    iget v0, p2, Landroid/support/v7/widget/ak;->g:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/bv;I)V

    goto :goto_0

    .line 1271
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/ak;->g:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bv;I)V

    goto :goto_0
.end method

.method private b(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;Z)I
    .locals 4

    .prologue
    .line 839
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->c()I

    move-result v0

    sub-int v0, p1, v0

    .line 841
    if-lez v0, :cond_1

    .line 843
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I

    move-result v0

    neg-int v0, v0

    .line 847
    add-int v1, p1, v0

    .line 848
    if-eqz p4, :cond_0

    .line 850
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v2}, Landroid/support/v7/widget/ba;->c()I

    move-result v2

    sub-int/2addr v1, v2

    .line 851
    if-lez v1, :cond_0

    .line 852
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ba;->a(I)V

    .line 853
    sub-int/2addr v0, v1

    .line 856
    :cond_0
    :goto_0
    return v0

    .line 845
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(ZZ)Landroid/view/View;
    .locals 2

    .prologue
    .line 1494
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_0

    .line 1495
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1498
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private b(II)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 864
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v2}, Landroid/support/v7/widget/ba;->d()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/support/v7/widget/ak;->c:I

    .line 865
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/ak;->e:I

    .line 867
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput p1, v0, Landroid/support/v7/widget/ak;->d:I

    .line 868
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput v1, v0, Landroid/support/v7/widget/ak;->f:I

    .line 869
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput p2, v0, Landroid/support/v7/widget/ak;->b:I

    .line 870
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/ak;->g:I

    .line 871
    return-void

    :cond_0
    move v0, v1

    .line 865
    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/ai;)V
    .locals 2

    .prologue
    .line 874
    iget v0, p1, Landroid/support/v7/widget/ai;->a:I

    iget v1, p1, Landroid/support/v7/widget/ai;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->c(II)V

    .line 875
    return-void
.end method

.method private b(Landroid/support/v7/widget/bv;I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1224
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v2

    .line 1225
    if-gez p2, :cond_1

    .line 1251
    :cond_0
    :goto_0
    return-void

    .line 1232
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->e()I

    move-result v0

    sub-int v3, v0, p2

    .line 1233
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 1234
    :goto_1
    if-ge v0, v2, :cond_0

    .line 1235
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->e(I)Landroid/view/View;

    move-result-object v4

    .line 1236
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 1237
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bv;II)V

    goto :goto_0

    .line 1234
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1242
    :cond_3
    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_0

    .line 1243
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->e(I)Landroid/view/View;

    move-result-object v1

    .line 1244
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_4

    .line 1245
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bv;II)V

    goto :goto_0

    .line 1242
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private b(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;II)V
    .locals 9

    .prologue
    .line 612
    invoke-virtual {p2}, Landroid/support/v7/widget/cb;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/cb;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 618
    invoke-virtual {p1}, Landroid/support/v7/widget/bv;->b()Ljava/util/List;

    move-result-object v5

    .line 619
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 620
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->e(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v7

    .line 621
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v6, :cond_6

    .line 622
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 623
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    move v1, v3

    .line 621
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    move v2, v0

    goto :goto_1

    .line 626
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v1

    .line 627
    if-ge v1, v7, :cond_3

    const/4 v1, 0x1

    :goto_3
    iget-boolean v8, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eq v1, v8, :cond_4

    const/4 v1, -0x1

    .line 629
    :goto_4
    const/4 v8, -0x1

    if-ne v1, v8, :cond_5

    .line 630
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    iget-object v0, v0, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ba;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    move v1, v0

    move v0, v2

    goto :goto_2

    .line 627
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    goto :goto_4

    .line 632
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    iget-object v0, v0, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ba;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    move v1, v3

    goto :goto_2

    .line 640
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput-object v5, v0, Landroid/support/v7/widget/ak;->k:Ljava/util/List;

    .line 641
    if-lez v3, :cond_7

    .line 642
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->B()Landroid/view/View;

    move-result-object v0

    .line 643
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(II)V

    .line 644
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput v3, v0, Landroid/support/v7/widget/ak;->h:I

    .line 645
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/ak;->c:I

    .line 646
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak;->a()V

    .line 647
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ak;Landroid/support/v7/widget/cb;Z)I

    .line 650
    :cond_7
    if-lez v2, :cond_8

    .line 651
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->C()Landroid/view/View;

    move-result-object v0

    .line 652
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)V

    .line 653
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput v2, v0, Landroid/support/v7/widget/ak;->h:I

    .line 654
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/ak;->c:I

    .line 655
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak;->a()V

    .line 656
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ak;Landroid/support/v7/widget/cb;Z)I

    .line 658
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/ak;->k:Ljava/util/List;

    goto/16 :goto_0
.end method

.method private b(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ai;)V
    .locals 1

    .prologue
    .line 662
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ai;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ai;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    invoke-virtual {p2}, Landroid/support/v7/widget/ai;->b()V

    .line 679
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/widget/cb;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p2, Landroid/support/v7/widget/ai;->a:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c(II)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 878
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v2}, Landroid/support/v7/widget/ba;->c()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/support/v7/widget/ak;->c:I

    .line 879
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput p1, v0, Landroid/support/v7/widget/ak;->d:I

    .line 880
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/ak;->e:I

    .line 882
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput v1, v0, Landroid/support/v7/widget/ak;->f:I

    .line 883
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput p2, v0, Landroid/support/v7/widget/ak;->b:I

    .line 884
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/ak;->g:I

    .line 886
    return-void

    :cond_0
    move v0, v1

    .line 880
    goto :goto_0
.end method

.method private c(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ai;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 689
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v2

    if-nez v2, :cond_1

    .line 721
    :cond_0
    :goto_0
    return v0

    .line 692
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->x()Landroid/view/View;

    move-result-object v2

    .line 693
    if-eqz v2, :cond_2

    invoke-static {p2, v2, p1}, Landroid/support/v7/widget/ai;->a(Landroid/support/v7/widget/ai;Landroid/view/View;Landroid/support/v7/widget/cb;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 694
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;)V

    move v0, v1

    .line 695
    goto :goto_0

    .line 697
    :cond_2
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-ne v2, v3, :cond_0

    .line 700
    iget-boolean v2, p2, Landroid/support/v7/widget/ai;->c:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/cb;)Landroid/view/View;

    move-result-object v2

    .line 702
    :goto_1
    if-eqz v2, :cond_0

    .line 703
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)V

    .line 706
    invoke-virtual {p1}, Landroid/support/v7/widget/cb;->a()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 708
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v4}, Landroid/support/v7/widget/ba;->d()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v3}, Landroid/support/v7/widget/ba;->c()I

    move-result v3

    if-ge v2, v3, :cond_4

    :cond_3
    move v0, v1

    .line 713
    :cond_4
    if-eqz v0, :cond_5

    .line 714
    iget-boolean v0, p2, Landroid/support/v7/widget/ai;->c:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->d()I

    move-result v0

    :goto_2
    iput v0, p2, Landroid/support/v7/widget/ai;->b:I

    :cond_5
    move v0, v1

    .line 719
    goto :goto_0

    .line 700
    :cond_6
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->l(Landroid/support/v7/widget/cb;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 714
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->c()I

    move-result v0

    goto :goto_2
.end method

.method private d(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ai;)Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 729
    invoke-virtual {p1}, Landroid/support/v7/widget/cb;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    if-ne v0, v5, :cond_1

    :cond_0
    move v1, v2

    .line 806
    :goto_0
    return v1

    .line 733
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    invoke-virtual {p1}, Landroid/support/v7/widget/cb;->e()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 734
    :cond_2
    iput v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 735
    iput v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    move v1, v2

    .line 739
    goto :goto_0

    .line 744
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    iput v0, p2, Landroid/support/v7/widget/ai;->a:I

    .line 745
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 748
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p2, Landroid/support/v7/widget/ai;->c:Z

    .line 749
    iget-boolean v0, p2, Landroid/support/v7/widget/ai;->c:Z

    if-eqz v0, :cond_4

    .line 750
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->d()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/ai;->b:I

    goto :goto_0

    .line 753
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->c()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/ai;->b:I

    goto :goto_0

    .line 759
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    if-ne v0, v4, :cond_e

    .line 760
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    .line 761
    if-eqz v0, :cond_a

    .line 762
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ba;->c(Landroid/view/View;)I

    move-result v3

    .line 763
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v4}, Landroid/support/v7/widget/ba;->f()I

    move-result v4

    if-le v3, v4, :cond_6

    .line 765
    invoke-virtual {p2}, Landroid/support/v7/widget/ai;->b()V

    goto :goto_0

    .line 768
    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v4}, Landroid/support/v7/widget/ba;->c()I

    move-result v4

    sub-int/2addr v3, v4

    .line 770
    if-gez v3, :cond_7

    .line 771
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->c()I

    move-result v0

    iput v0, p2, Landroid/support/v7/widget/ai;->b:I

    .line 772
    iput-boolean v2, p2, Landroid/support/v7/widget/ai;->c:Z

    goto :goto_0

    .line 775
    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v2}, Landroid/support/v7/widget/ba;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 777
    if-gez v2, :cond_8

    .line 778
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->d()I

    move-result v0

    iput v0, p2, Landroid/support/v7/widget/ai;->b:I

    .line 779
    iput-boolean v1, p2, Landroid/support/v7/widget/ai;->c:Z

    goto/16 :goto_0

    .line 782
    :cond_8
    iget-boolean v2, p2, Landroid/support/v7/widget/ai;->c:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v2}, Landroid/support/v7/widget/ba;->b()I

    move-result v2

    add-int/2addr v0, v2

    :goto_1
    iput v0, p2, Landroid/support/v7/widget/ai;->b:I

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 787
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v0

    if-lez v0, :cond_c

    .line 789
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->e(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 790
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    if-ge v3, v0, :cond_d

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-ne v0, v3, :cond_b

    move v2, v1

    :cond_b
    iput-boolean v2, p2, Landroid/support/v7/widget/ai;->c:Z

    .line 793
    :cond_c
    invoke-virtual {p2}, Landroid/support/v7/widget/ai;->b()V

    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 790
    goto :goto_2

    .line 798
    :cond_e
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    iput-boolean v0, p2, Landroid/support/v7/widget/ai;->c:Z

    .line 799
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_f

    .line 800
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->d()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/ai;->b:I

    goto/16 :goto_0

    .line 803
    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->c()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/ai;->b:I

    goto/16 :goto_0
.end method

.method private h(Landroid/support/v7/widget/cb;)I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1019
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v0

    if-nez v0, :cond_0

    .line 1023
    :goto_0
    return v4

    .line 1022
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 1023
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/ch;->a(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ba;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/br;ZZ)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private i(I)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x1

    const/high16 v1, -0x80000000

    .line 1421
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1442
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v2

    .line 1425
    goto :goto_0

    .line 1427
    :sswitch_2
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1430
    :sswitch_3
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1433
    :sswitch_4
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1436
    :sswitch_5
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    if-nez v0, :cond_2

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    .line 1421
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private i(Landroid/support/v7/widget/cb;)I
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1030
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v0

    if-nez v0, :cond_0

    .line 1034
    :goto_0
    return v4

    .line 1033
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 1034
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ch;->a(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ba;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/br;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private j(Landroid/support/v7/widget/cb;)I
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1041
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v0

    if-nez v0, :cond_0

    .line 1045
    :goto_0
    return v4

    .line 1044
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 1045
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ch;->b(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ba;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/br;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private j(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 1536
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private k(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 1540
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private k(Landroid/support/v7/widget/cb;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1515
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/cb;->e()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/cb;->e()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->k(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private l(Landroid/support/v7/widget/cb;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1531
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/cb;->e()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->k(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/cb;->e()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I
    .locals 2

    .prologue
    .line 970
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 971
    const/4 v0, 0x0

    .line 973
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I

    move-result v0

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ak;Landroid/support/v7/widget/cb;Z)I
    .locals 7

    .prologue
    const/high16 v6, -0x80000000

    .line 1289
    iget v1, p2, Landroid/support/v7/widget/ak;->c:I

    .line 1290
    iget v0, p2, Landroid/support/v7/widget/ak;->g:I

    if-eq v0, v6, :cond_1

    .line 1292
    iget v0, p2, Landroid/support/v7/widget/ak;->c:I

    if-gez v0, :cond_0

    .line 1293
    iget v0, p2, Landroid/support/v7/widget/ak;->g:I

    iget v2, p2, Landroid/support/v7/widget/ak;->c:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/ak;->g:I

    .line 1295
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ak;)V

    .line 1297
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/ak;->c:I

    iget v2, p2, Landroid/support/v7/widget/ak;->h:I

    add-int/2addr v0, v2

    .line 1298
    new-instance v2, Landroid/support/v7/widget/aj;

    invoke-direct {v2}, Landroid/support/v7/widget/aj;-><init>()V

    .line 1299
    :cond_2
    if-lez v0, :cond_3

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/ak;->a(Landroid/support/v7/widget/cb;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1300
    invoke-virtual {v2}, Landroid/support/v7/widget/aj;->a()V

    .line 1301
    invoke-virtual {p0, p1, p3, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ak;Landroid/support/v7/widget/aj;)V

    .line 1302
    iget-boolean v3, v2, Landroid/support/v7/widget/aj;->b:Z

    if-eqz v3, :cond_4

    .line 1333
    :cond_3
    :goto_0
    iget v0, p2, Landroid/support/v7/widget/ak;->c:I

    sub-int v0, v1, v0

    return v0

    .line 1305
    :cond_4
    iget v3, p2, Landroid/support/v7/widget/ak;->b:I

    iget v4, v2, Landroid/support/v7/widget/aj;->a:I

    iget v5, p2, Landroid/support/v7/widget/ak;->f:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/ak;->b:I

    .line 1312
    iget-boolean v3, v2, Landroid/support/v7/widget/aj;->c:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget-object v3, v3, Landroid/support/v7/widget/ak;->k:Ljava/util/List;

    if-nez v3, :cond_5

    invoke-virtual {p3}, Landroid/support/v7/widget/cb;->a()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1314
    :cond_5
    iget v3, p2, Landroid/support/v7/widget/ak;->c:I

    iget v4, v2, Landroid/support/v7/widget/aj;->a:I

    sub-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/ak;->c:I

    .line 1316
    iget v3, v2, Landroid/support/v7/widget/aj;->a:I

    sub-int/2addr v0, v3

    .line 1319
    :cond_6
    iget v3, p2, Landroid/support/v7/widget/ak;->g:I

    if-eq v3, v6, :cond_8

    .line 1320
    iget v3, p2, Landroid/support/v7/widget/ak;->g:I

    iget v4, v2, Landroid/support/v7/widget/aj;->a:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/ak;->g:I

    .line 1321
    iget v3, p2, Landroid/support/v7/widget/ak;->c:I

    if-gez v3, :cond_7

    .line 1322
    iget v3, p2, Landroid/support/v7/widget/ak;->g:I

    iget v4, p2, Landroid/support/v7/widget/ak;->c:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/ak;->g:I

    .line 1324
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ak;)V

    .line 1326
    :cond_8
    if-eqz p4, :cond_2

    iget-boolean v3, v2, Landroid/support/v7/widget/aj;->d:Z

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method protected a(Landroid/support/v7/widget/cb;)I
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p1}, Landroid/support/v7/widget/cb;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->f()I

    move-result v0

    .line 395
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 161
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method a(III)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1545
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 1548
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->c()I

    move-result v5

    .line 1549
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->d()I

    move-result v6

    .line 1550
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    .line 1551
    :goto_1
    if-eq p1, p2, :cond_3

    .line 1552
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->e(I)Landroid/view/View;

    move-result-object v3

    .line 1553
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 1554
    if-ltz v0, :cond_6

    if-ge v0, p3, :cond_6

    .line 1555
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1556
    if-nez v4, :cond_6

    move-object v0, v2

    .line 1551
    :goto_2
    add-int/2addr p1, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    .line 1550
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 1559
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    .line 1561
    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    move-object v3, v4

    .line 1562
    goto :goto_2

    .line 1569
    :cond_3
    if-eqz v2, :cond_5

    :goto_3
    move-object v3, v2

    :cond_4
    return-object v3

    :cond_5
    move-object v2, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    move-object v3, v4

    goto :goto_2
.end method

.method a(IIZZ)Landroid/view/View;
    .locals 7

    .prologue
    .line 1654
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 1655
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->c()I

    move-result v3

    .line 1656
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->d()I

    move-result v4

    .line 1657
    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 1658
    :goto_0
    const/4 v2, 0x0

    .line 1659
    :goto_1
    if-eq p1, p2, :cond_3

    .line 1660
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->e(I)Landroid/view/View;

    move-result-object v1

    .line 1661
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v5

    .line 1662
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v6

    .line 1663
    if-ge v5, v4, :cond_4

    if-le v6, v3, :cond_4

    .line 1664
    if-eqz p3, :cond_0

    .line 1665
    if-lt v5, v3, :cond_2

    if-gt v6, v4, :cond_2

    .line 1675
    :cond_0
    :goto_2
    return-object v1

    .line 1657
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1667
    :cond_2
    if-eqz p4, :cond_4

    if-nez v2, :cond_4

    .line 1659
    :goto_3
    add-int/2addr p1, v0

    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 1675
    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_3
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/high16 v5, -0x80000000

    const/4 v0, 0x0

    .line 1681
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->A()V

    .line 1682
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v1

    if-nez v1, :cond_1

    .line 1719
    :cond_0
    :goto_0
    return-object v0

    .line 1686
    :cond_1
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->i(I)I

    move-result v3

    .line 1687
    if-eq v3, v5, :cond_0

    .line 1690
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 1692
    if-ne v3, v6, :cond_2

    .line 1693
    invoke-direct {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->l(Landroid/support/v7/widget/cb;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1697
    :goto_1
    if-eqz v2, :cond_0

    .line 1704
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 1705
    const v1, 0x3ea8f5c3    # 0.33f

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v4}, Landroid/support/v7/widget/ba;->f()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 1706
    invoke-direct {p0, v3, v1, v7, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/cb;)V

    .line 1707
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput v5, v1, Landroid/support/v7/widget/ak;->g:I

    .line 1708
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput-boolean v7, v1, Landroid/support/v7/widget/ak;->a:Z

    .line 1709
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    const/4 v4, 0x1

    invoke-virtual {p0, p3, v1, p4, v4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ak;Landroid/support/v7/widget/cb;Z)I

    .line 1711
    if-ne v3, v6, :cond_3

    .line 1712
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->B()Landroid/view/View;

    move-result-object v1

    .line 1716
    :goto_2
    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1719
    goto :goto_0

    .line 1695
    :cond_2
    invoke-direct {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/cb;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 1714
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->C()Landroid/view/View;

    move-result-object v1

    goto :goto_2
.end method

.method public a(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 303
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 307
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    if-ne p1, v0, :cond_1

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    .line 311
    iput-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    .line 312
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()V

    goto :goto_0
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 242
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 243
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 244
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()V

    .line 251
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/bv;)V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/bv;)V

    .line 196
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/bv;)V

    .line 198
    invoke-virtual {p2}, Landroid/support/v7/widget/bv;->a()V

    .line 200
    :cond_0
    return-void
.end method

.method a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ak;Landroid/support/v7/widget/aj;)V
    .locals 9

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1338
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/ak;->a(Landroid/support/v7/widget/bv;)Landroid/view/View;

    move-result-object v1

    .line 1339
    if-nez v1, :cond_0

    .line 1345
    iput-boolean v7, p4, Landroid/support/v7/widget/aj;->b:Z

    .line 1408
    :goto_0
    return-void

    .line 1348
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 1349
    iget-object v0, p3, Landroid/support/v7/widget/ak;->k:Ljava/util/List;

    if-nez v0, :cond_5

    .line 1350
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    iget v0, p3, Landroid/support/v7/widget/ak;->f:I

    if-ne v0, v4, :cond_3

    move v0, v7

    :goto_1
    if-ne v3, v0, :cond_4

    .line 1352
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)V

    .line 1364
    :goto_2
    invoke-virtual {p0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;II)V

    .line 1365
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ba;->c(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/aj;->a:I

    .line 1367
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    if-ne v0, v7, :cond_a

    .line 1368
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1369
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1370
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ba;->d(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    .line 1375
    :goto_3
    iget v3, p3, Landroid/support/v7/widget/ak;->f:I

    if-ne v3, v4, :cond_9

    .line 1376
    iget v3, p3, Landroid/support/v7/widget/ak;->b:I

    .line 1377
    iget v4, p3, Landroid/support/v7/widget/ak;->b:I

    iget v5, p4, Landroid/support/v7/widget/aj;->a:I

    sub-int/2addr v4, v5

    move v8, v3

    move v3, v4

    move v4, v0

    move v0, v8

    .line 1396
    :goto_4
    iget v5, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v5

    iget v5, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v5

    iget v5, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iget v5, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;IIII)V

    .line 1404
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1405
    :cond_1
    iput-boolean v7, p4, Landroid/support/v7/widget/aj;->c:Z

    .line 1407
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    iput-boolean v0, p4, Landroid/support/v7/widget/aj;->d:Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1350
    goto :goto_1

    .line 1354
    :cond_4
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;I)V

    goto :goto_2

    .line 1357
    :cond_5
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    iget v0, p3, Landroid/support/v7/widget/ak;->f:I

    if-ne v0, v4, :cond_6

    move v0, v7

    :goto_5
    if-ne v3, v0, :cond_7

    .line 1359
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_6
    move v0, v2

    .line 1357
    goto :goto_5

    .line 1361
    :cond_7
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;I)V

    goto :goto_2

    .line 1372
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()I

    move-result v2

    .line 1373
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ba;->d(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_3

    .line 1379
    :cond_9
    iget v4, p3, Landroid/support/v7/widget/ak;->b:I

    .line 1380
    iget v3, p3, Landroid/support/v7/widget/ak;->b:I

    iget v5, p4, Landroid/support/v7/widget/aj;->a:I

    add-int/2addr v3, v5

    move v8, v3

    move v3, v4

    move v4, v0

    move v0, v8

    goto :goto_4

    .line 1383
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()I

    move-result v3

    .line 1384
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ba;->d(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    .line 1386
    iget v2, p3, Landroid/support/v7/widget/ak;->f:I

    if-ne v2, v4, :cond_b

    .line 1387
    iget v2, p3, Landroid/support/v7/widget/ak;->b:I

    .line 1388
    iget v4, p3, Landroid/support/v7/widget/ak;->b:I

    iget v5, p4, Landroid/support/v7/widget/aj;->a:I

    sub-int/2addr v4, v5

    move v8, v2

    move v2, v4

    move v4, v8

    goto :goto_4

    .line 1390
    :cond_b
    iget v4, p3, Landroid/support/v7/widget/ak;->b:I

    .line 1391
    iget v2, p3, Landroid/support/v7/widget/ak;->b:I

    iget v5, p4, Landroid/support/v7/widget/aj;->a:I

    add-int/2addr v2, v5

    move v8, v2

    move v2, v4

    move v4, v8

    goto :goto_4
.end method

.method a(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ai;)V
    .locals 0

    .prologue
    .line 601
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/support/v7/widget/br;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 205
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v0

    if-lez v0, :cond_0

    .line 206
    invoke-static {p1}, Lcom/yelp/android/f/a;->a(Landroid/view/accessibility/AccessibilityEvent;)Lcom/yelp/android/f/aj;

    move-result-object v0

    .line 208
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/f/aj;->b(I)V

    .line 209
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/f/aj;->c(I)V

    .line 211
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1147
    invoke-super {p0, p1}, Landroid/support/v7/widget/br;->a(Ljava/lang/String;)V

    .line 1149
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 355
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-ne p1, v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    .line 359
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()V

    goto :goto_0
.end method

.method public b(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I
    .locals 1

    .prologue
    .line 982
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    if-nez v0, :cond_0

    .line 983
    const/4 v0, 0x0

    .line 985
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/cb;)I
    .locals 1

    .prologue
    .line 990
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/cb;)I

    move-result v0

    return v0
.end method

.method public b(I)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 367
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v1

    .line 368
    if-nez v1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-object v0

    .line 371
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->e(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v2

    .line 372
    sub-int v2, p1, v2

    .line 373
    if-ltz v2, :cond_0

    if-ge v2, v1, :cond_0

    .line 374
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->e(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 1788
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1119
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v2

    .line 1141
    :goto_0
    return p1

    .line 1122
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput-boolean v1, v0, Landroid/support/v7/widget/ak;->a:Z

    .line 1123
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 1124
    if-lez p1, :cond_2

    move v0, v1

    .line 1125
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1126
    invoke-direct {p0, v0, v3, v1, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/cb;)V

    .line 1127
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v1, v1, Landroid/support/v7/widget/ak;->g:I

    .line 1128
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {p0, p2, v4, p3, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ak;Landroid/support/v7/widget/cb;Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 1129
    if-gez v1, :cond_3

    move p1, v2

    .line 1133
    goto :goto_0

    .line 1124
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 1135
    :cond_3
    if-le v3, v1, :cond_4

    mul-int p1, v0, v1

    .line 1136
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ba;->a(I)V

    .line 1140
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput p1, v0, Landroid/support/v7/widget/ak;->j:I

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/cb;)I
    .locals 1

    .prologue
    .line 995
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/cb;)I

    move-result v0

    return v0
.end method

.method public c()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V

    .line 237
    :goto_0
    return-object v0

    .line 218
    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 219
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v1

    if-lez v1, :cond_2

    .line 220
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 221
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    xor-int/2addr v1, v2

    .line 222
    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 223
    if-eqz v1, :cond_1

    .line 224
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->C()Landroid/view/View;

    move-result-object v1

    .line 225
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v2}, Landroid/support/v7/widget/ba;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 227
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_0

    .line 229
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->B()Landroid/view/View;

    move-result-object v1

    .line 230
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 231
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v2}, Landroid/support/v7/widget/ba;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/high16 v6, -0x80000000

    const/4 v1, 0x0

    .line 442
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 446
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()V

    .line 447
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput-boolean v1, v0, Landroid/support/v7/widget/ak;->a:Z

    .line 449
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->A()V

    .line 451
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->a()V

    .line 452
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/ai;

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    xor-int/2addr v2, v3

    iput-boolean v2, v0, Landroid/support/v7/widget/ai;->c:Z

    .line 454
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/ai;

    invoke-direct {p0, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ai;)V

    .line 463
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/cb;)I

    move-result v0

    .line 466
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v2, v2, Landroid/support/v7/widget/ak;->j:I

    if-ltz v2, :cond_6

    move v2, v1

    .line 473
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v3}, Landroid/support/v7/widget/ba;->c()I

    move-result v3

    add-int/2addr v2, v3

    .line 474
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v3}, Landroid/support/v7/widget/ba;->g()I

    move-result v3

    add-int/2addr v0, v3

    .line 475
    invoke-virtual {p2}, Landroid/support/v7/widget/cb;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    if-eq v3, v7, :cond_1

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    if-eq v3, v6, :cond_1

    .line 480
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v3

    .line 481
    if-eqz v3, :cond_1

    .line 484
    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    if-eqz v4, :cond_7

    .line 485
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v4}, Landroid/support/v7/widget/ba;->d()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/ba;->b(Landroid/view/View;)I

    move-result v3

    sub-int v3, v4, v3

    .line 487
    iget v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    sub-int/2addr v3, v4

    .line 493
    :goto_1
    if-lez v3, :cond_8

    .line 494
    add-int/2addr v2, v3

    .line 502
    :cond_1
    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/ai;

    invoke-virtual {p0, p2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/cb;Landroid/support/v7/widget/ai;)V

    .line 503
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bv;)V

    .line 504
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {p2}, Landroid/support/v7/widget/cb;->a()Z

    move-result v4

    iput-boolean v4, v3, Landroid/support/v7/widget/ak;->i:Z

    .line 505
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/ai;

    iget-boolean v3, v3, Landroid/support/v7/widget/ai;->c:Z

    if-eqz v3, :cond_9

    .line 507
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/ai;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/ai;)V

    .line 508
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput v2, v3, Landroid/support/v7/widget/ak;->h:I

    .line 509
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ak;Landroid/support/v7/widget/cb;Z)I

    .line 510
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v2, v2, Landroid/support/v7/widget/ak;->b:I

    .line 511
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v4, v3, Landroid/support/v7/widget/ak;->d:I

    .line 512
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v3, v3, Landroid/support/v7/widget/ak;->c:I

    if-lez v3, :cond_2

    .line 513
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v3, v3, Landroid/support/v7/widget/ak;->c:I

    add-int/2addr v0, v3

    .line 516
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/ai;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ai;)V

    .line 517
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput v0, v3, Landroid/support/v7/widget/ak;->h:I

    .line 518
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v3, v0, Landroid/support/v7/widget/ak;->d:I

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v5, v5, Landroid/support/v7/widget/ak;->e:I

    add-int/2addr v3, v5

    iput v3, v0, Landroid/support/v7/widget/ak;->d:I

    .line 519
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ak;Landroid/support/v7/widget/cb;Z)I

    .line 520
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v3, v0, Landroid/support/v7/widget/ak;->b:I

    .line 522
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v0, v0, Landroid/support/v7/widget/ak;->c:I

    if-lez v0, :cond_c

    .line 524
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v0, v0, Landroid/support/v7/widget/ak;->c:I

    .line 525
    invoke-direct {p0, v4, v2}, Landroid/support/v7/widget/LinearLayoutManager;->c(II)V

    .line 526
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput v0, v2, Landroid/support/v7/widget/ak;->h:I

    .line 527
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ak;Landroid/support/v7/widget/cb;Z)I

    .line 528
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v0, v0, Landroid/support/v7/widget/ak;->b:I

    :goto_3
    move v2, v0

    move v0, v3

    .line 560
    :cond_3
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v3

    if-lez v3, :cond_4

    .line 564
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Z

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    xor-int/2addr v3, v4

    if-eqz v3, :cond_b

    .line 565
    invoke-direct {p0, v0, p1, p2, v8}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;Z)I

    move-result v3

    .line 566
    add-int/2addr v2, v3

    .line 567
    add-int/2addr v0, v3

    .line 568
    invoke-direct {p0, v2, p1, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;Z)I

    move-result v1

    .line 569
    add-int/2addr v2, v1

    .line 570
    add-int/2addr v0, v1

    .line 580
    :cond_4
    :goto_5
    invoke-direct {p0, p1, p2, v2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;II)V

    .line 581
    invoke-virtual {p2}, Landroid/support/v7/widget/cb;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 582
    iput v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:I

    .line 583
    iput v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    .line 584
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->a()V

    .line 586
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Z

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 591
    return-void

    :cond_6
    move v2, v0

    move v0, v1

    .line 471
    goto/16 :goto_0

    .line 489
    :cond_7
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/ba;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    invoke-virtual {v4}, Landroid/support/v7/widget/ba;->c()I

    move-result v4

    sub-int/2addr v3, v4

    .line 491
    iget v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    sub-int v3, v4, v3

    goto/16 :goto_1

    .line 496
    :cond_8
    sub-int/2addr v0, v3

    goto/16 :goto_2

    .line 532
    :cond_9
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/ai;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ai;)V

    .line 533
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput v0, v3, Landroid/support/v7/widget/ak;->h:I

    .line 534
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ak;Landroid/support/v7/widget/cb;Z)I

    .line 535
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v0, v0, Landroid/support/v7/widget/ak;->b:I

    .line 536
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v3, v3, Landroid/support/v7/widget/ak;->d:I

    .line 537
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v4, v4, Landroid/support/v7/widget/ak;->c:I

    if-lez v4, :cond_a

    .line 538
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v4, v4, Landroid/support/v7/widget/ak;->c:I

    add-int/2addr v2, v4

    .line 541
    :cond_a
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Landroid/support/v7/widget/ai;

    invoke-direct {p0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/ai;)V

    .line 542
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput v2, v4, Landroid/support/v7/widget/ak;->h:I

    .line 543
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v4, v2, Landroid/support/v7/widget/ak;->d:I

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v5, v5, Landroid/support/v7/widget/ak;->e:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/support/v7/widget/ak;->d:I

    .line 544
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ak;Landroid/support/v7/widget/cb;Z)I

    .line 545
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v2, v2, Landroid/support/v7/widget/ak;->b:I

    .line 547
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v4, v4, Landroid/support/v7/widget/ak;->c:I

    if-lez v4, :cond_3

    .line 548
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v4, v4, Landroid/support/v7/widget/ak;->c:I

    .line 550
    invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)V

    .line 551
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iput v4, v0, Landroid/support/v7/widget/ak;->h:I

    .line 552
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ak;Landroid/support/v7/widget/cb;Z)I

    .line 553
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    iget v0, v0, Landroid/support/v7/widget/ak;->b:I

    goto/16 :goto_4

    .line 572
    :cond_b
    invoke-direct {p0, v2, p1, p2, v8}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;Z)I

    move-result v3

    .line 573
    add-int/2addr v2, v3

    .line 574
    add-int/2addr v0, v3

    .line 575
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;Z)I

    move-result v1

    .line 576
    add-int/2addr v2, v1

    .line 577
    add-int/2addr v0, v1

    goto/16 :goto_5

    :cond_c
    move v0, v2

    goto/16 :goto_3
.end method

.method public d(Landroid/support/v7/widget/cb;)I
    .locals 1

    .prologue
    .line 1000
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/cb;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Landroid/support/v7/widget/cb;)I
    .locals 1

    .prologue
    .line 1005
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/cb;)I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 266
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    return v0
.end method

.method public f(Landroid/support/v7/widget/cb;)I
    .locals 1

    .prologue
    .line 1010
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/cb;)I

    move-result v0

    return v0
.end method

.method public g(Landroid/support/v7/widget/cb;)I
    .locals 1

    .prologue
    .line 1015
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/cb;)I

    move-result v0

    return v0
.end method

.method protected g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 889
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->o()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    if-nez v0, :cond_0

    .line 894
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()Landroid/support/v7/widget/ak;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ak;

    .line 896
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    if-nez v0, :cond_1

    .line 897
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/ba;->a(Landroid/support/v7/widget/br;I)Landroid/support/v7/widget/ba;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Landroid/support/v7/widget/ba;

    .line 899
    :cond_1
    return-void
.end method

.method i()Landroid/support/v7/widget/ak;
    .locals 1

    .prologue
    .line 907
    new-instance v0, Landroid/support/v7/widget/ak;

    invoke-direct {v0}, Landroid/support/v7/widget/ak;-><init>()V

    return-object v0
.end method

.method public j()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1591
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1592
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public k()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 1631
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v1

    .line 1632
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method
