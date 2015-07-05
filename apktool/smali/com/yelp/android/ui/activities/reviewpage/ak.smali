.class public Lcom/yelp/android/ui/activities/reviewpage/ak;
.super Lcom/yelp/android/ui/util/au;
.source "ReviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/YelpBusinessReview;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/YelpException;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ak;->b:Z

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/am;)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->c(Lcom/yelp/android/ui/activities/reviewpage/am;)V

    return-void
.end method

.method private b(Lcom/yelp/android/ui/activities/reviewpage/am;)V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p1, Lcom/yelp/android/ui/activities/reviewpage/am;->n:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v0, p1, Lcom/yelp/android/ui/activities/reviewpage/am;->o:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    iget-object v0, p1, Lcom/yelp/android/ui/activities/reviewpage/am;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_0

    .line 278
    invoke-static {p1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->c(Lcom/yelp/android/ui/activities/reviewpage/am;)V

    .line 292
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p1, Lcom/yelp/android/ui/activities/reviewpage/am;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 281
    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/al;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/al;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ak;Lcom/yelp/android/ui/activities/reviewpage/am;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private b(I)Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ak;->a:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/yelp/android/ui/activities/reviewpage/am;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 301
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/am;->n:Landroid/widget/TextView;

    .line 303
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/am;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/am;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 110
    if-nez p2, :cond_0

    .line 111
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ea

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 113
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/am;

    invoke-direct {v0, p2, v2}, Lcom/yelp/android/ui/activities/reviewpage/am;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 115
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/am;

    .line 116
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(I)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v7

    .line 117
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 119
    iget-object v4, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->b:Landroid/view/View;

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->isFirstReview()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->j:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->isUserElite()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 124
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->k:Landroid/widget/TextView;

    const v4, 0x7f070230

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-static {v4, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_1
    const v1, 0x7f0e0010

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserFriendCount()I

    move-result v4

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserFriendCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v8, v1, v4, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 133
    iget-object v9, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->l:Landroid/widget/TextView;

    iget-boolean v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->a:Z

    if-eqz v1, :cond_9

    move-object v1, v4

    :goto_2
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 138
    const v1, 0x7f0e0022

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserReviewCount()I

    move-result v4

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserReviewCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v8, v1, v4, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 140
    iget-object v9, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->m:Landroid/widget/TextView;

    iget-boolean v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->a:Z

    if-eqz v1, :cond_a

    move-object v1, v4

    :goto_3
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 145
    iget-boolean v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->a:Z

    invoke-static {v1, v7, v8}, Lcom/yelp/android/serializable/Passport;->getMediaQuantityString(ZLcom/yelp/android/serializable/YelpBusinessReview;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 147
    iget-object v4, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->n:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v4, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->n:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 150
    iget-boolean v4, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->a:Z

    if-eqz v4, :cond_1

    .line 151
    iget-object v4, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->o:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v4, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->o:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 153
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->b(Lcom/yelp/android/ui/activities/reviewpage/am;)V

    .line 159
    :cond_1
    iget-object v4, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->i:Lcom/yelp/android/ui/widgets/WebImageView;

    iget-boolean v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->a:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->CLIP:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    :goto_4
    invoke-virtual {v4, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setForceMode(Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;)V

    .line 165
    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserCheckInCount()I

    move-result v1

    if-lez v1, :cond_d

    .line 166
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_c

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getAttachedMediaCount()I

    move-result v1

    if-lez v1, :cond_c

    .line 168
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->g:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserCheckInCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_5
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->g:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserLocationRank()Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/RankTitle$Rank;->getRankIcon()I

    move-result v4

    invoke-virtual {v1, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 180
    :goto_6
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getAttachedMediaCount()I

    move-result v1

    if-lez v1, :cond_e

    .line 182
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->h:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getAttachedPhotoCount()I

    move-result v4

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getAttachedVideoCount()I

    move-result v8

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getAttachedMediaCount()I

    move-result v9

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v2, v4, v8, v9, v10}, Lcom/yelp/android/serializable/Passport;->getMediaQuantityString(ZIIILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    :cond_2
    :goto_7
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->i:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/WebImageView;->reset()V

    .line 197
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->i:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v4

    const v8, 0x7f02009b

    invoke-virtual {v1, v4, v8}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 198
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->c:Landroid/widget/ImageView;

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getRating()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v4}, Lcom/yelp/android/ui/util/cp;->a(Landroid/widget/ImageView;F)V

    .line 200
    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getPreviousReviews()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getPreviousReviews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    move v1, v5

    .line 202
    :goto_8
    iget-object v4, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ak;->b:Z

    if-nez v1, :cond_14

    .line 206
    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 209
    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->shouldDisplayTranslation()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getTranslatedText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 210
    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getTranslatedText()Ljava/lang/String;

    move-result-object v1

    .line 215
    :goto_9
    iget-object v3, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->f:Landroid/widget/TextView;

    iget-boolean v4, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->a:Z

    if-eqz v4, :cond_11

    :goto_a
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_4
    :goto_b
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getDateModified()Ljava/util/Date;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/am;->a(Lcom/yelp/android/ui/activities/reviewpage/am;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 239
    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/am;->a(Lcom/yelp/android/ui/activities/reviewpage/am;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_5

    move v2, v6

    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :cond_6
    return-object p2

    :cond_7
    move v1, v3

    .line 119
    goto/16 :goto_0

    .line 128
    :cond_8
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 133
    :cond_9
    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserFriendCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 140
    :cond_a
    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserReviewCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 159
    :cond_b
    sget-object v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->DEFAULT:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    goto/16 :goto_4

    .line 171
    :cond_c
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->g:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v8, 0x7f0e0005

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserCheckInCount()I

    move-result v9

    new-array v10, v2, [Ljava/lang/String;

    invoke-static {v4, v8, v9, v10}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 178
    :cond_d
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 193
    :cond_e
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_f
    move v1, v2

    .line 200
    goto/16 :goto_8

    .line 212
    :cond_10
    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getText()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    .line 215
    :cond_11
    const-string/jumbo v4, "\n"

    const-string/jumbo v5, " "

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    .line 222
    :cond_12
    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getTextAttributed()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 223
    iget-object v3, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->f:Landroid/widget/TextView;

    iget-boolean v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->a:Z

    if-eqz v1, :cond_13

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getTextAttributed()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "\n"

    const-string/jumbo v5, "<br/>"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    :goto_c
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    :cond_13
    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getTextAttributed()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "\n"

    const-string/jumbo v5, " "

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 229
    :cond_14
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->f:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview;->getTextExcerpt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b
.end method

.method public a(I)Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/au;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ak;->a:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 47
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ak;->b:Z

    .line 51
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ak;->a:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 315
    if-nez p2, :cond_0

    .line 317
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 318
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    sget v0, Lcom/yelp/android/appdata/ao;->j:I

    sget v2, Lcom/yelp/android/appdata/ao;->j:I

    sget v3, Lcom/yelp/android/appdata/ao;->j:I

    sget v4, Lcom/yelp/android/appdata/ao;->j:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    move-object v0, v1

    .line 323
    check-cast v0, Landroid/widget/TextView;

    .line 324
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 325
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0095

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 326
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ak;->a:Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ak;->a:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(I)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 103
    const-string/jumbo v0, "Could not detect the view type of the position %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 106
    :goto_0
    return-object p2

    .line 97
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/reviewpage/ak;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
