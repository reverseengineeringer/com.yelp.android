.class public Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityBusinessPage.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;
.implements Lcom/yelp/android/ui/activities/businesspage/bv;
.implements Lcom/yelp/android/ui/activities/businesspage/bw;
.implements Lcom/yelp/android/ui/panels/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpActivity;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;>;",
        "Lcom/yelp/android/ui/activities/businesspage/bv;",
        "Lcom/yelp/android/ui/activities/businesspage/bw;",
        "Lcom/yelp/android/ui/panels/aa;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/serializable/BusinessSearchResult;

.field private b:Lcom/yelp/android/serializable/YelpBusiness;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:J

.field private g:Landroid/view/animation/Animation;

.field private h:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

.field private i:Lcom/yelp/android/appdata/webrequests/ac;

.field private j:Z

.field private k:Landroid/view/ViewGroup;

.field private l:Lcom/yelp/android/ui/activities/reservations/h;

.field private m:Ljava/lang/CharSequence;

.field private n:Ljava/lang/CharSequence;

.field private o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

.field private p:Lcom/yelp/android/serializable/YelpDeal;

.field private q:Lcom/yelp/android/appdata/webrequests/SearchRequest;

.field private r:Z

.field private s:Lcom/yelp/android/be/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->j:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/BusinessSearchResult;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    .line 214
    const-string/jumbo v1, "extra.open_reservation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    .line 200
    if-eqz p1, :cond_0

    .line 201
    const-string/jumbo v1, "extra.business_search_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 203
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 169
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 170
    const-string/jumbo v1, "require_business_update"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/BusinessContributionType;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 227
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 228
    const-string/jumbo v1, "extra.contributing"

    invoke-virtual {p2}, Lcom/yelp/android/appdata/BusinessContributionType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 189
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 190
    if-eqz p2, :cond_0

    .line 191
    const-string/jumbo v1, "extra.search_request"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 193
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 220
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 221
    const-string/jumbo v1, "top_highlighted_review_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)Lcom/yelp/android/ui/panels/BizAttributesFragment;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/YelpCheckIn;)V
    .locals 11

    .prologue
    const v10, 0x7f0c0219

    const v9, 0x7f07030c

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 863
    invoke-static {p1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/serializable/YelpCheckIn;)Lcom/yelp/android/ui/panels/BizAttributesFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    .line 864
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c01a6

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 866
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/l;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/l;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/ui/panels/o;)V

    .line 873
    const v0, 0x7f0c00c2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c00c5

    const v2, 0x7f0c00c4

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/util/cp;->a(Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    .line 876
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getRegularCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 881
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->getLocationRankTitle()Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v2

    .line 883
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->getTotalCount()I

    move-result v3

    .line 884
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->n()Z

    move-result v4

    .line 886
    const v0, 0x7f0e0004

    new-array v1, v7, [Ljava/lang/String;

    invoke-static {p0, v0, v3, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 889
    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 890
    sget-object v5, Lcom/yelp/android/serializable/RankTitle$Rank;->REGULAR:Lcom/yelp/android/serializable/RankTitle$Rank;

    if-ne v2, v5, :cond_2

    .line 891
    const v0, 0x7f0704b1

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->getRegularRank()I

    move-result v6

    invoke-static {p0, v6}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p0, v0, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    .line 897
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/yelp/android/serializable/RankTitle$Rank;->getRankIconBordered()I

    move-result v5

    .line 898
    if-gt v3, v8, :cond_5

    .line 899
    if-eqz v4, :cond_4

    const v0, 0x7f0705ef

    :goto_1
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 902
    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    .line 906
    :goto_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02026e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 907
    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 908
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    .line 909
    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setIcon(I)V

    .line 910
    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 911
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 914
    const v0, 0x7f040011

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 915
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 916
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    const v2, 0x7f0c0176

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 917
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    const v1, 0x7f0c0218

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f04001c

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 919
    return-void

    .line 893
    :cond_2
    sget-object v5, Lcom/yelp/android/serializable/RankTitle$Rank;->TOP_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    if-ne v2, v5, :cond_1

    .line 894
    if-eqz v4, :cond_3

    const v0, 0x7f070661

    :goto_3
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v0, 0x7f070660

    goto :goto_3

    .line 899
    :cond_4
    const v0, 0x7f0705ee

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

    new-instance v3, Lcom/yelp/android/ui/activities/businesspage/f;

    invoke-direct {v3, p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/f;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 684
    return-void

    .line 669
    :cond_0
    sub-long v0, v4, v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getFormatMode()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->SHORT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    if-ne v0, v1, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    .line 178
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 818
    const v0, 0x7f0c00c4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/h;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/h;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 860
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 811
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->m:Ljava/lang/CharSequence;

    .line 812
    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->n:Ljava/lang/CharSequence;

    .line 813
    const/16 v0, 0x130

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->showDialog(I)V

    .line 814
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 700
    .line 703
    const-string/jumbo v0, "extra.search_request"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->q:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 705
    invoke-static {p1}, Lcom/yelp/android/appdata/BusinessContributionType;->getType(Landroid/content/Intent;)Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v0

    .line 706
    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v0, v1, :cond_7

    .line 707
    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/BusinessContributionType;->getContribution(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 708
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    .line 709
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Lcom/yelp/android/serializable/YelpCheckIn;)V

    move-object v3, v1

    move-object v1, v0

    .line 716
    :goto_0
    if-eqz v3, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->e:Z

    if-eqz v0, :cond_4

    .line 717
    :cond_0
    if-eqz v3, :cond_8

    .line 718
    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->c:Ljava/lang/String;

    .line 722
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 723
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v4, "business_id"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->c:Ljava/lang/String;

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/appdata/webrequests/ac;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/appdata/webrequests/ac;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ac;->isFetching()Z

    move-result v0

    if-nez v0, :cond_4

    .line 727
    :cond_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ac;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->c:Ljava/lang/String;

    invoke-direct {v0, v4, p0}, Lcom/yelp/android/appdata/webrequests/ac;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/appdata/webrequests/ac;

    .line 728
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/appdata/webrequests/ac;

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v4}, Lcom/yelp/android/appdata/webrequests/ac;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 729
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->f:J

    .line 732
    if-eqz v3, :cond_3

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->e:Z

    if-nez v0, :cond_4

    .line 733
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/appdata/webrequests/ac;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 738
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->d:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 739
    const-string/jumbo v0, "top_highlighted_review_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->d:Ljava/lang/String;

    .line 743
    :cond_5
    if-nez v3, :cond_9

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->c:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 744
    const-string/jumbo v0, "Business is null on startup. Bailing."

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 745
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->finish()V

    .line 775
    :cond_6
    :goto_2
    return-void

    .line 710
    :cond_7
    const-string/jumbo v0, "extra.business"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 711
    const-string/jumbo v0, "extra.business"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 712
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "require_business_update"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->e:Z

    move-object v1, v2

    move-object v3, v0

    goto/16 :goto_0

    .line 720
    :cond_8
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->c:Ljava/lang/String;

    goto/16 :goto_1

    .line 749
    :cond_9
    const-string/jumbo v0, "extra.business_search_result"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 751
    if-eqz v3, :cond_b

    .line 752
    iput-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 753
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->q:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-static {v0, v2, v3, v4, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/serializable/BusinessSearchResult;Lcom/yelp/android/serializable/YelpCheckIn;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->h:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 755
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->disableLoading()V

    .line 761
    :goto_3
    const-string/jumbo v0, "extra.open_reservation"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 762
    if-eqz v0, :cond_6

    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->j:Z

    .line 764
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 765
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBizDimension()Ljava/lang/String;

    move-result-object v1

    .line 766
    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 767
    const-string/jumbo v2, "biz_dimension"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    :cond_a
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchReservationOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 771
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBizDimension()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "source_search_page"

    invoke-static {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 773
    const/16 v1, 0x414

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 758
    :cond_b
    iput-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->s:Lcom/yelp/android/be/b;

    goto :goto_3

    :cond_c
    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_0
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
    const v6, 0x7f0c00c3

    const/4 v5, 0x0

    .line 610
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 611
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 612
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 614
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->e:Z

    if-nez v1, :cond_3

    .line 615
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->q:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/serializable/BusinessSearchResult;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    move-result-object v1

    .line 622
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

    .line 624
    :cond_1
    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->h:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 634
    :goto_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/a;Landroid/content/Context;)Z

    .line 639
    :goto_1
    iput-boolean v5, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->e:Z

    .line 640
    return-void

    .line 626
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 628
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->disableLoading()V

    goto :goto_0

    .line 631
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/serializable/YelpBusiness;)V

    goto :goto_0

    .line 636
    :cond_4
    const-string/jumbo v0, "BizID request returned no results!"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->finish()V

    goto :goto_1
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 3

    .prologue
    .line 687
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 688
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 689
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 370
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->r:Z

    .line 371
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->e:Z

    return v0
.end method

.method public b(Z)V
    .locals 4

    .prologue
    .line 778
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a()V

    .line 779
    if-eqz p1, :cond_0

    .line 780
    const v0, 0x7f040010

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 781
    new-instance v1, Lcom/yelp/android/ui/util/InverseAccelerateInterpolator;

    invoke-direct {v1}, Lcom/yelp/android/ui/util/InverseAccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 782
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    const v2, 0x7f0c0176

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 783
    sget v1, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 784
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/h;->a(Landroid/view/View;)V

    .line 785
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->g:Landroid/view/animation/Animation;

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/g;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/g;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 798
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    const v1, 0x7f0c0218

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 803
    :goto_0
    return-void

    .line 800
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->o:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 801
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->s:Lcom/yelp/android/be/b;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->s:Lcom/yelp/android/be/b;

    invoke-virtual {v0}, Lcom/yelp/android/be/b;->b()J

    .line 657
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->s:Lcom/yelp/android/be/b;

    invoke-virtual {v0}, Lcom/yelp/android/be/b;->d()V

    .line 659
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->s:Lcom/yelp/android/be/b;

    .line 661
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 806
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

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_0

    .line 571
    const/4 v0, 0x0

    .line 576
    :goto_0
    return-object v0

    .line 573
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;->Business:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    invoke-static {v0}, Lcom/yelp/android/analytics/j;->a(Lcom/yelp/android/analytics/iris/KahunaEventIri;)V

    .line 574
    sget-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->BusinessCategory:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getCategoryForBusinessSearchResult()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/analytics/j;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 576
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Business:Lcom/yelp/android/analytics/iris/ViewIri;

    goto :goto_0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 4
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
    .line 590
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_0

    .line 591
    const/4 v0, 0x0

    .line 600
    :goto_0
    return-object v0

    .line 593
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 594
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 595
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getDeal()Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getDeal()Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 596
    const-string/jumbo v1, "deal_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getDeal()Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpDeal;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :cond_1
    const-string/jumbo v1, "message_the_business"

    sget-object v2, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MESSAGE_THE_BUSINESS:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getYelpRequestId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public m_()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/appdata/webrequests/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/appdata/webrequests/ac;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ac;->isFetching()Z

    move-result v0

    if-nez v0, :cond_1

    .line 561
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ac;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->c:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/yelp/android/appdata/webrequests/ac;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/appdata/webrequests/ac;

    .line 562
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/appdata/webrequests/ac;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ac;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 563
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/appdata/webrequests/ac;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 565
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 375
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 384
    int-to-short v1, p1

    .line 386
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f0c00c3

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 388
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 389
    sparse-switch v1, :sswitch_data_0

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 391
    :sswitch_0
    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-virtual {v1, p3}, Lcom/yelp/android/appdata/BusinessContributionType;->getContribution(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 392
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 393
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Lcom/yelp/android/serializable/YelpCheckIn;)V

    .line 394
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    goto :goto_0

    .line 399
    :sswitch_1
    if-eqz p3, :cond_1

    const-string/jumbo v1, "yelp:new_business"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    const-string/jumbo v1, "yelp:new_business"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 404
    :cond_1
    if-eqz p3, :cond_0

    const-string/jumbo v1, "is_video_extra"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->k()V

    goto :goto_0

    .line 410
    :sswitch_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->k:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 411
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Z)V

    .line 413
    :cond_2
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->h_()V

    goto :goto_0

    .line 416
    :sswitch_3
    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 419
    :sswitch_4
    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 422
    :cond_3
    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    const/16 v2, 0x40d

    if-ne v1, v2, :cond_4

    .line 424
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->i()V

    goto :goto_0

    .line 425
    :cond_4
    const/16 v0, 0x414

    if-ne v1, v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->finish()V

    goto :goto_0

    .line 389
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ee -> :sswitch_0
        0x407 -> :sswitch_4
        0x40d -> :sswitch_1
        0x40f -> :sswitch_3
        0x41f -> :sswitch_2
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Z)V

    .line 367
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->r:Z

    if-eqz v0, :cond_1

    .line 362
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    const-string/jumbo v2, "com.yelp.android.bookmarks.remove"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 365
    :cond_1
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->w()Lcom/yelp/android/be/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/be/c;->b()Lcom/yelp/android/be/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->s:Lcom/yelp/android/be/b;

    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->s:Lcom/yelp/android/be/b;

    invoke-virtual {v0}, Lcom/yelp/android/be/b;->a()J

    .line 247
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 248
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->setContentView(I)V

    .line 250
    new-instance v0, Lcom/yelp/android/ui/activities/reservations/h;

    const/16 v1, 0x131

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/reservations/h;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->l:Lcom/yelp/android/ui/activities/reservations/h;

    .line 251
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->e()V

    .line 253
    if-eqz p1, :cond_3

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->s:Lcom/yelp/android/be/b;

    .line 257
    const-string/jumbo v0, "extra.business"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 258
    const-string/jumbo v0, "require_business_update"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->e:Z

    .line 260
    const-string/jumbo v0, "top_highlighted_review_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->d:Ljava/lang/String;

    .line 261
    const-string/jumbo v0, "dialog_information_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->m:Ljava/lang/CharSequence;

    .line 262
    const-string/jumbo v0, "dialog_information_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->n:Ljava/lang/CharSequence;

    .line 264
    const-string/jumbo v0, "search_request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->q:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 265
    const-string/jumbo v0, "extra.business_search_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 266
    const-string/jumbo v0, "extra.has_opened_reservation_flow"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->j:Z

    .line 269
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c00c3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 271
    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->q:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/serializable/BusinessSearchResult;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->h:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 299
    :goto_0
    const v0, 0x7f040022

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->g:Landroid/view/animation/Animation;

    .line 300
    return-void

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->q:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/serializable/BusinessSearchResult;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->h:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    goto :goto_0

    .line 291
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 292
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->disableLoading()V

    goto :goto_0

    .line 296
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const v4, 0x7f070635

    const v1, 0x7f070354

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 435
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v3, 0x7f0c00c3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 438
    packed-switch p1, :pswitch_data_0

    .line 546
    :pswitch_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 440
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->l:Lcom/yelp/android/ui/activities/reservations/h;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/reservations/h;->a(Landroid/app/Activity;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 442
    :pswitch_2
    new-instance v0, Lcom/yelp/android/services/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v0, v1}, Lcom/yelp/android/services/b;-><init>(Lcom/yelp/android/serializable/YelpBusiness;)V

    const v1, 0x7f070561

    invoke-static {p0, v0, v1}, Lcom/yelp/android/services/l;->a(Landroid/app/Activity;Lcom/yelp/android/services/q;I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 445
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f07009a

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f070479

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f070086

    new-instance v4, Lcom/yelp/android/ui/activities/businesspage/a;

    invoke-direct {v4, p0, v0}, Lcom/yelp/android/ui/activities/businesspage/a;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070218

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 462
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/b;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/b;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 471
    :pswitch_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->m:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->n:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/util/cp;->b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 473
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/c;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/c;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 487
    :pswitch_5
    const-string/jumbo v3, ""

    .line 489
    packed-switch p1, :pswitch_data_1

    move-object v0, v2

    .line 513
    goto :goto_0

    .line 491
    :pswitch_6
    const/16 v3, 0x40e

    .line 492
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07063a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 494
    const v1, 0x7f070352

    .line 517
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f07063c

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f07041b

    new-instance v5, Lcom/yelp/android/ui/activities/businesspage/d;

    invoke-direct {v5, p0, v0, v3, v1}, Lcom/yelp/android/ui/activities/businesspage/d;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;II)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 534
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/e;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/businesspage/e;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 497
    :pswitch_7
    const/16 v3, 0x3eb

    .line 499
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 502
    :pswitch_8
    const/16 v3, 0x3ec

    .line 504
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 507
    :pswitch_9
    const/16 v3, 0x420

    .line 508
    const v1, 0x7f070351

    .line 509
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070634

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 543
    :pswitch_a
    new-instance v0, Lcom/yelp/android/services/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->p:Lcom/yelp/android/serializable/YelpDeal;

    invoke-direct {v0, v1}, Lcom/yelp/android/services/c;-><init>(Lcom/yelp/android/serializable/YelpDeal;)V

    const v1, 0x7f070563

    invoke-static {p0, v0, v1}, Lcom/yelp/android/services/l;->a(Landroid/app/Activity;Lcom/yelp/android/services/q;I)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_a
        :pswitch_2
    .end packed-switch

    .line 489
    :pswitch_data_1
    .packed-switch 0x12c
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
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
    .line 644
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->e:Z

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c00c3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 647
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 651
    :goto_0
    return-void

    .line 649
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->setIntent(Landroid/content/Intent;)V

    .line 353
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Intent;)V

    .line 354
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 342
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 343
    const-string/jumbo v0, "business"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/appdata/webrequests/ac;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->s:Lcom/yelp/android/be/b;

    .line 348
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 551
    packed-switch p1, :pswitch_data_0

    .line 555
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 556
    return-void

    .line 553
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->l:Lcom/yelp/android/ui/activities/reservations/h;

    invoke-virtual {v0, p0, p2}, Lcom/yelp/android/ui/activities/reservations/h;->a(Landroid/app/Activity;Landroid/app/Dialog;)V

    goto :goto_0

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x131
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 304
    const-string/jumbo v0, "business"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/appdata/webrequests/ac;

    invoke-virtual {p0, v0, v1, p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ac;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/appdata/webrequests/ac;

    .line 305
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/appdata/webrequests/ac;

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->is(Lcom/yelp/android/appdata/webrequests/ApiRequest;Landroid/os/AsyncTask$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->i:Lcom/yelp/android/appdata/webrequests/ac;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 308
    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 309
    return-void
.end method

.method protected onResumeFragments()V
    .locals 3

    .prologue
    .line 313
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResumeFragments()V

    .line 314
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->h:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c00c3

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->h:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->h:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 318
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->disableLoading()V

    .line 320
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 324
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 325
    const-string/jumbo v0, "extra.business"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 326
    const-string/jumbo v1, "dialog_information_title"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->m:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 328
    const-string/jumbo v1, "dialog_information_message"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->n:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 330
    const-string/jumbo v0, "require_business_update"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 331
    const-string/jumbo v0, "extra.has_opened_reservation_flow"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 332
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->q:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-eqz v0, :cond_0

    .line 333
    const-string/jumbo v0, "search_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->q:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    if-eqz v0, :cond_1

    .line 336
    const-string/jumbo v0, "extra.business_search_result"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a:Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 338
    :cond_1
    return-void

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->m:Ljava/lang/CharSequence;

    goto :goto_0

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->n:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
