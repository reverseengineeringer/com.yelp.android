.class final enum Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$7;
.super Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;
.source "BusinessBasicInfo.java"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;-><init>(Ljava/lang/String;IILcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$1;)V

    return-void
.end method


# virtual methods
.method public getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 174
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getMovies()Ljava/util/ArrayList;

    move-result-object v1

    .line 175
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 185
    const v2, 0x7f0703b3

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Movie;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Movie;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Movie;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Movie;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Movie;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Movie;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 177
    :pswitch_0
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Movie;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Movie;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    :pswitch_1
    const v2, 0x7f070686

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Movie;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Movie;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Movie;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Movie;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 182
    :pswitch_2
    const v2, 0x7f07068a

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Movie;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Movie;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Movie;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Movie;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Movie;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Movie;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 169
    const v0, 0x7f07060e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSubtitleExpanded()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getMovies()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getMovies()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
