.class public final Lcom/yelp/android/ui/activities/profile/t;
.super Lcom/yelp/android/ui/util/au;
.source "UserCheckInAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/YelpCheckIn;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/serializable/User;

.field private final b:Lcom/yelp/android/ui/activities/friendcheckins/r;

.field private final c:Lcom/yelp/android/ui/activities/friendcheckins/r;

.field private final d:Lcom/yelp/android/ui/activities/friendcheckins/r;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/User;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/t;->a:Lcom/yelp/android/serializable/User;

    .line 42
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/r;

    const-string/jumbo v1, "key.data"

    const-string/jumbo v2, "key.checked"

    invoke-direct {v0, p2, v1, v2}, Lcom/yelp/android/ui/activities/friendcheckins/r;-><init>(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/t;->b:Lcom/yelp/android/ui/activities/friendcheckins/r;

    .line 43
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/r;

    const-string/jumbo v1, "key.data"

    const-string/jumbo v2, "key.checked"

    invoke-direct {v0, p3, v1, v2}, Lcom/yelp/android/ui/activities/friendcheckins/r;-><init>(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/t;->c:Lcom/yelp/android/ui/activities/friendcheckins/r;

    .line 44
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/r;

    const-string/jumbo v1, "key.data"

    const-string/jumbo v2, "key.checked"

    invoke-direct {v0, p4, v1, v2}, Lcom/yelp/android/ui/activities/friendcheckins/r;-><init>(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/t;->d:Lcom/yelp/android/ui/activities/friendcheckins/r;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 104
    const-string/jumbo v0, "list"

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/t;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 105
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    const-string/jumbo v0, "list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/t;->a(Ljava/util/List;)V

    .line 111
    :cond_0
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 49
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 50
    if-nez p2, :cond_0

    .line 51
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030125

    invoke-virtual {v0, v1, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 53
    new-instance v0, Lcom/yelp/android/ui/activities/profile/u;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/ui/activities/profile/u;-><init>(Lcom/yelp/android/ui/activities/profile/t;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/t;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 56
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/t;->a:Lcom/yelp/android/serializable/User;

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/t;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpCheckIn;->updateUser(Lcom/yelp/android/serializable/User;)V

    .line 59
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/profile/u;

    .line 60
    iget-object v3, v1, Lcom/yelp/android/ui/activities/profile/u;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusinessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v3, v1, Lcom/yelp/android/ui/activities/profile/u;->d:Landroid/widget/TextView;

    const v4, 0x7f0e0006

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getTotalCount()I

    move-result v5

    new-array v6, v8, [Ljava/lang/String;

    invoke-static {v2, v4, v5, v6}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v3, v1, Lcom/yelp/android/ui/activities/profile/u;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getLocationRankTitle()Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/RankTitle$Rank;->getRankIcon()I

    move-result v4

    invoke-virtual {v3, v4, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 65
    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/YelpCheckIn;->getCommentCountLikeCountText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    .line 67
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x12

    invoke-virtual {v3, v4, v8, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 69
    iget-object v4, v1, Lcom/yelp/android/ui/activities/profile/u;->g:Landroid/widget/TextView;

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 71
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v3

    .line 72
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0022

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 74
    iget-object v4, v1, Lcom/yelp/android/ui/activities/profile/u;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v3, v1, Lcom/yelp/android/ui/activities/profile/u;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->getAvgRating()F

    move-result v4

    invoke-static {v3, v4}, Lcom/yelp/android/ui/util/cp;->a(Landroid/widget/TextView;F)V

    .line 77
    iget-object v3, v1, Lcom/yelp/android/ui/activities/profile/u;->i:Landroid/widget/TextView;

    sget-object v4, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getDateCreated()Ljava/util/Date;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, v1, Lcom/yelp/android/ui/activities/profile/u;->j:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotoUrl()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020090

    invoke-virtual {v2, v3, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 80
    iget-object v2, v1, Lcom/yelp/android/ui/activities/profile/u;->a:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/j;)V

    .line 81
    iget-object v2, v1, Lcom/yelp/android/ui/activities/profile/u;->a:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Feedback;->isLikedByUser()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setChecked(Z)V

    .line 82
    iget-object v2, v1, Lcom/yelp/android/ui/activities/profile/u;->a:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/t;->b:Lcom/yelp/android/ui/activities/friendcheckins/r;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/j;)V

    .line 83
    iget-object v2, v1, Lcom/yelp/android/ui/activities/profile/u;->a:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setTag(Ljava/lang/Object;)V

    .line 84
    iget-object v2, v1, Lcom/yelp/android/ui/activities/profile/u;->b:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/t;->c:Lcom/yelp/android/ui/activities/friendcheckins/r;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v2, v1, Lcom/yelp/android/ui/activities/profile/u;->b:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object v2, v1, Lcom/yelp/android/ui/activities/profile/u;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/t;->d:Lcom/yelp/android/ui/activities/friendcheckins/r;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v2, v1, Lcom/yelp/android/ui/activities/profile/u;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getPrimaryComment()Lcom/yelp/android/serializable/Comment;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 89
    iget-object v2, v1, Lcom/yelp/android/ui/activities/profile/u;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getPrimaryComment()Lcom/yelp/android/serializable/Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, v1, Lcom/yelp/android/ui/activities/profile/u;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, v1, Lcom/yelp/android/ui/activities/profile/u;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v0, v1, Lcom/yelp/android/ui/activities/profile/u;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/profile/u;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 100
    :goto_0
    return-object p2

    .line 95
    :cond_2
    iget-object v0, v1, Lcom/yelp/android/ui/activities/profile/u;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, v1, Lcom/yelp/android/ui/activities/profile/u;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v0, v1, Lcom/yelp/android/ui/activities/profile/u;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/profile/u;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method
