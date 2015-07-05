.class public Lcom/yelp/android/ui/activities/feed/aw;
.super Lcom/yelp/android/ui/activities/feed/b;
.source "PhotoMeFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/feed/b",
        "<",
        "Lcom/yelp/android/serializable/BizPhotoFeedEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/activities/feed/ay;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/ay;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/b;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/aw;->a:Lcom/yelp/android/ui/activities/feed/ay;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/aw;)Lcom/yelp/android/ui/activities/feed/ay;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/aw;->a:Lcom/yelp/android/ui/activities/feed/ay;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/FeedEntry;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x0

    .line 74
    check-cast p1, Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    .line 75
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/ui/activities/feed/az;

    if-nez v0, :cond_1

    .line 76
    :cond_0
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030115

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 78
    new-instance v0, Lcom/yelp/android/ui/activities/feed/az;

    invoke-direct {v0, p2, p4}, Lcom/yelp/android/ui/activities/feed/az;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    .line 79
    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/az;

    .line 83
    new-array v3, v7, [Lcom/yelp/android/ui/widgets/WebImageView;

    iget-object v1, v0, Lcom/yelp/android/ui/activities/feed/az;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    aput-object v1, v3, v2

    const/4 v1, 0x1

    iget-object v4, v0, Lcom/yelp/android/ui/activities/feed/az;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget-object v4, v0, Lcom/yelp/android/ui/activities/feed/az;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    aput-object v4, v3, v1

    .line 86
    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 89
    new-instance v6, Lcom/yelp/android/ui/activities/feed/ax;

    invoke-direct {v6, p0, p1, p3}, Lcom/yelp/android/ui/activities/feed/ax;-><init>(Lcom/yelp/android/ui/activities/feed/aw;Lcom/yelp/android/serializable/BizPhotoFeedEntry;I)V

    invoke-virtual {v5, v6}, Lcom/yelp/android/ui/widgets/WebImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p1}, Lcom/yelp/android/ui/activities/feed/az;->a(Landroid/content/Context;ILcom/yelp/android/serializable/FeedEntry;)V

    .line 101
    iget-object v0, p1, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 102
    :goto_1
    if-ge v1, v7, :cond_4

    .line 103
    if-ge v1, v4, :cond_3

    .line 104
    aget-object v0, v3, v1

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/WebImageView;->reset()V

    .line 105
    aget-object v0, v3, v1

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 106
    aget-object v5, v3, v1

    iget-object v0, p1, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    const v6, 0x7f0202cb

    invoke-virtual {v5, v0, v6}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 108
    aget-object v0, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/widgets/WebImageView;->setTag(Ljava/lang/Object;)V

    .line 102
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 110
    :cond_3
    aget-object v0, v3, v1

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    goto :goto_2

    .line 113
    :cond_4
    return-object p4
.end method
