.class Lcom/yelp/android/ui/activities/feed/c;
.super Landroid/widget/LinearLayout;
.source "FeedViewLinearLayout.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/c;->a:Landroid/view/View;

    .line 26
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 29
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    const v1, 0x7f0e008f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 37
    new-instance v1, Lcom/yelp/android/ui/activities/feed/c$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/feed/c$1;-><init>(Lcom/yelp/android/ui/activities/feed/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/feed/c;->setOrientation(I)V

    .line 47
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/c;->a:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/feed/c;->addView(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/c;->addView(Landroid/view/View;)V

    .line 49
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/c;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/c;->a:Landroid/view/View;

    .line 61
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/feed/c;->removeViewAt(I)V

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/c;->a:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/c;->addView(Landroid/view/View;I)V

    .line 63
    return-void
.end method
