.class public Lcom/yelp/android/ch/c;
.super Lcom/yelp/android/cg/a;
.source "FeedStandardBusinessViewHolder.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/cg/a;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    .line 18
    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->au()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
