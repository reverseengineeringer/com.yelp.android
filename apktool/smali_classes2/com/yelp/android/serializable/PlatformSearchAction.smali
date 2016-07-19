.class public Lcom/yelp/android/serializable/PlatformSearchAction;
.super Lcom/yelp/android/serializable/_PlatformSearchAction;
.source "PlatformSearchAction.java"

# interfaces
.implements Lcom/yelp/android/serializable/SearchAction;


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/a",
            "<",
            "Lcom/yelp/android/serializable/PlatformSearchAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/yelp/android/ui/activities/businesspage/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/yelp/android/serializable/PlatformSearchAction$2;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PlatformSearchAction$2;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/PlatformSearchAction;->CREATOR:Lcom/yelp/android/serializable/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/PlatformSearchAction;->n:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->Platform:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lcom/yelp/android/serializable/BusinessSearchResult;Ljava/lang/String;)V
    .locals 15

    .prologue
    .line 65
    new-instance v1, Lcom/yelp/android/g/a;

    invoke-direct {v1}, Lcom/yelp/android/g/a;-><init>()V

    .line 66
    invoke-virtual/range {p2 .. p2}, Lcom/yelp/android/serializable/BusinessSearchResult;->g()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-static {v2}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
    const-string/jumbo v3, "biz_dimension"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v13

    .line 71
    const-string/jumbo v2, "id"

    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    const-string/jumbo v2, "supported_vertical_types"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->m()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 76
    const-string/jumbo v2, "search_request_id"

    move-object/from16 v0, p3

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_2
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->SearchPlatformOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v2, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 79
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const v1, 0x7f070379

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/analytics/iris/ViewIri;->OpenURL:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    sget-object v6, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->FINISH_ON_UP:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    const v7, 0x7f070693

    invoke-virtual/range {p2 .. p2}, Lcom/yelp/android/serializable/BusinessSearchResult;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->m()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "source_search_page"

    invoke-virtual/range {p2 .. p2}, Lcom/yelp/android/serializable/BusinessSearchResult;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->k()Ljava/util/HashMap;

    move-result-object v14

    move-object/from16 v1, p1

    move-object/from16 v12, p3

    invoke-static/range {v1 .. v14}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x417

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 96
    return-void
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PlatformSearchAction;->a(Landroid/os/Parcel;)V

    .line 53
    iget-object v0, p0, Lcom/yelp/android/serializable/PlatformSearchAction;->n:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 54
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PlatformSearchAction;->a(Lorg/json/JSONObject;)V

    .line 41
    const-string/jumbo v0, "params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    const-string/jumbo v0, "params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    iget-object v3, p0, Lcom/yelp/android/serializable/PlatformSearchAction;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method public bridge synthetic b()Z
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->b()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/yelp/android/ui/activities/businesspage/g;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yelp/android/serializable/PlatformSearchAction;->o:Lcom/yelp/android/ui/activities/businesspage/g;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/yelp/android/serializable/PlatformSearchAction$1;

    invoke-direct {v0, p0, p0}, Lcom/yelp/android/serializable/PlatformSearchAction$1;-><init>(Lcom/yelp/android/serializable/PlatformSearchAction;Lcom/yelp/android/serializable/SearchAction;)V

    iput-object v0, p0, Lcom/yelp/android/serializable/PlatformSearchAction;->o:Lcom/yelp/android/ui/activities/businesspage/g;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/PlatformSearchAction;->o:Lcom/yelp/android/ui/activities/businesspage/g;

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()[I
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->e()[I

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 174
    :cond_0
    :goto_0
    return v1

    .line 133
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 137
    check-cast p1, Lcom/yelp/android/serializable/PlatformSearchAction;

    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->b()Z

    move-result v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->b()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->p()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->o()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->j()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->j()[I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->i()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->i()[I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->h()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->h()[I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->g()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->g()[I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->f()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->f()[I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->e()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->e()[I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/yelp/android/serializable/PlatformSearchAction;->n:Ljava/util/HashMap;

    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/yelp/android/serializable/PlatformSearchAction;->n:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/yelp/android/serializable/PlatformSearchAction;->n:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_5
    :goto_1
    move v1, v0

    goto/16 :goto_0

    .line 142
    :cond_6
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->p()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 147
    :cond_7
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    goto/16 :goto_0

    .line 152
    :cond_8
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->o()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    goto/16 :goto_0

    .line 174
    :cond_9
    iget-object v2, p1, Lcom/yelp/android/serializable/PlatformSearchAction;->n:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_1
.end method

.method public bridge synthetic f()[I
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->f()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()[I
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->g()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()[I
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->h()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i()[I
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->i()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()[I
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->j()[I

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/yelp/android/serializable/PlatformSearchAction;->n:Ljava/util/HashMap;

    return-object v0
.end method

.method public bridge synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n()Lcom/yelp/android/ui/activities/businesspage/b;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->d()Lcom/yelp/android/ui/activities/businesspage/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic q()Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_PlatformSearchAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 59
    iget-object v0, p0, Lcom/yelp/android/serializable/PlatformSearchAction;->n:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 60
    return-void
.end method
