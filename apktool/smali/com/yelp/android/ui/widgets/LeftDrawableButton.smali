.class public Lcom/yelp/android/ui/widgets/LeftDrawableButton;
.super Landroid/widget/RelativeLayout;
.source "LeftDrawableButton.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v2, -0x2

    const/4 v4, 0x0

    .line 50
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->a:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->a:Landroid/widget/TextView;

    const v1, 0x7f0c001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 53
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->b:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->b:Landroid/widget/ImageView;

    const v1, 0x7f0c001e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 56
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    const v0, 0x7f0200d2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setBackgroundResource(I)V

    .line 60
    :cond_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setGravity(I)V

    .line 62
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 64
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 65
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 66
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 68
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 71
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 72
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 73
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 74
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->a:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 75
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 76
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v3

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 77
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 79
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    return-void
.end method

.method public setImage(I)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    return-void
.end method
