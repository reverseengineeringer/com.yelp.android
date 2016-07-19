.class public Lcom/yelp/android/serializable/YelpCheckIn;
.super Lcom/yelp/android/serializable/_YelpCheckIn;
.source "YelpCheckIn.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/yelp/android/serializable/CheckIn;
.implements Lcom/yelp/android/serializable/DisplayableAsUserBadge;
.implements Lcom/yelp/android/serializable/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;,
        Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/yelp/android/serializable/RankTitle$Rank;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/yelp/android/serializable/Feedback;

.field private D:Z

.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 303
    new-instance v0, Lcom/yelp/android/serializable/YelpCheckIn$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpCheckIn$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpCheckIn;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;-><init>()V

    .line 187
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/Feedback;-><init>(Ljava/util/List;I)V

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->C:Lcom/yelp/android/serializable/Feedback;

    .line 188
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/yelp/android/appdata/webrequests/core/b;)Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/yelp/android/appdata/webrequests/core/b",
            "<***>;)",
            "Lcom/yelp/android/serializable/YelpCheckIn;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Lcom/yelp/android/serializable/YelpCheckIn;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "check_in"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 127
    const-string/jumbo v1, "check_in_offer_awarded"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->D:Z

    .line 128
    const-string/jumbo v1, "business"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    sget-object v1, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v2, "business"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->n:Lcom/yelp/android/serializable/YelpBusiness;

    .line 130
    iget-object v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/core/b;->i_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/YelpBusiness;->a(Ljava/lang/String;)V

    .line 132
    :cond_0
    const-string/jumbo v1, "new_badges"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    const-string/jumbo v1, "new_badges"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/Badge;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v1, v2}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->d:Ljava/util/List;

    .line 138
    :goto_0
    const-string/jumbo v1, "stats"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_4

    .line 140
    const-string/jumbo v2, "user_count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yelp/android/serializable/YelpCheckIn;->s:I

    .line 141
    const-string/jumbo v2, "total_count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yelp/android/serializable/YelpCheckIn;->q:I

    .line 142
    const-string/jumbo v2, "week_count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yelp/android/serializable/YelpCheckIn;->r:I

    .line 143
    const-string/jumbo v2, "location_rank"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yelp/android/serializable/YelpCheckIn;->t:I

    .line 144
    const-string/jumbo v2, "friend_rank"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yelp/android/serializable/YelpCheckIn;->u:I

    .line 145
    const-string/jumbo v2, "friend_active_count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yelp/android/serializable/YelpCheckIn;->v:I

    .line 146
    const-string/jumbo v2, "regular_rank"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yelp/android/serializable/YelpCheckIn;->w:I

    .line 147
    const-string/jumbo v2, "new_location_rank_titles"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 148
    if-eqz v3, :cond_3

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->B:Ljava/util/List;

    .line 151
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gt v1, v2, :cond_4

    .line 152
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "location_names"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 155
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v5, "title"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/serializable/RankTitle$Rank;->rankForString(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v5

    .line 159
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 162
    iget-object v6, v0, Lcom/yelp/android/serializable/YelpCheckIn;->B:Ljava/util/List;

    new-instance v7, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;-><init>(Lcom/yelp/android/serializable/RankTitle$Rank;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 136
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->d:Ljava/util/List;

    goto/16 :goto_0

    .line 151
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 167
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->B:Ljava/util/List;

    .line 170
    :cond_4
    const-string/jumbo v1, "survey_questions"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 171
    const-string/jumbo v1, "survey_questions"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/SurveyQuestion;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v1, v2}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->a:Ljava/util/ArrayList;

    .line 175
    :cond_5
    const-string/jumbo v1, "contribution_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->l:Ljava/lang/String;

    .line 176
    return-object v0
.end method

.method public static a(Lorg/json/JSONArray;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 107
    sget-object v0, Lcom/yelp/android/serializable/YelpCheckIn;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {p0, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 109
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->n:Lcom/yelp/android/serializable/YelpBusiness;

    goto :goto_0

    .line 113
    :cond_1
    return-object v2
.end method

.method private static a(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 395
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;

    .line 396
    invoke-static {v0}, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->a(Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/serializable/RankTitle$Rank;->REGULAR:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/RankTitle$Rank;->greaterThan(Lcom/yelp/android/serializable/RankTitle$Rank;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    const/4 v0, 0x0

    .line 400
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic A()Lcom/yelp/android/serializable/Comment;
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->A()Lcom/yelp/android/serializable/Comment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic B()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->B()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ad()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 360
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Badge;

    .line 361
    invoke-static {p1, v0, p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Badge;Lcom/yelp/android/serializable/YelpCheckIn;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;

    .line 364
    invoke-static {v0}, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->a(Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v3

    .line 365
    sget-object v4, Lcom/yelp/android/serializable/RankTitle$Rank;->USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v3, v4}, Lcom/yelp/android/serializable/RankTitle$Rank;->greaterThan(Lcom/yelp/android/serializable/RankTitle$Rank;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 366
    sget-object v4, Lcom/yelp/android/serializable/RankTitle$Rank;->REGULAR:Lcom/yelp/android/serializable/RankTitle$Rank;

    if-ne v3, v4, :cond_2

    iget-object v4, p0, Lcom/yelp/android/serializable/YelpCheckIn;->B:Ljava/util/List;

    invoke-static {v4}, Lcom/yelp/android/serializable/YelpCheckIn;->a(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 371
    :cond_2
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0, p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->a(Landroid/content/Context;Lcom/yelp/android/serializable/RankTitle$Rank;Ljava/lang/String;Lcom/yelp/android/serializable/YelpCheckIn;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 376
    :cond_3
    return-object v1
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 507
    iput p1, p0, Lcom/yelp/android/serializable/YelpCheckIn;->x:I

    .line 508
    return-void
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 337
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpCheckIn;->a(Landroid/os/Parcel;)V

    .line 338
    invoke-static {}, Lcom/yelp/android/serializable/RankTitle$Rank;->values()[Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->A:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 339
    sget-object v0, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->B:Ljava/util/List;

    .line 340
    const-class v0, Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Feedback;

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->C:Lcom/yelp/android/serializable/Feedback;

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->D:Z

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->E:Ljava/util/ArrayList;

    .line 343
    return-void

    .line 341
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 511
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpCheckIn;->m:Lcom/yelp/android/serializable/User;

    .line 512
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->z()V

    .line 513
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpCheckIn;->E:Ljava/util/ArrayList;

    .line 295
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpCheckIn;->a(Lorg/json/JSONObject;)V

    .line 348
    sget-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->A:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 349
    const-string/jumbo v0, "location_rank_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    const-string/jumbo v0, "location_rank_title"

    sget-object v1, Lcom/yelp/android/serializable/RankTitle$Rank;->USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/RankTitle$Rank;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->rankForString(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->A:Lcom/yelp/android/serializable/RankTitle$Rank;

    .line 355
    :cond_0
    :goto_0
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    iget-object v1, p0, Lcom/yelp/android/serializable/YelpCheckIn;->e:Ljava/util/List;

    iget v2, p0, Lcom/yelp/android/serializable/YelpCheckIn;->y:I

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/Feedback;-><init>(Ljava/util/List;I)V

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->C:Lcom/yelp/android/serializable/Feedback;

    .line 356
    return-void

    .line 352
    :cond_1
    const-string/jumbo v0, "rank_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    const-string/jumbo v0, "rank_title"

    sget-object v1, Lcom/yelp/android/serializable/RankTitle$Rank;->USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/RankTitle$Rank;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->rankForString(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->A:Lcom/yelp/android/serializable/RankTitle$Rank;

    goto :goto_0
.end method

.method public b()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->b()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 424
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpCheckIn;->u()I

    move-result v0

    .line 425
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpCheckIn;->n()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->d()I

    move-result v3

    .line 426
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpCheckIn;->A()Lcom/yelp/android/serializable/Comment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 429
    add-int/lit8 v0, v0, -0x1

    .line 431
    :cond_0
    const-string/jumbo v1, ""

    .line 432
    if-gtz v0, :cond_1

    if-lez v3, :cond_5

    .line 434
    :cond_1
    const/4 v2, 0x0

    .line 435
    if-lez v3, :cond_2

    .line 436
    const v1, 0x7f080049

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p1, v1, v3, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 441
    :cond_2
    if-lez v0, :cond_3

    .line 442
    const v1, 0x7f080038

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {p1, v1, v0, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 447
    :cond_3
    if-lez v0, :cond_4

    if-lez v3, :cond_4

    .line 448
    const v0, 0x7f080041

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v7

    invoke-static {p1, v0, v3, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070715

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 461
    :goto_0
    return-object v0

    .line 457
    :cond_4
    if-ne v3, v6, :cond_5

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpCheckIn;->n()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 458
    const v0, 0x7f070694

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic e()Ljava/util/Date;
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->e()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 486
    if-ne p0, p1, :cond_1

    .line 503
    :cond_0
    :goto_0
    return v0

    .line 489
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 490
    goto :goto_0

    .line 492
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/YelpCheckIn;

    if-nez v2, :cond_3

    move v0, v1

    .line 493
    goto :goto_0

    .line 495
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 496
    iget-object v2, p0, Lcom/yelp/android/serializable/YelpCheckIn;->f:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 497
    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpCheckIn;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 498
    goto :goto_0

    .line 500
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/YelpCheckIn;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/_YelpCheckIn;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 501
    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->h()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 474
    .line 476
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 477
    return v0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->m:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->m:Lcom/yelp/android/serializable/User;

    .line 196
    return-void
.end method

.method public j_()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->j_()I

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->n:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public k_()I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->k_()I

    move-result v0

    return v0
.end method

.method public l()Lcom/yelp/android/serializable/RankTitle$Rank;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->A:Lcom/yelp/android/serializable/RankTitle$Rank;

    return-object v0
.end method

.method public l_()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->M()I

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->n:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public m_()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->m_()I

    move-result v0

    return v0
.end method

.method public n()Lcom/yelp/android/serializable/Feedback;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->C:Lcom/yelp/android/serializable/Feedback;

    return-object v0
.end method

.method public n_()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->m:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->n_()I

    move-result v0

    return v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->E:Ljava/util/ArrayList;

    return-object v0
.end method

.method public p()Z
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;

    .line 386
    invoke-static {v0}, Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;->a(Lcom/yelp/android/serializable/YelpCheckIn$TitleLocation;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v0

    .line 387
    sget-object v2, Lcom/yelp/android/serializable/RankTitle$Rank;->USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/RankTitle$Rank;->greaterThan(Lcom/yelp/android/serializable/RankTitle$Rank;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const/4 v0, 0x1

    .line 391
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->D:Z

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    const-string/jumbo v0, "tip"

    .line 533
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method public s()Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;
    .locals 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpCheckIn;->r()Ljava/lang/String;

    move-result-object v0

    .line 538
    const-string/jumbo v1, "review"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    sget-object v0, Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;->REVIEW:Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;

    .line 543
    :goto_0
    return-object v0

    .line 540
    :cond_0
    const-string/jumbo v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    sget-object v0, Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;->PHOTO_OR_VIDEO:Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;

    goto :goto_0

    .line 543
    :cond_1
    sget-object v0, Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;->TIP:Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;

    goto :goto_0
.end method

.method public bridge synthetic t()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->t()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u()I
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->u()I

    move-result v0

    return v0
.end method

.method public bridge synthetic v()I
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->v()I

    move-result v0

    return v0
.end method

.method public bridge synthetic w()I
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->w()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 327
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_YelpCheckIn;->writeToParcel(Landroid/os/Parcel;I)V

    .line 328
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->A:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->B:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 330
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->C:Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 331
    iget-boolean v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->D:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpCheckIn;->E:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 333
    return-void

    .line 331
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic x()Z
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->x()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic y()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->y()Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpCheckIn;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
