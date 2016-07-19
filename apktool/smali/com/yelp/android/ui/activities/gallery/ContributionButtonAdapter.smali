.class public Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ContributionButtonAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$a;,
        Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$b;,
        Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;",
        ">;",
        "Lcom/yelp/android/ui/util/g;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/content/res/Resources;

.field private c:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$a;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$a;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$a;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;->a:Landroid/view/LayoutInflater;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;->b:Landroid/content/res/Resources;

    .line 55
    iput-object p2, p0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;->c:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$a;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;)Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;->c:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$a;

    return-object v0
.end method


# virtual methods
.method protected a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0300e1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$b;

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$b;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    return-object v0
.end method

.method protected a(Landroid/view/View;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$b;

    .line 80
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    .line 82
    iget-object v2, v0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$b;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;->b:Landroid/content/res/Resources;

    iget v4, v1, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;->mTextId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, v0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$b;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;->b:Landroid/content/res/Resources;

    iget v4, v1, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;->mPictureId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v0, v0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$b;->b:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$1;-><init>(Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .prologue
    .line 62
    if-nez p2, :cond_0

    .line 63
    invoke-virtual {p0, p1, p3}, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 68
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;->a(Landroid/view/View;I)V

    .line 69
    return-object p2
.end method
