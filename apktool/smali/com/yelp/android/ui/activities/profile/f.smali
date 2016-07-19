.class public final Lcom/yelp/android/ui/activities/profile/f;
.super Lcom/yelp/android/ui/util/w;
.source "UserCheckInAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/profile/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/YelpCheckIn;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/serializable/User;

.field private final b:Lcom/yelp/android/ui/activities/friendcheckins/c;

.field private final c:Lcom/yelp/android/ui/activities/friendcheckins/c;

.field private final d:Lcom/yelp/android/ui/activities/friendcheckins/c;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/User;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/f;->a:Lcom/yelp/android/serializable/User;

    .line 46
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/c;

    const-string/jumbo v1, "key.data"

    const-string/jumbo v2, "key.checked"

    invoke-direct {v0, p2, v1, v2}, Lcom/yelp/android/ui/activities/friendcheckins/c;-><init>(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/f;->b:Lcom/yelp/android/ui/activities/friendcheckins/c;

    .line 47
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/c;

    const-string/jumbo v1, "key.data"

    const-string/jumbo v2, "key.checked"

    invoke-direct {v0, p3, v1, v2}, Lcom/yelp/android/ui/activities/friendcheckins/c;-><init>(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/f;->c:Lcom/yelp/android/ui/activities/friendcheckins/c;

    .line 48
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/c;

    const-string/jumbo v1, "key.data"

    const-string/jumbo v2, "key.checked"

    invoke-direct {v0, p4, v1, v2}, Lcom/yelp/android/ui/activities/friendcheckins/c;-><init>(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/f;->d:Lcom/yelp/android/ui/activities/friendcheckins/c;

    .line 49
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 114
    const-string/jumbo v0, "list"

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/f;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 115
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    const-string/jumbo v0, "list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/f;->a(Ljava/util/List;)V

    .line 121
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

    .line 53
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 54
    if-nez p2, :cond_0

    .line 55
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030188

    invoke-virtual {v0, v1, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 58
    new-instance v0, Lcom/yelp/android/ui/activities/profile/f$a;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/ui/activities/profile/f$a;-><init>(Lcom/yelp/android/ui/activities/profile/f;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/f;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 61
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/f;->a:Lcom/yelp/android/serializable/User;

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/f;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpCheckIn;->a(Lcom/yelp/android/serializable/User;)V

    .line 64
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/profile/f$a;

    .line 65
    iget-object v3, v1, Lcom/yelp/android/ui/activities/profile/f$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v3, v1, Lcom/yelp/android/ui/activities/profile/f$a;->d:Landroid/widget/TextView;

    const v4, 0x7f080006

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->w()I

    move-result v5

    new-array v6, v8, [Ljava/lang/String;

    invoke-static {v2, v4, v5, v6}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v3, v1, Lcom/yelp/android/ui/activities/profile/f$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->l()Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/RankTitle$Rank;->getRankIcon()I

    move-result v4

    invoke-virtual {v3, v4, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 71
    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/YelpCheckIn;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    .line 73
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x12

    invoke-virtual {v3, v4, v8, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 78
    iget-object v4, v1, Lcom/yelp/android/ui/activities/profile/f$a;->g:Landroid/widget/TextView;

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 80
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v3

    .line 81
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080025

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 84
    iget-object v4, v1, Lcom/yelp/android/ui/activities/profile/f$a;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v3, v1, Lcom/yelp/android/ui/activities/profile/f$a;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->P()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/TextView;D)V

    .line 87
    iget-object v3, v1, Lcom/yelp/android/ui/activities/profile/f$a;->i:Landroid/widget/TextView;

    sget-object v4, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->e()Ljava/util/Date;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v2, v1, Lcom/yelp/android/ui/activities/profile/f$a;->j:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->au()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0200bb

    invoke-virtual {v2, v3, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 90
    iget-object v2, v1, Lcom/yelp/android/ui/activities/profile/f$a;->a:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/c;)V

    .line 91
    iget-object v2, v1, Lcom/yelp/android/ui/activities/profile/f$a;->a:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->n()Lcom/yelp/android/serializable/Feedback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setChecked(Z)V

    .line 92
    iget-object v2, v1, Lcom/yelp/android/ui/activities/profile/f$a;->a:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/f;->b:Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/c;)V

    .line 93
    iget-object v2, v1, Lcom/yelp/android/ui/activities/profile/f$a;->a:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setTag(Ljava/lang/Object;)V

    .line 94
    iget-object v2, v1, Lcom/yelp/android/ui/activities/profile/f$a;->b:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/f;->c:Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v2, v1, Lcom/yelp/android/ui/activities/profile/f$a;->b:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setTag(Ljava/lang/Object;)V

    .line 96
    iget-object v2, v1, Lcom/yelp/android/ui/activities/profile/f$a;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/f;->d:Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v2, v1, Lcom/yelp/android/ui/activities/profile/f$a;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->A()Lcom/yelp/android/serializable/Comment;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 99
    iget-object v2, v1, Lcom/yelp/android/ui/activities/profile/f$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->A()Lcom/yelp/android/serializable/Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Comment;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, v1, Lcom/yelp/android/ui/activities/profile/f$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, v1, Lcom/yelp/android/ui/activities/profile/f$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v0, v1, Lcom/yelp/android/ui/activities/profile/f$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/profile/f$a;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 110
    :goto_0
    return-object p2

    .line 105
    :cond_2
    iget-object v0, v1, Lcom/yelp/android/ui/activities/profile/f$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v0, v1, Lcom/yelp/android/ui/activities/profile/f$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, v1, Lcom/yelp/android/ui/activities/profile/f$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/profile/f$a;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method
