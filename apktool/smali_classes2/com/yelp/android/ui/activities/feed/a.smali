.class public Lcom/yelp/android/ui/activities/feed/a;
.super Lcom/yelp/android/ui/util/w;
.source "FeedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/FeedItem;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ci/f;

.field private b:Landroid/support/v7/widget/RecyclerView$l;

.field private c:Lcom/yelp/android/ui/util/t;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/yelp/android/serializable/FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/ui/activities/feed/FeedItemType;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/yelp/android/ui/activities/feed/FeedType;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ci/f;Landroid/support/v7/widget/RecyclerView$l;Lcom/yelp/android/ui/util/t;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/a;->f:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 58
    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/a;->a:Lcom/yelp/android/ci/f;

    .line 59
    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/a;->b:Landroid/support/v7/widget/RecyclerView$l;

    .line 60
    iput-object p4, p0, Lcom/yelp/android/ui/activities/feed/a;->c:Lcom/yelp/android/ui/util/t;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/a;->d:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/yelp/android/ui/activities/feed/FeedItemType;->values()[Lcom/yelp/android/ui/activities/feed/FeedItemType;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/a;->e:Ljava/util/ArrayList;

    .line 63
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 134
    :goto_0
    return-object v0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedItem;

    .line 126
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->c()Lcom/yelp/android/ui/activities/feed/FeedItemType;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/ui/activities/feed/FeedItemType;->REVIEW:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    if-ne v3, v4, :cond_1

    .line 127
    const-class v3, Lcom/yelp/android/serializable/FeedReviewActivity;

    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedReviewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedReviewActivity;->d()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 134
    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/Photo;)V
    .locals 5

    .prologue
    .line 232
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Photo;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Photo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    :cond_0
    return-void

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 238
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedItem;

    .line 240
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->d()Lcom/yelp/android/ui/activities/ActivityType;

    move-result-object v1

    sget-object v3, Lcom/yelp/android/ui/activities/ActivityType;->BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/ActivityType;

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Photo;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 245
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 246
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/FeedBusinessPhotoActivity;

    .line 248
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Photo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedBusinessPhotoActivity;->d()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 250
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 253
    :cond_4
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public a(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/yelp/android/serializable/FeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/w;->a(Ljava/util/Collection;)V

    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/a;->notifyDataSetChanged()V

    .line 69
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Tip;)Z
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/a;->c(Ljava/lang/String;)Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    .line 207
    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 211
    :goto_0
    return v0

    .line 210
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Tip;->a(Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 6

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    .line 170
    const/4 v0, 0x0

    .line 171
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    :goto_0
    return v0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedItem;

    .line 175
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SingleFeedActivity;

    .line 176
    invoke-interface {v0}, Lcom/yelp/android/serializable/SingleFeedActivity;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Lcom/yelp/android/serializable/SingleFeedActivity;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 178
    const/4 v1, 0x1

    .line 179
    invoke-interface {v0}, Lcom/yelp/android/serializable/SingleFeedActivity;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/yelp/android/serializable/YelpBusiness;->a(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 183
    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusinessReview;)Z
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/a;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    .line 158
    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 165
    :goto_0
    return v0

    .line 161
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->C()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(I)V

    .line 162
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->m()Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;)V

    .line 164
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->l()Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;)V

    .line 165
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/a;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 140
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedItem;

    .line 142
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->c()Lcom/yelp/android/ui/activities/feed/FeedItemType;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/ui/activities/feed/FeedItemType;->REVIEW:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    if-ne v2, v3, :cond_0

    .line 143
    const-class v2, Lcom/yelp/android/serializable/FeedReviewActivity;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedReviewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedReviewActivity;->d()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 151
    :cond_1
    return-void
.end method

.method public b(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/yelp/android/serializable/FeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/w;->b(Ljava/util/Collection;)V

    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/a;->notifyDataSetChanged()V

    .line 75
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/yelp/android/serializable/Tip;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 199
    :goto_0
    return-object v0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedItem;

    .line 192
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->c()Lcom/yelp/android/ui/activities/feed/FeedItemType;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/ui/activities/feed/FeedItemType;->QUICKTIP:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    if-ne v3, v4, :cond_1

    .line 193
    const-class v3, Lcom/yelp/android/serializable/FeedTipActivity;

    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedTipActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedTipActivity;->d()Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 199
    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/a;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 114
    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 228
    :goto_0
    return-object v0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedItem;

    .line 220
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->c()Lcom/yelp/android/ui/activities/feed/FeedItemType;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/ui/activities/feed/FeedItemType;->CHECK_IN:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    if-ne v3, v4, :cond_1

    .line 221
    const-class v3, Lcom/yelp/android/serializable/FeedCheckInActivity;

    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedCheckInActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedCheckInActivity;->d()Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 228
    goto :goto_0
.end method

.method public d()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/FeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/yelp/android/serializable/ReviewDraft;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 274
    :goto_0
    return-object v0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedItem;

    .line 266
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->c()Lcom/yelp/android/ui/activities/feed/FeedItemType;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/ui/activities/feed/FeedItemType;->REVIEW_DRAFT:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    if-ne v3, v4, :cond_1

    .line 267
    const-class v3, Lcom/yelp/android/serializable/FeedReviewDraftActivity;

    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedReviewDraftActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedReviewDraftActivity;->d()Lcom/yelp/android/serializable/ReviewDraft;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraft;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 274
    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Lcom/yelp/android/serializable/Photo;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 303
    :goto_0
    return-object v0

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedItem;

    .line 294
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->c()Lcom/yelp/android/ui/activities/feed/FeedItemType;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    if-ne v3, v4, :cond_1

    .line 295
    const-class v3, Lcom/yelp/android/serializable/FeedBusinessPhotoActivity;

    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedBusinessPhotoActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedBusinessPhotoActivity;->d()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 303
    goto :goto_0
.end method

.method public g(Ljava/lang/String;)Lcom/yelp/android/serializable/Video;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 319
    :goto_0
    return-object v0

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedItem;

    .line 312
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->c()Lcom/yelp/android/ui/activities/feed/FeedItemType;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/ui/activities/feed/FeedItemType;->VIDEO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    if-ne v3, v4, :cond_1

    .line 313
    const-class v3, Lcom/yelp/android/serializable/FeedVideoActivity;

    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedVideoActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedVideoActivity;->d()Lcom/yelp/android/serializable/Video;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 319
    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/feed/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedItem;

    .line 85
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->c()Lcom/yelp/android/ui/activities/feed/FeedItemType;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/feed/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/FeedItem;

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/a;->a:Lcom/yelp/android/ci/f;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/a;->b:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/a;->c:Lcom/yelp/android/ui/util/t;

    invoke-virtual {v1, v0, v2, v3}, Lcom/yelp/android/serializable/FeedItem;->a(Lcom/yelp/android/ci/f;Landroid/support/v7/widget/RecyclerView$l;Lcom/yelp/android/ui/util/t;)Lcom/yelp/android/ui/activities/feed/viewbinder/n;

    move-result-object v0

    .line 94
    check-cast p2, Lcom/yelp/android/ui/activities/feed/c;

    .line 95
    if-nez p2, :cond_0

    .line 96
    new-instance p2, Lcom/yelp/android/ui/activities/feed/c;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/a;->f:Lcom/yelp/android/ui/activities/feed/FeedType;

    const/4 v4, 0x0

    move v3, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/yelp/android/ui/activities/feed/viewbinder/n;->b(Ljava/lang/Object;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p2, v6, v0}, Lcom/yelp/android/ui/activities/feed/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/a;->d:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    return-object p2

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/a;->f:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/feed/c;->a()Landroid/view/View;

    move-result-object v4

    move v3, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/yelp/android/ui/activities/feed/viewbinder/n;->b(Ljava/lang/Object;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/ui/activities/feed/c;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
