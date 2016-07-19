.class public Lcom/yelp/android/ui/widgets/AnimatedToggleButton;
.super Landroid/widget/ToggleButton;
.source "AnimatedToggleButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/widgets/AnimatedToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/AnimatedToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f4ccccd    # 0.8f

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-static {v2, v1}, Lcom/yelp/android/ui/util/av;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 35
    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/av;->a(FF)Landroid/view/animation/Animation;

    move-result-object v1

    .line 39
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 41
    new-instance v2, Lcom/yelp/android/ui/widgets/AnimatedToggleButton$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/yelp/android/ui/widgets/AnimatedToggleButton$1;-><init>(Lcom/yelp/android/ui/widgets/AnimatedToggleButton;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/widgets/AnimatedToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    return-void
.end method
