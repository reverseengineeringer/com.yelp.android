.class public Lcom/yelp/android/ui/activities/feed/az;
.super Lcom/yelp/android/ui/activities/feed/av;
.source "PhotoMeFeedViewBinder.java"


# instance fields
.field public a:Lcom/yelp/android/ui/widgets/WebImageView;

.field public b:Lcom/yelp/android/ui/widgets/WebImageView;

.field public c:Lcom/yelp/android/ui/widgets/WebImageView;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/av;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    .line 133
    const v0, 0x7f0c03e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/az;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 134
    const v0, 0x7f0c03e8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/az;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 135
    const v0, 0x7f0c03e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/az;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 136
    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/activities/feed/av;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/content/Context;ILcom/yelp/android/serializable/FeedEntry;)V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/av;->a(Landroid/content/Context;ILcom/yelp/android/serializable/FeedEntry;)V

    return-void
.end method
