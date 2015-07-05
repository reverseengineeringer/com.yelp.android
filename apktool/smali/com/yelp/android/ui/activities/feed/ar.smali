.class Lcom/yelp/android/ui/activities/feed/ar;
.super Landroid/widget/LinearLayout;
.source "FeedListAdapter.java"


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
    .line 202
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 203
    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/ar;->a:Landroid/view/View;

    .line 205
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 206
    const v1, 0x7f01004a

    invoke-static {p1, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;I)I

    move-result v1

    .line 207
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 208
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    const v1, 0x7f0a0056

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 215
    new-instance v1, Lcom/yelp/android/ui/activities/feed/as;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/feed/as;-><init>(Lcom/yelp/android/ui/activities/feed/ar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 223
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/feed/ar;->setOrientation(I)V

    .line 224
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/ar;->a:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/feed/ar;->addView(Landroid/view/View;)V

    .line 225
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/ar;->addView(Landroid/view/View;)V

    .line 226
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/ar;)Landroid/view/View;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ar;->a:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 233
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/ar;->a:Landroid/view/View;

    .line 234
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/feed/ar;->removeViewAt(I)V

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ar;->a:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/ar;->addView(Landroid/view/View;I)V

    .line 236
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/ar;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/feed/ar;->a(Landroid/view/View;)V

    return-void
.end method
