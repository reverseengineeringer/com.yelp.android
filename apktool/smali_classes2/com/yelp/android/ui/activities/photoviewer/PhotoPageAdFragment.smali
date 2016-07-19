.class public Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;
.super Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;
.source "PhotoPageAdFragment.java"


# instance fields
.field private b:Lcom/yelp/android/serializable/YelpBusiness;

.field private c:Lcom/yelp/android/serializable/PhotoAdsResponse;

.field private d:Lcom/yelp/android/ui/util/t;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;-><init>()V

    .line 141
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment$2;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;)Lcom/yelp/android/serializable/PhotoAdsResponse;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->c:Lcom/yelp/android/serializable/PhotoAdsResponse;

    return-object v0
.end method

.method public static a(Lcom/yelp/android/serializable/PhotoAdsResponse;)Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;-><init>()V

    .line 46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 47
    const-string/jumbo v2, "extra.photo_ad"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->b:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method


# virtual methods
.method public k()Lcom/yelp/android/serializable/Media;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->c:Lcom/yelp/android/serializable/PhotoAdsResponse;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 60
    const v1, 0x7f0301c3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "extra.photo_ad"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/PhotoAdsResponse;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->c:Lcom/yelp/android/serializable/PhotoAdsResponse;

    .line 66
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->c:Lcom/yelp/android/serializable/PhotoAdsResponse;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/PhotoAdsResponse;->m()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->d:Lcom/yelp/android/ui/util/t;

    .line 68
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->c:Lcom/yelp/android/serializable/PhotoAdsResponse;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/PhotoAdsResponse;->c()Lcom/yelp/android/serializable/BusinessLocalAd;

    move-result-object v8

    .line 70
    const v1, 0x7f0f03cb

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 71
    const v2, 0x7f0f03c8

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 72
    const v3, 0x7f0f048d

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 73
    const v4, 0x7f0f054c

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 74
    const v5, 0x7f0f054a

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 75
    const v6, 0x7f0f02e2

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 78
    const v9, 0x7f0f054d

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v9, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v9, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v9, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v9, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v9, 0x7f0f0549

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->H_()V

    .line 86
    iget-object v9, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->d:Lcom/yelp/android/ui/util/t;

    invoke-virtual {v8}, Lcom/yelp/android/serializable/LocalAd;->n()Lcom/yelp/android/serializable/Photo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/yelp/android/serializable/Photo;->s()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v9

    new-instance v10, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment$1;

    invoke-direct {v10, p0, v0, v7}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment$1;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Lcom/yelp/android/ui/util/u$a;->a(Lcom/yelp/android/ui/util/t$c;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 100
    iget-object v5, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpBusiness;->aq()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v2, 0x7f07067a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v7

    invoke-virtual {p0, v2, v5}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->P()D

    move-result-wide v10

    invoke-static {v6, v10, v11}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/ImageView;D)V

    .line 105
    invoke-virtual {v8}, Lcom/yelp/android/serializable/LocalAd;->b()Lcom/yelp/android/serializable/LocalAdType;

    move-result-object v2

    sget-object v5, Lcom/yelp/android/serializable/LocalAdType;->PHOTO_CARD_SPECIALTY:Lcom/yelp/android/serializable/LocalAdType;

    invoke-virtual {v2, v5}, Lcom/yelp/android/serializable/LocalAdType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    invoke-virtual {v8}, Lcom/yelp/android/serializable/LocalAd;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    :goto_1
    invoke-virtual {v8}, Lcom/yelp/android/serializable/LocalAd;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 130
    const/4 v2, 0x3

    const v3, 0x7f0f03c8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 133
    :cond_0
    return-object v0

    .line 62
    :cond_1
    const v1, 0x7f0301c4

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    goto/16 :goto_0

    .line 109
    :cond_2
    const v2, 0x7f07067b

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v8}, Lcom/yelp/android/serializable/LocalAd;->g()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusinessReview;->O()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v7

    const/4 v7, 0x1

    invoke-virtual {v8}, Lcom/yelp/android/serializable/LocalAd;->g()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusinessReview;->P()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v7

    invoke-virtual {p0, v2, v5}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->d:Lcom/yelp/android/ui/util/t;

    invoke-virtual {v8}, Lcom/yelp/android/serializable/LocalAd;->g()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpBusinessReview;->N()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v2

    const v5, 0x7f0200c7

    invoke-virtual {v2, v5}, Lcom/yelp/android/ui/util/u$a;->b(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    goto :goto_1
.end method
