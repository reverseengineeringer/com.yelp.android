.class public Lcom/flipboard/bottomsheet/commons/MenuSheetView;
.super Landroid/widget/FrameLayout;
.source "MenuSheetView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;,
        Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;,
        Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;
    }
.end annotation


# instance fields
.field protected final a:I

.field private b:Landroid/view/Menu;

.field private final c:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;

.field private f:Landroid/widget/AbsListView;

.field private final g:Landroid/widget/TextView;


# direct methods
.method static synthetic a(Lcom/flipboard/bottomsheet/commons/MenuSheetView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/flipboard/bottomsheet/commons/MenuSheetView;)Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->c:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    return-object v0
.end method


# virtual methods
.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->b:Landroid/view/Menu;

    return-object v0
.end method

.method public getMenuType()Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->c:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 124
    new-instance v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;

    invoke-direct {v0, p0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;-><init>(Lcom/flipboard/bottomsheet/commons/MenuSheetView;)V

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->e:Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;

    .line 125
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->f:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->e:Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->c:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    sget-object v1, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;->GRID:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    if-ne v0, v1, :cond_0

    .line 131
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 132
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 133
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->f:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/GridView;

    int-to-float v1, v1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 135
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 136
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 142
    new-instance v0, Lcom/flipboard/bottomsheet/commons/b$a;

    invoke-direct {v0, p1, p2}, Lcom/flipboard/bottomsheet/commons/b$a;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 144
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->f:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->f:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->a:I

    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v3, v4}, Lcom/flipboard/bottomsheet/commons/b;->a(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->f:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->f:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->setPadding(IIII)V

    goto :goto_0
.end method
