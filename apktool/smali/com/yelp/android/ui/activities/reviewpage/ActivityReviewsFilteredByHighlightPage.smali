.class public Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;
.super Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;
.source "ActivityReviewsFilteredByHighlightPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage$2;,
        Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage$a;
    }
.end annotation


# instance fields
.field private k:Lcom/yelp/android/serializable/ReviewHighlight;

.field private l:Ljava/lang/CharSequence;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/yelp/android/ui/widgets/WebImageView;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/TextView;

.field private t:Lcom/yelp/android/ui/widgets/WebImageView;

.field private u:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;-><init>()V

    .line 323
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/ReviewHighlight;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    const-string/jumbo v1, "extra.param.review_highlight"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/MenuItem;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 228
    if-nez p1, :cond_0

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cannot obtain menu for review highlight "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/ReviewHighlight;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->m:Landroid/view/View;

    if-nez v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030184

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->m:Landroid/view/View;

    .line 237
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->m:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 239
    const v0, 0x7f0f04e7

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->n:Landroid/widget/TextView;

    .line 240
    const v0, 0x7f0f04e6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->o:Landroid/widget/TextView;

    .line 241
    const v0, 0x7f0f04e8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->p:Landroid/widget/TextView;

    .line 242
    const v0, 0x7f0f04e5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->q:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MenuItem;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    invoke-virtual {p1}, Lcom/yelp/android/serializable/MenuItem;->b()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    :goto_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/MenuItem;->d()Ljava/util/List;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 258
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->q:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->q:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 264
    :goto_2
    invoke-virtual {p1}, Lcom/yelp/android/serializable/MenuItem;->a()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 266
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->q:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    goto :goto_2

    .line 269
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/MoreInfoAction;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 274
    if-nez p1, :cond_1

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cannot obtain more info action for review highlight "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/ReviewHighlight;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->r:Landroid/view/View;

    if-nez v0, :cond_2

    .line 283
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030186

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->r:Landroid/view/View;

    .line 286
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->r:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 288
    const v0, 0x7f0f04ec

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->s:Landroid/widget/TextView;

    .line 289
    const v0, 0x7f0f04eb

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->t:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 290
    const v0, 0x7f0f04ea

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->u:Landroid/view/View;

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->s:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MoreInfoAction;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {p1}, Lcom/yelp/android/serializable/MoreInfoAction;->a()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 297
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->t:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->t:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 301
    :cond_3
    invoke-virtual {p1}, Lcom/yelp/android/serializable/MoreInfoAction;->b()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->u:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 304
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->u:Landroid/view/View;

    new-instance v2, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage$1;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;Ljava/lang/String;Lcom/yelp/android/serializable/MoreInfoAction;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 13
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
    const/4 v8, 0x1

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->h:Ljava/util/Map;

    iget-object v7, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->i:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewHighlight;->f()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewHighlight;->a()Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    move-result-object v11

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewHighlight;->d()Ljava/lang/String;

    move-result-object v12

    move-object v0, p0

    move-object v4, p2

    move v9, v8

    invoke-static/range {v0 .. v12}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/Map;Ljava/util/ArrayList;ZZLjava/lang/String;Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 98
    const-string/jumbo v0, "extra.param.review_highlight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewHighlight;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    .line 99
    const-string/jumbo v0, "extra.param.highlight_description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->l:Ljava/lang/CharSequence;

    .line 100
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
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 105
    return-void
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/dy;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method protected a(Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 0

    .prologue
    .line 149
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
    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->b:Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->d:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/e;

    .line 137
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/e;->a(Z)V

    .line 138
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->a:Lcom/yelp/android/ui/util/aj;

    const v2, 0x7f0f003d

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->l:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, v0}, Lcom/yelp/android/ui/util/aj;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 139
    return-void
.end method

.method protected b()Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 8
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
    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->b:Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->d:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/e;

    .line 110
    const/4 v5, 0x0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->getCount()I

    move-result v0

    add-int/2addr v5, v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 119
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dx;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/ReviewHighlight;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/ReviewHighlight;->a()Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/ReviewHighlight;->d()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage$a;

    invoke-direct {v7, p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage$a;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;)V

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/appdata/webrequests/dx;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    return-object v0
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 92
    const-string/jumbo v0, "extra.param.review_highlight"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    const-string/jumbo v0, "extra.param.highlight_description"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->l:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method public b(Lcom/yelp/android/appdata/webrequests/dx$a;)V
    .locals 3

    .prologue
    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->h:Ljava/util/Map;

    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->d:Ljava/util/Locale;

    iget v2, p1, Lcom/yelp/android/appdata/webrequests/dx$a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage$2;->a:[I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/ReviewHighlight;->a()Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/dx$a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->l:Ljava/lang/CharSequence;

    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->a:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0f003d

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->a(Lcom/yelp/android/appdata/webrequests/dx$a;)V

    .line 172
    :cond_0
    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/dx$a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->d:Ljava/util/Locale;

    iget v2, p1, Lcom/yelp/android/appdata/webrequests/dx$a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->d:Ljava/util/Locale;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/Locale;)V

    .line 176
    return-void

    .line 161
    :pswitch_0
    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/dx$a;->c:Lcom/yelp/android/serializable/MenuItem;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->a(Lcom/yelp/android/serializable/MenuItem;)V

    .line 162
    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/dx$a;->d:Lcom/yelp/android/serializable/MoreInfoAction;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->a(Lcom/yelp/android/serializable/MoreInfoAction;)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra.param.review_highlight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewHighlight;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    .line 132
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessHighlightReviews:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 207
    const-string/jumbo v2, "business_id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string/jumbo v2, "type"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/ReviewHighlight;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2, v0}, Lcom/yelp/android/serializable/YelpBusiness;->a(Landroid/location/Location;)D

    move-result-wide v2

    .line 211
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    const-string/jumbo v2, "distanceFromBusiness"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3, v0}, Lcom/yelp/android/serializable/YelpBusiness;->a(Landroid/location/Location;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_0
    return-object v1
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 220
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->i()V

    .line 221
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    instance-of v0, v0, Lcom/yelp/android/appdata/webrequests/dx;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dx;

    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage$a;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage$a;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dx;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 225
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->onCreate(Landroid/os/Bundle;)V

    .line 88
    return-void
.end method
