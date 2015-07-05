.class public Lcom/yelp/android/az/c;
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
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/az/c;->a:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/yelp/android/az/c;->a:Landroid/view/View;

    const v1, 0x7f0c029e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/az/c;->b:Landroid/widget/TextView;

    .line 30
    iget-object v0, p0, Lcom/yelp/android/az/c;->a:Landroid/view/View;

    const v1, 0x7f0c029d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/az/c;->c:Landroid/widget/ImageView;

    .line 32
    iget-object v0, p0, Lcom/yelp/android/az/c;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 34
    iget-object v0, p0, Lcom/yelp/android/az/c;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/az/c;->d:Landroid/view/animation/Animation;

    .line 37
    iget-object v0, p0, Lcom/yelp/android/az/c;->d:Landroid/view/animation/Animation;

    sget v1, Lcom/yelp/android/ui/util/cw;->e:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 38
    iget-object v0, p0, Lcom/yelp/android/az/c;->d:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 40
    iget-object v0, p0, Lcom/yelp/android/az/c;->a:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/az/d;

    invoke-direct {v1, p0, p5}, Lcom/yelp/android/az/d;-><init>(Lcom/yelp/android/az/c;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/az/c;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yelp/android/az/c;->d:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/az/c;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yelp/android/az/c;->c:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/az/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/az/c;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 55
    return-void
.end method
