.class Lcom/yelp/android/ui/panels/BizAttributesFragment$8;
.super Ljava/lang/Object;
.source "BizAttributesFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/panels/BizAttributesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/BizAttributesFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/BizAttributesFragment;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$8;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 538
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 542
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 552
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 553
    const/4 v7, 0x1

    .line 555
    :cond_0
    return v7
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 498
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$8;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->f(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/widgets/WidgetSpan;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 499
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$8;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->f(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/widgets/WidgetSpan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/WidgetSpan;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 500
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$8;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->f(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/widgets/WidgetSpan;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/WidgetSpan;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 501
    const/4 v3, 0x0

    .line 502
    instance-of v1, v0, Lcom/yelp/android/ui/widgets/SpannedTextView;

    if-eqz v1, :cond_2

    .line 503
    check-cast v0, Landroid/widget/TextView;

    .line 504
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 505
    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment$8;->a(Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    :goto_1
    move-object v3, v0

    .line 522
    :cond_0
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "The string ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] did not fit in a biz attribute button."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    invoke-static {v0}, Lcom/yelp/android/au/a;->a(Ljava/lang/String;)V

    .line 528
    new-instance v1, Lcom/yelp/android/ui/panels/BizAttributesFragment$AttributeVotingStringException;

    iget-object v3, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$8;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-direct {v1, v3, v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment$AttributeVotingStringException;-><init>(Lcom/yelp/android/ui/panels/BizAttributesFragment;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/yelp/android/au/a;->a(Ljava/lang/Throwable;)V

    .line 499
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 508
    :cond_2
    instance-of v1, v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 509
    check-cast v1, Lcom/yelp/android/ui/widgets/TwoTierButton;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getLabel()Landroid/widget/TextView;

    move-result-object v4

    .line 510
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 511
    invoke-direct {p0, v4, v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment$8;->a(Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, v1

    .line 515
    :cond_3
    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getValue()Landroid/widget/TextView;

    move-result-object v1

    .line 516
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment$8;->a(Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v3, v0

    .line 518
    goto :goto_2

    .line 534
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$8;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->f(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/widgets/WidgetSpan;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 535
    return-void

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method
