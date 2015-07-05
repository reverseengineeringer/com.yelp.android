.class public Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityRankedBusinesses.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/yelp/android/ui/p;
.implements Lcom/yelp/android/ui/panels/aa;


# instance fields
.field private a:Lcom/yelp/android/serializable/RankTitle$Rank;

.field private b:Lcom/yelp/android/serializable/User;

.field private c:Lcom/yelp/android/serializable/RankLocation;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/RankLocation;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Bundle;

.field private f:Lcom/yelp/android/appdata/webrequests/gs;

.field private g:Lcom/yelp/android/appdata/webrequests/gi;

.field private h:Lcom/yelp/android/ui/activities/dl;

.field private final i:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/gt;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/gj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 354
    new-instance v0, Lcom/yelp/android/ui/activities/dh;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/dh;-><init>(Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->i:Lcom/yelp/android/appdata/webrequests/m;

    .line 367
    new-instance v0, Lcom/yelp/android/ui/activities/di;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/di;-><init>(Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->j:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/RankLocation;Lcom/yelp/android/serializable/RankTitle$Rank;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 79
    invoke-static {p0, p2, p3}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a(Landroid/content/Context;Lcom/yelp/android/serializable/RankTitle$Rank;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    .line 80
    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/RankTitle$Rank;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 73
    const-string/jumbo v1, "rank"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RankTitle$Rank;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/RankLocation;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->c:Lcom/yelp/android/serializable/RankLocation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->c:Lcom/yelp/android/serializable/RankLocation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankLocation;->getTopUserCount()I

    move-result v0

    .line 219
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->h:Lcom/yelp/android/ui/activities/dl;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/dl;->getCount()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->h:Lcom/yelp/android/ui/activities/dl;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/dl;->notifyDataSetChanged()V

    .line 223
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->disableLoading()V

    .line 224
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->b:Lcom/yelp/android/serializable/User;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/User;->getLocationCount(Lcom/yelp/android/serializable/RankTitle$Rank;)I

    move-result v0

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/gs;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/gi;

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a_()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->c:Lcom/yelp/android/serializable/RankLocation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->c:Lcom/yelp/android/serializable/RankLocation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankLocation;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->c:Lcom/yelp/android/serializable/RankLocation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankLocation;->getName()Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    return-void

    .line 151
    :cond_1
    const/4 v0, 0x0

    .line 154
    sget-object v1, Lcom/yelp/android/ui/activities/dj;->a:[I

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/RankTitle$Rank;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 170
    :goto_1
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    :pswitch_0
    const v0, 0x7f07031f

    .line 157
    goto :goto_1

    .line 159
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->b:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->isMale()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0700ce

    goto :goto_1

    :cond_2
    const v0, 0x7f0700cf

    goto :goto_1

    .line 162
    :pswitch_2
    const v0, 0x7f07021e

    .line 163
    goto :goto_1

    .line 165
    :pswitch_3
    const v0, 0x7f0704cd

    .line 166
    goto :goto_1

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private g()Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x14

    const/4 v12, 0x0

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->b:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v2

    .line 193
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->c:Lcom/yelp/android/serializable/RankLocation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/gi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/gi;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/gi;->isFetching()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gi;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a:Lcom/yelp/android/serializable/RankTitle$Rank;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->c:Lcom/yelp/android/serializable/RankLocation;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/RankLocation;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->h:Lcom/yelp/android/ui/activities/dl;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/dl;->getCount()I

    move-result v4

    iget-object v6, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->j:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/gi;-><init>(Lcom/yelp/android/serializable/RankTitle$Rank;Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/gi;

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/gi;

    new-array v1, v12, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gi;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/gi;

    .line 206
    :goto_0
    return-object v0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->c:Lcom/yelp/android/serializable/RankLocation;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/gs;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/gs;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/gs;->isFetching()Z

    move-result v0

    if-nez v0, :cond_3

    .line 201
    :cond_2
    new-instance v6, Lcom/yelp/android/appdata/webrequests/gs;

    iget-object v7, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a:Lcom/yelp/android/serializable/RankTitle$Rank;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->h:Lcom/yelp/android/ui/activities/dl;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/dl;->getCount()I

    move-result v9

    iget-object v11, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->i:Lcom/yelp/android/appdata/webrequests/m;

    move-object v8, v2

    move v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/yelp/android/appdata/webrequests/gs;-><init>(Lcom/yelp/android/serializable/RankTitle$Rank;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    iput-object v6, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/gs;

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/gs;

    new-array v1, v12, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gs;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 204
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/gs;

    goto :goto_0

    .line 206
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RankLocation;

    .line 237
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankLocation;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    .line 238
    if-eqz v1, :cond_1

    .line 239
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 240
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->startActivity(Landroid/content/Intent;)V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankLocation;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a:Lcom/yelp/android/serializable/RankTitle$Rank;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->b:Lcom/yelp/android/serializable/User;

    invoke-static {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a(Landroid/content/Context;Lcom/yelp/android/serializable/RankLocation;Lcom/yelp/android/serializable/RankTitle$Rank;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a_()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 187
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g()Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->h:Lcom/yelp/android/ui/activities/dl;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/dl;->notifyDataSetInvalidated()V

    .line 189
    return-void
.end method

.method public c()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Lcom/yelp/android/appdata/webrequests/gs;",
            "Lcom/yelp/android/appdata/webrequests/gi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g()Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 136
    return-void
.end method

.method public d_()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Lcom/yelp/android/appdata/webrequests/gs;",
            "Lcom/yelp/android/appdata/webrequests/gi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/gs;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/gi;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 341
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UserRankingsBusinesses:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->c()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 1
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
    .line 346
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->b:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public m_()V
    .locals 0

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a_()V

    .line 141
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    if-eqz p1, :cond_2

    .line 88
    const-string/jumbo v0, "locations"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->d:Ljava/util/ArrayList;

    .line 89
    const-string/jumbo v0, "counts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->e:Landroid/os/Bundle;

    .line 94
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->c()Landroid/util/Pair;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_1

    .line 96
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/gs;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/gs;

    .line 97
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/gi;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/gi;

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/gs;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/gs;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->i:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gs;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/gi;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/gi;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->j:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gi;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 106
    const-string/jumbo v0, "user"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->b:Lcom/yelp/android/serializable/User;

    .line 107
    const-string/jumbo v0, "rank"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->rankForString(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->a:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 108
    const-string/jumbo v0, "location"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RankLocation;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->c:Lcom/yelp/android/serializable/RankLocation;

    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/yelp/android/ui/activities/dl;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->e:Landroid/os/Bundle;

    invoke-direct {v1, p0, v2, v3}, Lcom/yelp/android/ui/activities/dl;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->h:Lcom/yelp/android/ui/activities/dl;

    .line 111
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setDividerHeight(I)V

    .line 112
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->h:Lcom/yelp/android/ui/activities/dl;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f()V

    .line 114
    return-void

    .line 91
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->d:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->e:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0
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
    .line 228
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 229
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onResume()V

    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/gs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/gs;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/gs;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->f:Lcom/yelp/android/appdata/webrequests/gs;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/gi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/gi;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/gi;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->g:Lcom/yelp/android/appdata/webrequests/gi;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->d_()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 178
    const-string/jumbo v0, "locations"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 179
    const-string/jumbo v0, "counts"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityRankedBusinesses;->e:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 180
    return-void
.end method
