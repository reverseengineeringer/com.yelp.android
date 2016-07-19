.class public Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;
.super Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;
.source "ActivityBusinessReviewsPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage$a;
    }
.end annotation


# instance fields
.field protected k:Lcom/yelp/android/ui/activities/reviewpage/c;

.field protected l:Lcom/yelp/android/ui/activities/reviewpage/c;

.field protected m:Lcom/yelp/android/ui/activities/reviewpage/c;

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

    .line 360
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
    .line 232
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

    .line 233
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    new-instance v2, Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/reviewpage/e;-><init>()V

    .line 237
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->n:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    sget-object v3, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->TRANSLATED:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/activities/reviewpage/e;->a(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;)V

    .line 240
    :cond_1
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
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

    .line 214
    .line 215
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

    .line 216
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/reviewpage/e;

    .line 217
    const v4, 0x7f07053a

    .line 218
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v5

    if-le v5, v10, :cond_1

    if-eq p1, v0, :cond_1

    .line 219
    const v4, 0x7f070538

    move v5, v4

    .line 221
    :goto_1
    iget-object v7, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->a:Lcom/yelp/android/ui/util/aj;

    add-int/lit8 v4, v2, 0x1

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->d:Ljava/util/Locale;

    invoke-virtual {v0, v9}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v3

    invoke-virtual {p0, v5, v8}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v0, v1}, Lcom/yelp/android/ui/util/aj;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    move v2, v4

    .line 225
    goto :goto_0

    .line 226
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
    .line 328
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

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

    .line 339
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

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
    .line 97
    const-string/jumbo v0, "FollowingReviews"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(Ljava/util/List;)V

    .line 101
    const-string/jumbo v0, "FriendsReviews"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(Ljava/util/List;)V

    .line 105
    const-string/jumbo v0, "YOUR REVIEW"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 106
    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/c;->d(Ljava/lang/Object;)V

    .line 109
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
            "<",
            "Ljava/lang/Void;",
            "**>;>;)V"
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 150
    return-void
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/dy;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 259
    :cond_2
    return-void
.end method

.method protected a(Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/c;->b(Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/c;->b(Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/c;->b(Ljava/lang/Object;)V

    .line 266
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
    const v3, 0x7f07053c

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, v3, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->a:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0f003b

    const v2, 0x7f070533

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/aj;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->a:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0f003c

    const v2, 0x7f070534

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/aj;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 207
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->a(Ljava/util/Collection;)V

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->c(Ljava/util/Locale;Ljava/util/Collection;)V

    .line 209
    return-void
.end method

.method protected b()Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "**>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->d:Ljava/util/Locale;

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    move-object v4, v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/e;

    .line 159
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviewpage/c;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/reviewpage/c;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/reviewpage/c;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 165
    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 167
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->d:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 175
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 176
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dy;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage$a;

    invoke-direct {v6, p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage$a;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;)V

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/dy;-><init>(Ljava/lang/String;IILjava/util/Locale;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    return-object v0

    :cond_1
    move-object v0, v1

    .line 167
    goto :goto_0

    :cond_2
    move-object v5, v1

    goto :goto_1
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 84
    const-string/jumbo v0, "FollowingReviews"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviewpage/c;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 87
    const-string/jumbo v0, "FriendsReviews"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviewpage/c;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 90
    const-string/jumbo v1, "YOUR REVIEW"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(I)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/yelp/android/appdata/webrequests/dy$a;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 269
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/dy$a;->a:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 270
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 271
    iget-object v3, p1, Lcom/yelp/android/appdata/webrequests/dy$a;->c:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(Ljava/util/Locale;)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->a:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f07053c

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    if-nez v0, :cond_1

    .line 274
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->a(Lcom/yelp/android/appdata/webrequests/dy$a;)V

    .line 276
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/yelp/android/appdata/webrequests/dy$a;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->i:Ljava/util/ArrayList;

    .line 277
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 278
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 279
    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/dy$a;->b:Ljava/util/Map;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->h:Ljava/util/Map;

    .line 280
    const/4 v0, 0x0

    move-object v1, v0

    .line 281
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 282
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v5

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 291
    :goto_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->o:Ljava/util/Locale;

    if-nez v1, :cond_9

    .line 292
    iget-object v1, p1, Lcom/yelp/android/appdata/webrequests/dy$a;->c:Ljava/util/Locale;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->o:Ljava/util/Locale;

    move-object v1, v0

    goto :goto_1

    .line 284
    :cond_2
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_2

    .line 286
    :cond_3
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->F()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 287
    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_2

    .line 296
    :cond_4
    if-eqz v1, :cond_5

    .line 297
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/c;->d(Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;->notifyDataSetChanged()V

    .line 301
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 302
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(Ljava/util/Collection;)V

    .line 303
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;->notifyDataSetChanged()V

    .line 306
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 307
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(Ljava/util/Collection;)V

    .line 308
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;->notifyDataSetChanged()V

    .line 314
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->o:Ljava/util/Locale;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->o:Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 315
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->h:Ljava/util/Map;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->o:Ljava/util/Locale;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->h:Ljava/util/Map;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->o:Ljava/util/Locale;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/reviewpage/c;->getCount()I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/reviewpage/c;->getCount()I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/reviewpage/c;->getCount()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->h:Ljava/util/Map;

    iget-object v1, p1, Lcom/yelp/android/appdata/webrequests/dy$a;->c:Ljava/util/Locale;

    invoke-virtual {p0, v2, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/Locale;)V

    .line 323
    return-void

    :cond_9
    move-object v1, v0

    goto/16 :goto_1
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->k:Lcom/yelp/android/ui/activities/reviewpage/c;

    .line 188
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->l:Lcom/yelp/android/ui/activities/reviewpage/c;

    .line 189
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->m:Lcom/yelp/android/ui/activities/reviewpage/c;

    .line 190
    return-void
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 354
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->i()V

    .line 355
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    instance-of v0, v0, Lcom/yelp/android/appdata/webrequests/dy;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dy;

    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage$a;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage$a;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dy;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 358
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
    .line 127
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f022a

    if-ne v0, v1, :cond_2

    .line 128
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 129
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string/jumbo v1, "source"

    const-string/jumbo v2, "reviews_list"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessReviewWrite:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->w()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    .line 134
    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->XMoreReviewsEdit:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->startActivity(Landroid/content/Intent;)V

    .line 142
    const/4 v0, 0x1

    .line 144
    :goto_1
    return v0

    .line 136
    :cond_0
    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->XMoreReviewsUpdate:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    goto :goto_0

    .line 139
    :cond_1
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->XMoreReviewsMenu:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    goto :goto_0

    .line 144
    :cond_2
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 113
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 115
    const v0, 0x7f0f022a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 118
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityBusinessReviewsPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->w()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getTextResourceForState()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 122
    :goto_0
    return v2

    .line 120
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
