.class public Lcom/yelp/android/ui/util/bf;
.super Ljava/lang/Object;
.source "MenuUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/YelpBusinessReview;)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 37
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 38
    const v1, 0x7f020078

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    move-result-object v1

    .line 39
    const v2, 0x7f0701d3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p0, v2, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    .line 41
    invoke-interface {v1, v0}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 42
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 43
    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/BusinessSearchResult;)V
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p2}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    .line 55
    const v1, 0x7f0701d0

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 56
    const/4 v2, 0x0

    invoke-static {p0, p2, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 58
    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/util/bf;->c(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 59
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/CheckIn;)V
    .locals 2

    .prologue
    .line 135
    instance-of v0, p2, Lcom/yelp/android/serializable/YelpCheckIn;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 136
    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/yelp/android/serializable/CheckIn;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/yelp/android/ui/util/bf;->a(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    invoke-interface {p2}, Lcom/yelp/android/serializable/CheckIn;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/util/bf;->b(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 140
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/Compliment;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 67
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->getItem()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->REVIEW:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    if-ne v0, v1, :cond_0

    .line 68
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->getComplimentableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->getBusinessId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->getBusinessName()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/ui/util/bf;->a(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->getBusinessName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/yelp/android/ui/util/bf;->b(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->getItem()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->BIZ_PHOTO:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    if-ne v0, v1, :cond_1

    .line 75
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->getBusinessName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/yelp/android/ui/util/bf;->b(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/User;)V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/yelp/android/ui/util/bf;->a(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 2

    .prologue
    .line 47
    const v0, 0x7f0701d0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 48
    invoke-static {p0, p2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 49
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/util/bf;->c(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 50
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 83
    const v0, 0x7f0701d2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    .line 85
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 86
    invoke-static {p0, p2}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 87
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 88
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 97
    if-eqz p4, :cond_0

    const v0, 0x7f0701d4

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    .line 101
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 102
    invoke-static {p0, p2, p5, p6}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 104
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 106
    return-void

    .line 97
    :cond_0
    const v0, 0x7f0701d3

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 4

    .prologue
    .line 122
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0701d0

    .line 125
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    .line 128
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 129
    invoke-static {p0, p2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 130
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 131
    return-void

    .line 122
    :cond_0
    const v0, 0x7f0701d1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 111
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0701d0

    .line 113
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    .line 115
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 116
    invoke-static {p0, p2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 117
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 118
    return-void

    .line 111
    :cond_0
    const v0, 0x7f0701d1

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    const v0, 0x7f070075

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 145
    invoke-static {p0, p2}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 146
    const v0, 0x7f07009d

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 147
    invoke-static {p0, p2}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 148
    const v0, 0x7f070683

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 149
    sget-object v3, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizListLongPress:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {p0, p2, v3}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 151
    const v0, 0x7f0702bb

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 152
    new-instance v0, Lcom/yelp/android/ui/util/bg;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/ui/util/bg;-><init>(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 153
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getAddressForDrivingDirections()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 154
    const v0, 0x7f07010f

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 155
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getDialablePhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yelp/android/util/r;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 156
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getDialablePhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 157
    return-void

    :cond_0
    move v0, v2

    .line 153
    goto :goto_0

    :cond_1
    move v1, v2

    .line 156
    goto :goto_1
.end method
