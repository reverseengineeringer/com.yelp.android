.class public Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;
.super Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;
.source "ActivityBusinessReviewsPage.java"


# instance fields
.field protected k:Lcom/yelp/android/ui/activities/reviewpage/ak;

.field protected l:Lcom/yelp/android/ui/activities/reviewpage/ak;

.field protected m:Lcom/yelp/android/ui/activities/reviewpage/ak;

.field protected n:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;-><init>()V

    .line 329
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 65
    const-string/jumbo v1, "extra.translated_language_reviews"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 66
    return-object v0
.end method

.method private a(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 218
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    new-instance v2, Lcom/yelp/android/ui/activities/reviewpage/bi;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/reviewpage/bi;-><init>()V

    .line 222
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->n:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    sget-object v3, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->TRANSLATED:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;)V

    .line 225
    :cond_1
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_2
    return-void
.end method

.method private c(Ljava/util/Locale;Ljava/util/Collection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 201
    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 203
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/reviewpage/bi;

    .line 204
    const v4, 0x7f07053b

    .line 205
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v5

    if-le v5, v10, :cond_1

    if-eq p1, v0, :cond_1

    .line 206
    const v4, 0x7f070539

    move v5, v4

    .line 208
    :goto_1
    iget-object v7, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->a:Lcom/yelp/android/ui/util/bs;

    add-int/lit8 v4, v2, 0x1

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->d:Ljava/util/Locale;

    invoke-virtual {v0, v9}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v3

    invoke-virtual {p0, v5, v8}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v0, v1}, Lcom/yelp/android/ui/util/bs;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    move v2, v4

    .line 210
    goto :goto_0

    .line 211
    :cond_0
    return-void

    :cond_1
    move v5, v4

    goto :goto_1
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m()I

    move-result v6

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 315
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->h:Ljava/util/Map;

    iget-object v7, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->i:Ljava/util/ArrayList;

    const/4 v8, 0x1

    move-object v0, p0

    move-object v4, p2

    invoke-static/range {v0 .. v8}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/Map;Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 94
    const-string/jumbo v0, "FollowingReviews"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(Ljava/util/List;)V

    .line 98
    const-string/jumbo v0, "FriendsReviews"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(Ljava/util/List;)V

    .line 102
    const-string/jumbo v0, "YOUR REVIEW"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 103
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->c(Ljava/lang/Object;)V

    .line 106
    :cond_0
    return-void
.end method

.method protected a(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;>;)V"
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 147
    return-void
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/ey;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 244
    :cond_2
    return-void
.end method

.method protected a(Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(Ljava/lang/Object;)V

    .line 251
    return-void
.end method

.method protected a(Ljava/util/Locale;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v3, 0x7f07053f

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, v3, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->a:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0c0033

    const v2, 0x7f070534

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/bs;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->a:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0c0034

    const v2, 0x7f070535

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/bs;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 194
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->a(Ljava/util/Collection;)V

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->c(Ljava/util/Locale;Ljava/util/Collection;)V

    .line 196
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 84
    const-string/jumbo v0, "FollowingReviews"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 86
    const-string/jumbo v0, "FriendsReviews"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 88
    const-string/jumbo v1, "YOUR REVIEW"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 90
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/ak;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(I)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/yelp/android/appdata/webrequests/ez;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 254
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/ez;->a:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 255
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 256
    iget-object v3, p1, Lcom/yelp/android/appdata/webrequests/ez;->c:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/YelpBusinessReview;->setLocale(Ljava/util/Locale;)V

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->a:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f07053f

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    if-nez v0, :cond_1

    .line 259
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->a(Lcom/yelp/android/appdata/webrequests/ez;)V

    .line 261
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/yelp/android/appdata/webrequests/ez;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->i:Ljava/util/ArrayList;

    .line 262
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 263
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 264
    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/ez;->b:Ljava/util/Map;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->h:Ljava/util/Map;

    .line 265
    const/4 v0, 0x0

    move-object v1, v0

    .line 266
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 267
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v5

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 276
    :goto_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->o:Ljava/util/Locale;

    if-nez v1, :cond_9

    .line 277
    iget-object v1, p1, Lcom/yelp/android/appdata/webrequests/ez;->c:Ljava/util/Locale;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->o:Ljava/util/Locale;

    move-object v1, v0

    goto :goto_1

    .line 269
    :cond_2
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->isUserFollowed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_2

    .line 271
    :cond_3
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->isUserFriend()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_2

    .line 281
    :cond_4
    if-eqz v1, :cond_5

    .line 282
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->c(Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->notifyDataSetChanged()V

    .line 286
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(Ljava/util/Collection;)V

    .line 288
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->notifyDataSetChanged()V

    .line 291
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 292
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(Ljava/util/Collection;)V

    .line 293
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->notifyDataSetChanged()V

    .line 299
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->o:Ljava/util/Locale;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->o:Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 300
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->h:Ljava/util/Map;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->o:Ljava/util/Locale;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->h:Ljava/util/Map;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->o:Ljava/util/Locale;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/reviewpage/ak;->getCount()I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/reviewpage/ak;->getCount()I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/reviewpage/ak;->getCount()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->h:Ljava/util/Map;

    iget-object v1, p1, Lcom/yelp/android/appdata/webrequests/ez;->c:Ljava/util/Locale;

    invoke-virtual {p0, v2, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/Locale;)V

    .line 305
    return-void

    :cond_9
    move-object v1, v0

    goto/16 :goto_1
.end method

.method protected c()Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->d:Ljava/util/Locale;

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    move-object v4, v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/bi;

    .line 156
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviewpage/ak;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/reviewpage/ak;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/reviewpage/ak;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 160
    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 162
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->d:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 171
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 172
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ey;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/yelp/android/ui/activities/reviewpage/g;

    invoke-direct {v6, p0}, Lcom/yelp/android/ui/activities/reviewpage/g;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;)V

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/ey;-><init>(Ljava/lang/String;IILjava/util/Locale;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    return-object v0

    :cond_1
    move-object v0, v1

    .line 162
    goto :goto_0

    :cond_2
    move-object v5, v1

    goto :goto_1
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/ak;

    .line 179
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/ak;

    .line 180
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/ak;

    .line 181
    return-void
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 323
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->h()V

    .line 324
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    instance-of v0, v0, Lcom/yelp/android/appdata/webrequests/ey;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ey;

    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/g;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/g;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ey;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 327
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.translated_language_reviews"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->n:Ljava/util/HashSet;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->n:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 77
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->onCreate(Landroid/os/Bundle;)V

    .line 78
    iput-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->o:Ljava/util/Locale;

    .line 79
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->a(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c01ea

    if-ne v0, v1, :cond_2

    .line 125
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 126
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string/jumbo v1, "source"

    const-string/jumbo v2, "reviews_list"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessReviewWrite:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewState()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    .line 131
    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->XMoreReviewsEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 138
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->startActivity(Landroid/content/Intent;)V

    .line 139
    const/4 v0, 0x1

    .line 141
    :goto_1
    return v0

    .line 133
    :cond_0
    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->XMoreReviewsUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    goto :goto_0

    .line 136
    :cond_1
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->XMoreReviewsMenu:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    goto :goto_0

    .line 141
    :cond_2
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 110
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 112
    const v0, 0x7f0c01ea

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 115
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewState()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getTextResourceForState()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 119
    :goto_0
    return v2

    .line 117
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
