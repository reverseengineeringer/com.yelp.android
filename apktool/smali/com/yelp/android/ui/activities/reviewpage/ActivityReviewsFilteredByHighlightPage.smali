.class public Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;
.super Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;
.source "ActivityReviewsFilteredByHighlightPage.java"


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
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;-><init>()V

    .line 291
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/ReviewHighlight;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 80
    const-string/jumbo v1, "extra.param.review_highlight"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/MenuItem;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 203
    if-nez p1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cannot obtain menu for review highlight "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/ReviewHighlight;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->m:Landroid/view/View;

    if-nez v0, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030121

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->m:Landroid/view/View;

    .line 211
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->m:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 213
    const v0, 0x7f0c0401

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->n:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f0c0400

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->o:Landroid/widget/TextView;

    .line 215
    const v0, 0x7f0c0402

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->p:Landroid/widget/TextView;

    .line 216
    const v0, 0x7f0c03ff

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->q:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MenuItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {p1}, Lcom/yelp/android/serializable/MenuItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    :goto_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/MenuItem;->getPhotos()Ljava/util/List;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 232
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->q:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->q:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 238
    :goto_2
    invoke-virtual {p1}, Lcom/yelp/android/serializable/MenuItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 240
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->q:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    goto :goto_2

    .line 243
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/MoreInfoAction;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 248
    if-nez p1, :cond_1

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cannot obtain more info action for review highlight "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/ReviewHighlight;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->r:Landroid/view/View;

    if-nez v0, :cond_2

    .line 255
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030123

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->r:Landroid/view/View;

    .line 257
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->r:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 259
    const v0, 0x7f0c0406

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->s:Landroid/widget/TextView;

    .line 260
    const v0, 0x7f0c0405

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->t:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 261
    const v0, 0x7f0c0404

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->u:Landroid/view/View;

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->s:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/MoreInfoAction;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {p1}, Lcom/yelp/android/serializable/MoreInfoAction;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 268
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->t:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->t:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 272
    :cond_3
    invoke-virtual {p1}, Lcom/yelp/android/serializable/MoreInfoAction;->getOpenUrl()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->u:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 275
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->u:Landroid/view/View;

    new-instance v2, Lcom/yelp/android/ui/activities/reviewpage/o;

    invoke-direct {v2, p0, v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/o;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;Ljava/lang/String;Lcom/yelp/android/serializable/MoreInfoAction;)V

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

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->h:Ljava/util/Map;

    iget-object v7, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->i:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewHighlight;->getIdentifier()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewHighlight;->getReviewHighlightType()Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    move-result-object v11

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewHighlight;->getReviewId()Ljava/lang/String;

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
    .line 97
    const-string/jumbo v0, "extra.param.review_highlight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewHighlight;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    .line 98
    const-string/jumbo v0, "extra.param.highlight_description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->l:Ljava/lang/CharSequence;

    .line 99
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
    .line 103
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 104
    return-void
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/ey;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method protected a(Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 0

    .prologue
    .line 143
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
    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->b:Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->d:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/bi;

    .line 131
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a(Z)V

    .line 132
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->a:Lcom/yelp/android/ui/util/bs;

    const v2, 0x7f0c0035

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->l:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, v0}, Lcom/yelp/android/ui/util/bs;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 133
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 91
    const-string/jumbo v0, "extra.param.review_highlight"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    const-string/jumbo v0, "extra.param.highlight_description"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->l:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method public b(Lcom/yelp/android/appdata/webrequests/ex;)V
    .locals 3

    .prologue
    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->h:Ljava/util/Map;

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->d:Ljava/util/Locale;

    iget v2, p1, Lcom/yelp/android/appdata/webrequests/ex;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/yelp/android/ui/activities/reviewpage/p;->a:[I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/ReviewHighlight;->getReviewHighlightType()Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/ex;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->l:Ljava/lang/CharSequence;

    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->a:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0c0035

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->a(Lcom/yelp/android/appdata/webrequests/ex;)V

    .line 166
    :cond_0
    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/ex;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->d:Ljava/util/Locale;

    iget v2, p1, Lcom/yelp/android/appdata/webrequests/ex;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->d:Ljava/util/Locale;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/Locale;)V

    .line 168
    return-void

    .line 155
    :pswitch_0
    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/ex;->c:Lcom/yelp/android/serializable/MenuItem;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->a(Lcom/yelp/android/serializable/MenuItem;)V

    .line 156
    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/ex;->d:Lcom/yelp/android/serializable/MoreInfoAction;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->a(Lcom/yelp/android/serializable/MoreInfoAction;)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected c()Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->b:Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->d:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/bi;

    .line 109
    const/4 v5, 0x0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->getCount()I

    move-result v0

    add-int/2addr v5, v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 118
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ew;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/ReviewHighlight;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/ReviewHighlight;->getReviewHighlightType()Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/ReviewHighlight;->getReviewId()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/yelp/android/ui/activities/reviewpage/q;

    invoke-direct {v7, p0}, Lcom/yelp/android/ui/activities/reviewpage/q;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;)V

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/appdata/webrequests/ew;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    return-object v0
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra.param.review_highlight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewHighlight;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    .line 126
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessHighlightReviews:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 188
    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->k:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/ReviewHighlight;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-object v0
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->h()V

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    instance-of v0, v0, Lcom/yelp/android/appdata/webrequests/ew;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ew;

    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/q;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/q;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ew;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 200
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->onCreate(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method
