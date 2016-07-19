.class public Lcom/flipboard/bottomsheet/commons/a;
.super Landroid/widget/FrameLayout;
.source "IntentPickerSheetView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flipboard/bottomsheet/commons/a$b;,
        Lcom/flipboard/bottomsheet/commons/a$a;,
        Lcom/flipboard/bottomsheet/commons/a$d;,
        Lcom/flipboard/bottomsheet/commons/a$f;,
        Lcom/flipboard/bottomsheet/commons/a$e;,
        Lcom/flipboard/bottomsheet/commons/a$c;
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Landroid/content/Intent;

.field private final c:Landroid/widget/GridView;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flipboard/bottomsheet/commons/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/flipboard/bottomsheet/commons/a$b;

.field private f:Lcom/flipboard/bottomsheet/commons/a$c;

.field private g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/flipboard/bottomsheet/commons/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/flipboard/bottomsheet/commons/a$e;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/16 v0, 0x64

    iput v0, p0, Lcom/flipboard/bottomsheet/commons/a;->a:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/a;->d:Ljava/util/List;

    .line 106
    new-instance v0, Lcom/flipboard/bottomsheet/commons/a$d;

    invoke-direct {v0, p0, v1}, Lcom/flipboard/bottomsheet/commons/a$d;-><init>(Lcom/flipboard/bottomsheet/commons/a;Lcom/flipboard/bottomsheet/commons/a$1;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/a;->f:Lcom/flipboard/bottomsheet/commons/a$c;

    .line 107
    new-instance v0, Lcom/flipboard/bottomsheet/commons/a$f;

    invoke-direct {v0, p0, v1}, Lcom/flipboard/bottomsheet/commons/a$f;-><init>(Lcom/flipboard/bottomsheet/commons/a;Lcom/flipboard/bottomsheet/commons/a$1;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/a;->g:Ljava/util/Comparator;

    .line 115
    iput-object p2, p0, Lcom/flipboard/bottomsheet/commons/a;->b:Landroid/content/Intent;

    .line 117
    sget v0, Lcom/yelp/android/cq/a$d;->grid_sheet_view:I

    invoke-static {p1, v0, p0}, Lcom/flipboard/bottomsheet/commons/a;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 118
    sget v0, Lcom/yelp/android/cq/a$c;->grid:I

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/commons/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/a;->c:Landroid/widget/GridView;

    .line 119
    sget v0, Lcom/yelp/android/cq/a$c;->title:I

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/commons/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a;->c:Landroid/widget/GridView;

    new-instance v1, Lcom/flipboard/bottomsheet/commons/a$1;

    invoke-direct {v1, p0, p4}, Lcom/flipboard/bottomsheet/commons/a$1;-><init>(Lcom/flipboard/bottomsheet/commons/a;Lcom/flipboard/bottomsheet/commons/a$e;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/flipboard/bottomsheet/commons/b;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Landroid/support/v4/view/ai;->h(Landroid/view/View;F)V

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/flipboard/bottomsheet/commons/a;)Lcom/flipboard/bottomsheet/commons/a$b;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a;->e:Lcom/flipboard/bottomsheet/commons/a$b;

    return-object v0
.end method

.method static synthetic b(Lcom/flipboard/bottomsheet/commons/a;)Lcom/flipboard/bottomsheet/commons/a$c;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a;->f:Lcom/flipboard/bottomsheet/commons/a$c;

    return-object v0
.end method

.method static synthetic c(Lcom/flipboard/bottomsheet/commons/a;)Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a;->g:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public getMixins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flipboard/bottomsheet/commons/a$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a;->d:Ljava/util/List;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 160
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 161
    new-instance v0, Lcom/flipboard/bottomsheet/commons/a$b;

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/a;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/flipboard/bottomsheet/commons/a;->b:Landroid/content/Intent;

    iget-object v3, p0, Lcom/flipboard/bottomsheet/commons/a;->d:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/flipboard/bottomsheet/commons/a$b;-><init>(Lcom/flipboard/bottomsheet/commons/a;Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/a;->e:Lcom/flipboard/bottomsheet/commons/a$b;

    .line 162
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a;->c:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/a;->e:Lcom/flipboard/bottomsheet/commons/a$b;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 62
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a;->e:Lcom/flipboard/bottomsheet/commons/a$b;

    iget-object v0, v0, Lcom/flipboard/bottomsheet/commons/a$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/commons/a$a;

    .line 63
    invoke-static {v0}, Lcom/flipboard/bottomsheet/commons/a$a;->a(Lcom/flipboard/bottomsheet/commons/a$a;)Landroid/os/AsyncTask;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 64
    invoke-static {v0}, Lcom/flipboard/bottomsheet/commons/a$a;->a(Lcom/flipboard/bottomsheet/commons/a$a;)Landroid/os/AsyncTask;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 65
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/flipboard/bottomsheet/commons/a$a;->a(Lcom/flipboard/bottomsheet/commons/a$a;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 167
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 168
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 169
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yelp/android/cq/a$b;->bottomsheet_default_sheet_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 170
    iget-object v2, p0, Lcom/flipboard/bottomsheet/commons/a;->c:Landroid/widget/GridView;

    int-to-float v0, v0

    iget v3, p0, Lcom/flipboard/bottomsheet/commons/a;->a:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 171
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 172
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 178
    new-instance v0, Lcom/flipboard/bottomsheet/commons/b$a;

    invoke-direct {v0, p1, p2}, Lcom/flipboard/bottomsheet/commons/b$a;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/commons/a;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 180
    :cond_0
    return-void
.end method

.method public setColumnWidthDp(I)V
    .locals 0

    .prologue
    .line 141
    iput p1, p0, Lcom/flipboard/bottomsheet/commons/a;->a:I

    .line 142
    return-void
.end method

.method public setFilter(Lcom/flipboard/bottomsheet/commons/a$c;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/a;->f:Lcom/flipboard/bottomsheet/commons/a$c;

    .line 138
    return-void
.end method

.method public setMixins(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flipboard/bottomsheet/commons/a$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    return-void
.end method

.method public setSortMethod(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/flipboard/bottomsheet/commons/a$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/a;->g:Ljava/util/Comparator;

    .line 134
    return-void
.end method
