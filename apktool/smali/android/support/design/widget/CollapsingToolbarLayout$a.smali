.class Landroid/support/design/widget/CollapsingToolbarLayout$a;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/CollapsingToolbarLayout;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .locals 0

    .prologue
    .line 853
    iput-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/design/widget/CollapsingToolbarLayout$1;)V
    .locals 0

    .prologue
    .line 853
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout$a;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 856
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->b(Landroid/support/design/widget/CollapsingToolbarLayout;I)I

    .line 858
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->a(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v4/view/bg;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->a(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v4/view/bg;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/bg;->b()I

    move-result v0

    move v1, v0

    .line 859
    :goto_0
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v3

    .line 861
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_2

    .line 862
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 863
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 864
    invoke-static {v5}, Landroid/support/design/widget/CollapsingToolbarLayout;->a(Landroid/view/View;)Landroid/support/design/widget/u;

    move-result-object v6

    .line 866
    iget v7, v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->a:I

    packed-switch v7, :pswitch_data_0

    .line 861
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 858
    goto :goto_0

    .line 868
    :pswitch_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 869
    neg-int v0, p2

    invoke-virtual {v6, v0}, Landroid/support/design/widget/u;->a(I)Z

    goto :goto_2

    .line 873
    :pswitch_1
    neg-int v5, p2

    int-to-float v5, v5

    iget v0, v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->b:F

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/support/design/widget/u;->a(I)Z

    goto :goto_2

    .line 880
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->b(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->c(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 881
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getScrimTriggerOffset()I

    move-result v2

    add-int/2addr v2, v1

    if-ge v0, v2, :cond_6

    .line 882
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->d(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    .line 888
    :cond_4
    :goto_3
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->c(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    if-lez v1, :cond_5

    .line 889
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/v4/view/ai;->d(Landroid/view/View;)V

    .line 893
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/v4/view/ai;->r(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 895
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->f(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/design/widget/d;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/support/design/widget/d;->b(F)V

    .line 898
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 901
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTargetElevation()F

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ai;->h(Landroid/view/View;F)V

    .line 906
    :goto_4
    return-void

    .line 884
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->e(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    goto :goto_3

    .line 904
    :cond_7
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/ai;->h(Landroid/view/View;F)V

    goto :goto_4

    .line 866
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
