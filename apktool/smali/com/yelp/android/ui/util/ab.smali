.class public Lcom/yelp/android/ui/util/ab;
.super Ljava/lang/Object;
.source "MenuUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/util/ab$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/YelpBusinessReview;)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 36
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessReview;->O()Ljava/lang/String;

    move-result-object v0

    .line 37
    const v1, 0x7f02008e

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    move-result-object v1

    .line 38
    const v2, 0x7f070220

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
    invoke-virtual {p2}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    .line 55
    const v1, 0x7f07021d

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 56
    const/4 v2, 0x0

    invoke-static {p0, p2, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 59
    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/util/ab;->c(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 60
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/CheckIn;)V
    .locals 2

    .prologue
    .line 154
    instance-of v0, p2, Lcom/yelp/android/serializable/YelpCheckIn;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 155
    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/yelp/android/serializable/CheckIn;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/yelp/android/ui/util/ab;->a(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    invoke-interface {p2}, Lcom/yelp/android/serializable/CheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/util/ab;->b(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 159
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/Compliment;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 72
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->j()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->REVIEW:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    if-ne v0, v1, :cond_0

    .line 73
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->p()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/ui/util/ab;->a(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/yelp/android/ui/util/ab;->b(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->j()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->BIZ_PHOTO:Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    if-ne v0, v1, :cond_1

    .line 85
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/yelp/android/ui/util/ab;->b(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/User;)V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->ad()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/yelp/android/ui/util/ab;->a(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 2

    .prologue
    .line 47
    const v0, 0x7f07021d

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 48
    invoke-static {p0, p2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 49
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/util/ab;->c(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 50
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 92
    const v0, 0x7f07021f

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    .line 94
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 95
    invoke-static {p0, p2}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 96
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 97
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 111
    if-eqz p4, :cond_0

    const v0, 0x7f070221

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    .line 118
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 119
    invoke-static {p0, p2, p5, p6}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 121
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 122
    return-void

    .line 111
    :cond_0
    const v0, 0x7f070220

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 4

    .prologue
    .line 140
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f07021d

    .line 144
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    .line 147
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 148
    invoke-static {p0, p2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 149
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 150
    return-void

    .line 140
    :cond_0
    const v0, 0x7f07021e

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 127
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f07021d

    .line 131
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    .line 133
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 134
    invoke-static {p0, p2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 135
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 136
    return-void

    .line 127
    :cond_0
    const v0, 0x7f07021e

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    const v0, 0x7f0700ef

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 164
    invoke-static {p0, p2}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 165
    const v0, 0x7f07011b

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 166
    invoke-static {p0, p2}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 167
    const v0, 0x7f070664

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 168
    sget-object v3, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->BizListLongPress:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {p0, p2, v3}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 171
    const v0, 0x7f070307

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 172
    new-instance v0, Lcom/yelp/android/ui/util/ab$a;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/ui/util/ab$a;-><init>(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 173
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 174
    const v0, 0x7f07018d

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 175
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->ao()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yelp/android/util/k;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 176
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->ao()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 177
    return-void

    :cond_0
    move v0, v2

    .line 173
    goto :goto_0

    :cond_1
    move v1, v2

    .line 176
    goto :goto_1
.end method
