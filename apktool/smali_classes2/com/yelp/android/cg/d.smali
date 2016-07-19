.class public Lcom/yelp/android/cg/d;
.super Ljava/lang/Object;
.source "FeedButtonWrapper.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/ImageView;

.field private d:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/view/View;IIILandroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/cg/d;->a:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/yelp/android/cg/d;->a:Landroid/view/View;

    const v1, 0x7f0f02f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/cg/d;->b:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/yelp/android/cg/d;->a:Landroid/view/View;

    const v1, 0x7f0f02f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/cg/d;->c:Landroid/widget/ImageView;

    .line 36
    iget-object v0, p0, Lcom/yelp/android/cg/d;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 38
    iget-object v0, p0, Lcom/yelp/android/cg/d;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/cg/d;->d:Landroid/view/animation/Animation;

    .line 41
    iget-object v0, p0, Lcom/yelp/android/cg/d;->d:Landroid/view/animation/Animation;

    sget v1, Lcom/yelp/android/ui/util/av;->e:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 42
    iget-object v0, p0, Lcom/yelp/android/cg/d;->d:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/yelp/android/cg/d;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/cg/d;->a:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/cg/d$1;

    invoke-direct {v1, p0, p5}, Lcom/yelp/android/cg/d$1;-><init>(Lcom/yelp/android/cg/d;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/cg/d;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/cg/d;->d:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/cg/d;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/cg/d;->c:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/cg/d;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/cg/d;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 66
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/cg/d;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 70
    return-void
.end method
