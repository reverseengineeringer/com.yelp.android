.class public Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityBusinessPage.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
.implements Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$a;
.implements Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$b;
.implements Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$c;
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpActivity;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;>;",
        "Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$a;",
        "Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$b;",
        "Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$c;",
        "Lcom/yelp/android/ui/panels/PanelError$a;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/serializable/BusinessSearchResult;

.field private b:Lcom/yelp/android/serializable/YelpBusiness;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:J

.field private g:I

.field private h:Landroid/view/animation/Animation;

.field private i:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

.field private j:Lcom/yelp/android/appdata/webrequests/af;

.field private k:Landroid/view/ViewGroup;

.field private l:Lcom/yelp/android/ui/activities/reservations/a;

.field private m:Ljava/lang/CharSequence;

.field private n:Ljava/lang/CharSequence;

.field private o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

.field private p:Lcom/yelp/android/appdata/webrequests/SearchRequest;

.field private q:Z

.field private r:Lcom/yelp/android/cn/c;

.field private s:Lcom/yelp/android/cn/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p1}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    .line 233
    const-string/jumbo v1, "extra.business_search_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 234
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 172
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 173
    const-string/jumbo v1, "require_business_update"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 200
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.posted_media"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 188
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "notification_after_message_the_business"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/BusinessContributionType;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 246
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 247
    const-string/jumbo v1, "extra.contributing"

    invoke-virtual {p2}, Lcom/yelp/android/appdata/BusinessContributionType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 220
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 221
    if-eqz p2, :cond_0

    .line 222
    const-string/jumbo v1, "extra.search_request"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 224
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 239
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 240
    const-string/jumbo v1, "top_highlighted_review_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 209
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 210
    const-string/jumbo v1, "extra.show_logged_out_user_reservation_notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 259
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 260
    const-string/jumbo v1, "extra.write_review_uri"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 261
    const-string/jumbo v1, "extra.write_review_rating"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    const-string/jumbo v1, "extra.write_review_source"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 263
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)Lcom/yelp/android/ui/panels/BizAttributesFragment;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/YelpCheckIn;)V
    .locals 11

    .prologue
    const v10, 0x7f0f0270

    const v9, 0x7f070353

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 886
    invoke-static {p1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/serializable/YelpCheckIn;)Lcom/yelp/android/ui/panels/BizAttributesFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    .line 887
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0f01d7

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 891
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$7;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$7;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/ui/panels/BizAttributesFragment$a;)V

    .line 899
    const v0, 0x7f0f010e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0111

    const v2, 0x7f0f0110

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    .line 906
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->K()I

    move-result v0

    if-nez v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 911
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->l()Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v2

    .line 913
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->w()I

    move-result v3

    .line 914
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->j()Z

    move-result v4

    .line 916
    const v0, 0x7f080004

    new-array v1, v7, [Ljava/lang/String;

    invoke-static {p0, v0, v3, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 919
    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 920
    sget-object v5, Lcom/yelp/android/serializable/RankTitle$Rank;->REGULAR:Lcom/yelp/android/serializable/RankTitle$Rank;

    if-ne v2, v5, :cond_2

    .line 921
    const v0, 0x7f0704cb

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->v()I

    move-result v6

    invoke-static {p0, v6}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p0, v0, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    .line 930
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/yelp/android/serializable/RankTitle$Rank;->getRankIconBordered()I

    move-result v5

    .line 931
    if-gt v3, v8, :cond_5

    .line 932
    if-eqz v4, :cond_4

    const v0, 0x7f0705d8

    :goto_1
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 937
    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    .line 941
    :goto_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02033c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 942
    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 943
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    .line 944
    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setIcon(I)V

    .line 945
    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 946
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 949
    const v0, 0x7f040017

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 950
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 951
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    const v2, 0x7f0f01a9

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 952
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    const v1, 0x7f0f026f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f040022

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 955
    return-void

    .line 926
    :cond_2
    sget-object v5, Lcom/yelp/android/serializable/RankTitle$Rank;->TOP_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    if-ne v2, v5, :cond_1

    .line 927
    if-eqz v4, :cond_3

    const v0, 0x7f07063d

    :goto_3
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v0, 0x7f07063c

    goto :goto_3

    .line 932
    :cond_4
    const v0, 0x7f0705d7

    goto :goto_1

    :cond_5
    move-object v2, v1

    move-object v1, v0

    goto :goto_2
.end method

.method private a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x7d0

    .line 668
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->f:J

    sub-long/2addr v0, v2

    .line 669
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    const-wide/16 v0, 0x0

    .line 673
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$4;

    invoke-direct {v3, p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$4;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 687
    return-void

    .line 669
    :cond_0
    sub-long v0, v4, v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aZ()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->SHORT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    if-ne v0, v1, :cond_0

    .line 179
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 181
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 832
    const v0, 0x7f0f0110

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 883
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 825
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->m:Ljava/lang/CharSequence;

    .line 826
    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->n:Ljava/lang/CharSequence;

    .line 827
    const/16 v0, 0x130

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->showDialog(I)V

    .line 828
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 703
    .line 706
    const-string/jumbo v0, "extra.search_request"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->p:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 707
    invoke-static {p1}, Lcom/yelp/android/appdata/BusinessContributionType;->getType(Landroid/content/Intent;)Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v0

    .line 708
    sget-object v2, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v0, v2, :cond_7

    .line 709
    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/BusinessContributionType;->getContribution(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 710
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    .line 711
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Lcom/yelp/android/serializable/YelpCheckIn;)V

    move-object v4, v0

    .line 718
    :goto_0
    const-string/jumbo v0, "extra.posted_media"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->g:I

    .line 719
    if-eqz v2, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->e:Z

    if-eqz v0, :cond_4

    .line 720
    :cond_0
    if-eqz v2, :cond_8

    .line 721
    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->c:Ljava/lang/String;

    .line 725
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 726
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v3, "business_id"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->c:Ljava/lang/String;

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->j:Lcom/yelp/android/appdata/webrequests/af;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->j:Lcom/yelp/android/appdata/webrequests/af;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/af;->u()Z

    move-result v0

    if-nez v0, :cond_4

    .line 730
    :cond_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/af;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->c:Ljava/lang/String;

    invoke-direct {v0, v3, p0}, Lcom/yelp/android/appdata/webrequests/af;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->j:Lcom/yelp/android/appdata/webrequests/af;

    .line 731
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->j:Lcom/yelp/android/appdata/webrequests/af;

    new-array v3, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/webrequests/af;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->f:J

    .line 735
    if-eqz v2, :cond_3

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->e:Z

    if-nez v0, :cond_4

    .line 736
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->j:Lcom/yelp/android/appdata/webrequests/af;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 741
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->d:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 742
    const-string/jumbo v0, "top_highlighted_review_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->d:Ljava/lang/String;

    .line 746
    :cond_5
    if-nez v2, :cond_9

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->c:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 747
    const-string/jumbo v0, "Business is null on startup. Bailing."

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->finish()V

    .line 786
    :cond_6
    :goto_2
    return-void

    .line 712
    :cond_7
    const-string/jumbo v0, "extra.business"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 713
    const-string/jumbo v0, "extra.business"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 714
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "require_business_update"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->e:Z

    move-object v4, v1

    move-object v2, v0

    goto/16 :goto_0

    .line 723
    :cond_8
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->c:Ljava/lang/String;

    goto/16 :goto_1

    .line 752
    :cond_9
    const-string/jumbo v0, "extra.business_search_result"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 754
    if-eqz v2, :cond_a

    .line 755
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "notification_after_message_the_business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 757
    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 758
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->p:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/serializable/YelpCheckIn;Landroid/content/Intent;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 766
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->disableLoading()V

    .line 772
    :goto_3
    const-string/jumbo v0, "extra.write_review_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 773
    if-eqz v0, :cond_6

    .line 774
    const-string/jumbo v1, "extra.write_review_rating"

    invoke-virtual {p1, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 775
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->c:Ljava/lang/String;

    const-string/jumbo v1, "extra.write_review_source"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {p0, v3, v2, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Ljava/lang/String;ILcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v1

    .line 781
    const-string/jumbo v2, "yelp:external_request"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 782
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 783
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 784
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 769
    :cond_a
    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->r:Lcom/yelp/android/cn/c;

    goto :goto_3

    :cond_b
    move-object v4, v1

    move-object v2, v1

    goto/16 :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->s:Lcom/yelp/android/cn/b;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->s:Lcom/yelp/android/cn/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/cn/b;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 962
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v6, 0x7f0f010f

    const/4 v5, 0x0

    .line 591
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 592
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 593
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 597
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->e:Z

    if-nez v1, :cond_3

    .line 598
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->p:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/serializable/BusinessSearchResult;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    move-result-object v1

    .line 609
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->isRemoving()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 612
    :cond_1
    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 624
    :goto_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/a;Landroid/content/Context;)Z

    .line 629
    :goto_1
    iput-boolean v5, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->e:Z

    .line 630
    return-void

    .line 614
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 618
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->disableLoading()V

    goto :goto_0

    .line 621
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/serializable/YelpBusiness;)V

    goto :goto_0

    .line 626
    :cond_4
    const-string/jumbo v0, "BizID request returned no results!"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->finish()V

    goto :goto_1
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 3

    .prologue
    .line 690
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 691
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 692
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 416
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->q:Z

    .line 417
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->e:Z

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->r:Lcom/yelp/android/cn/c;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->r:Lcom/yelp/android/cn/c;

    invoke-virtual {v0}, Lcom/yelp/android/cn/c;->b()J

    .line 649
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->r:Lcom/yelp/android/cn/c;

    invoke-virtual {v0}, Lcom/yelp/android/cn/c;->f()V

    .line 651
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->r:Lcom/yelp/android/cn/c;

    .line 654
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->g:I

    if-lez v0, :cond_1

    .line 655
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const v1, 0x7f0f010f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 659
    iget v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->g:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(I)V

    .line 661
    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 4

    .prologue
    .line 789
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a()V

    .line 790
    if-eqz p1, :cond_0

    .line 791
    const v0, 0x7f040016

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 792
    new-instance v1, Lcom/yelp/android/ui/util/InverseAccelerateInterpolator;

    invoke-direct {v1}, Lcom/yelp/android/ui/util/InverseAccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 793
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    const v2, 0x7f0f01a9

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 794
    sget v1, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 795
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/b;->a(Landroid/view/View;)V

    .line 796
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->h:Landroid/view/animation/Animation;

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$5;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$5;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 812
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    const v1, 0x7f0f026f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 817
    :goto_0
    return-void

    .line 814
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 815
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->s:Lcom/yelp/android/cn/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->s:Lcom/yelp/android/cn/b;

    invoke-virtual {v0}, Lcom/yelp/android/cn/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->s:Lcom/yelp/android/cn/b;

    invoke-virtual {v0}, Lcom/yelp/android/cn/b;->b()J

    .line 968
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->s:Lcom/yelp/android/cn/b;

    invoke-virtual {v0}, Lcom/yelp/android/cn/b;->f()V

    .line 971
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->s:Lcom/yelp/android/cn/b;

    .line 973
    :cond_0
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 3

    .prologue
    .line 537
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_0

    .line 539
    const/4 v0, 0x0

    .line 547
    :goto_0
    return-object v0

    .line 541
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/analytics/i;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaEventIri;->Business:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaEventIri;)V

    .line 542
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/analytics/i;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->BusinessCategory:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 547
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Business:Lcom/yelp/android/analytics/iris/ViewIri;

    goto :goto_0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 4
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
    .line 561
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_0

    .line 562
    const/4 v0, 0x0

    .line 581
    :goto_0
    return-object v0

    .line 564
    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 565
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 566
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->X()Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->X()Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    const-string/jumbo v0, "deal_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->X()Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpDeal;->x()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    :cond_1
    const-string/jumbo v0, "message_the_business"

    sget-object v2, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MESSAGE_THE_BUSINESS:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string/jumbo v2, "share_toolbar_experiment"

    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->f:Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aH()Lcom/yelp/android/serializable/PlatformAction;

    move-result-object v0

    .line 575
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformAction;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 577
    const-string/jumbo v2, "supported_vertical_types"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformAction;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v0, v1

    .line 581
    goto :goto_0
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 421
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 430
    int-to-short v1, p1

    .line 432
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const v2, 0x7f0f010f

    invoke-virtual {v0, v2}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 435
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 436
    sparse-switch v1, :sswitch_data_0

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 438
    :sswitch_0
    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-virtual {v1, p3}, Lcom/yelp/android/appdata/BusinessContributionType;->getContribution(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 439
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 440
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Lcom/yelp/android/serializable/YelpCheckIn;)V

    .line 441
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    goto :goto_0

    .line 445
    :sswitch_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 446
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Z)V

    .line 448
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->i()V

    goto :goto_0

    .line 451
    :sswitch_2
    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 454
    :cond_2
    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    const/16 v2, 0x411

    if-ne v1, v2, :cond_3

    .line 456
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->h()V

    goto :goto_0

    .line 457
    :cond_3
    const/16 v0, 0x41a

    if-ne v1, v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->finish()V

    goto :goto_0

    .line 436
    :sswitch_data_0
    .sparse-switch
        0x3f4 -> :sswitch_0
        0x414 -> :sswitch_2
        0x428 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Z)V

    .line 413
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->q:Z

    if-eqz v0, :cond_1

    .line 407
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    const-string/jumbo v2, "com.yelp.android.bookmarks.remove"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 411
    :cond_1
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->D()Lcom/yelp/android/cn/d;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/yelp/android/cn/d;->b()Lcom/yelp/android/cn/c;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->r:Lcom/yelp/android/cn/c;

    .line 275
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->r:Lcom/yelp/android/cn/c;

    invoke-virtual {v1}, Lcom/yelp/android/cn/c;->a()J

    .line 276
    invoke-virtual {v0}, Lcom/yelp/android/cn/d;->c()Lcom/yelp/android/cn/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->s:Lcom/yelp/android/cn/b;

    .line 277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->s:Lcom/yelp/android/cn/b;

    invoke-virtual {v0}, Lcom/yelp/android/cn/b;->a()J

    .line 279
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 280
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->setContentView(I)V

    .line 282
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/a;

    const/16 v1, 0x131

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/reservations/a;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->l:Lcom/yelp/android/ui/activities/reservations/a;

    .line 283
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->f()V

    .line 285
    if-eqz p1, :cond_3

    .line 287
    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->r:Lcom/yelp/android/cn/c;

    .line 288
    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->s:Lcom/yelp/android/cn/b;

    .line 290
    const-string/jumbo v0, "extra.business"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 291
    const-string/jumbo v0, "require_business_update"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->e:Z

    .line 293
    const-string/jumbo v0, "top_highlighted_review_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->d:Ljava/lang/String;

    .line 294
    const-string/jumbo v0, "dialog_information_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->m:Ljava/lang/CharSequence;

    .line 295
    const-string/jumbo v0, "dialog_information_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->n:Ljava/lang/CharSequence;

    .line 297
    const-string/jumbo v0, "search_request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->p:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 298
    const-string/jumbo v0, "extra.business_search_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 300
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const v1, 0x7f0f010f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 305
    if-nez v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->p:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/serializable/BusinessSearchResult;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 341
    :goto_0
    const v0, 0x7f040028

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->h:Landroid/view/animation/Animation;

    .line 342
    return-void

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 324
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->p:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/serializable/BusinessSearchResult;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    goto :goto_0

    .line 333
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 334
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->disableLoading()V

    goto :goto_0

    .line 338
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const v1, 0x7f0f010f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 471
    packed-switch p1, :pswitch_data_0

    .line 514
    :pswitch_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 473
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->l:Lcom/yelp/android/ui/activities/reservations/a;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/reservations/a;->a(Landroid/app/Activity;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 475
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070118

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07048c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070101

    new-instance v3, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$1;

    invoke-direct {v3, p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$1;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070266

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 492
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$2;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 502
    :pswitch_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->m:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->n:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/util/ar;->b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 504
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$3;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x130
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->e:Z

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const v1, 0x7f0f010f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 639
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 643
    :goto_0
    return-void

    .line 641
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 397
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->setIntent(Landroid/content/Intent;)V

    .line 398
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Intent;)V

    .line 399
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 386
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 387
    const-string/jumbo v0, "business"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->j:Lcom/yelp/android/appdata/webrequests/af;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 391
    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->r:Lcom/yelp/android/cn/c;

    .line 392
    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->s:Lcom/yelp/android/cn/b;

    .line 393
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    .prologue
    .line 519
    packed-switch p1, :pswitch_data_0

    .line 523
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 524
    return-void

    .line 521
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->l:Lcom/yelp/android/ui/activities/reservations/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Lcom/yelp/android/ui/activities/reservations/a;->a(Landroid/app/Activity;Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 519
    :pswitch_data_0
    .packed-switch 0x131
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 346
    const-string/jumbo v0, "business"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->j:Lcom/yelp/android/appdata/webrequests/af;

    invoke-virtual {p0, v0, v1, p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/af;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->j:Lcom/yelp/android/appdata/webrequests/af;

    .line 347
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->j:Lcom/yelp/android/appdata/webrequests/af;

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Landroid/os/AsyncTask$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->j:Lcom/yelp/android/appdata/webrequests/af;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 350
    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 351
    return-void
.end method

.method protected onResumeFragments()V
    .locals 3

    .prologue
    .line 355
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResumeFragments()V

    .line 356
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0f010f

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 362
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->disableLoading()V

    .line 364
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 368
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 369
    const-string/jumbo v0, "extra.business"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 370
    const-string/jumbo v1, "dialog_information_title"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->m:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 372
    const-string/jumbo v1, "dialog_information_message"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->n:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 375
    const-string/jumbo v0, "require_business_update"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 376
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->p:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-eqz v0, :cond_0

    .line 377
    const-string/jumbo v0, "search_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->p:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    if-eqz v0, :cond_1

    .line 380
    const-string/jumbo v0, "extra.business_search_result"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 382
    :cond_1
    return-void

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->m:Ljava/lang/CharSequence;

    goto :goto_0

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->n:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 84
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method

.method public q_()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->j:Lcom/yelp/android/appdata/webrequests/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->j:Lcom/yelp/android/appdata/webrequests/af;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/af;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 529
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/af;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->c:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/yelp/android/appdata/webrequests/af;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->j:Lcom/yelp/android/appdata/webrequests/af;

    .line 530
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->j:Lcom/yelp/android/appdata/webrequests/af;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/af;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 531
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->j:Lcom/yelp/android/appdata/webrequests/af;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 533
    :cond_1
    return-void
.end method
