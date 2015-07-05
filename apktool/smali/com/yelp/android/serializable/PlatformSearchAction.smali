.class public Lcom/yelp/android/serializable/PlatformSearchAction;
.super Lcom/yelp/android/serializable/_PlatformSearchAction;
.source "PlatformSearchAction.java"

# interfaces
.implements Lcom/yelp/android/serializable/SearchAction;


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/ah",
            "<",
            "Lcom/yelp/android/serializable/PlatformSearchAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHighlightedBusinessInfo:Lcom/yelp/android/ui/activities/businesspage/cf;

.field private mParams:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/yelp/android/serializable/bw;

    invoke-direct {v0}, Lcom/yelp/android/serializable/bw;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/PlatformSearchAction;->CREATOR:Lcom/yelp/android/serializable/ah;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/PlatformSearchAction;->mParams:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 136
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 140
    check-cast p1, Lcom/yelp/android/serializable/PlatformSearchAction;

    .line 142
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->isDisabled()Z

    move-result v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->isDisabled()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->getTextColor()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->getTextColor()[I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->getDefaultColorTop()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->getDefaultColorTop()[I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->getDefaultColorBottom()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->getDefaultColorBottom()[I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->getSelectedColorTop()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->getSelectedColorTop()[I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->getSelectedColorBottom()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->getSelectedColorBottom()[I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->getBorderColor()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->getBorderColor()[I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/yelp/android/serializable/PlatformSearchAction;->mParams:Ljava/util/HashMap;

    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/yelp/android/serializable/PlatformSearchAction;->mParams:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/yelp/android/serializable/PlatformSearchAction;->mParams:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_5
    :goto_1
    move v1, v0

    goto/16 :goto_0

    .line 145
    :cond_6
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 148
    :cond_7
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    goto/16 :goto_0

    .line 151
    :cond_8
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    goto/16 :goto_0

    .line 173
    :cond_9
    iget-object v2, p1, Lcom/yelp/android/serializable/PlatformSearchAction;->mParams:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_1
.end method

.method public bridge synthetic getBorderColor()[I
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->getBorderColor()[I

    move-result-object v0

    return-object v0
.end method

.method public getBusinessListButton()Lcom/yelp/android/ui/activities/businesspage/cf;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yelp/android/serializable/PlatformSearchAction;->mHighlightedBusinessInfo:Lcom/yelp/android/ui/activities/businesspage/cf;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/yelp/android/serializable/bx;

    invoke-direct {v0, p0, p0}, Lcom/yelp/android/serializable/bx;-><init>(Lcom/yelp/android/serializable/PlatformSearchAction;Lcom/yelp/android/serializable/SearchAction;)V

    iput-object v0, p0, Lcom/yelp/android/serializable/PlatformSearchAction;->mHighlightedBusinessInfo:Lcom/yelp/android/ui/activities/businesspage/cf;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/PlatformSearchAction;->mHighlightedBusinessInfo:Lcom/yelp/android/ui/activities/businesspage/cf;

    return-object v0
.end method

.method public bridge synthetic getBusinessListButton()Lcom/yelp/android/ui/activities/businesspage/o;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->getBusinessListButton()Lcom/yelp/android/ui/activities/businesspage/cf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultColorBottom()[I
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->getDefaultColorBottom()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultColorTop()[I
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->getDefaultColorTop()[I

    move-result-object v0

    return-object v0
.end method

.method public getSearchActionType()Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->Platform:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    return-object v0
.end method

.method public bridge synthetic getSelectedColorBottom()[I
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->getSelectedColorBottom()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSelectedColorTop()[I
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->getSelectedColorTop()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTextColor()[I
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->getTextColor()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isDisabled()Z
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformSearchAction;->isDisabled()Z

    move-result v0

    return v0
.end method

.method public onPressed(Landroid/content/Context;Lcom/yelp/android/serializable/BusinessSearchResult;)V
    .locals 9

    .prologue
    .line 83
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 84
    invoke-virtual {p2}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBizDimension()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    const-string/jumbo v2, "biz_dimension"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    const-string/jumbo v1, "id"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchPlatformOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 90
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformSearchAction;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, ""

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->OpenURL:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    sget-object v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->FINISH_ON_BACK:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v0, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    const v5, 0x7f0706c4

    const/4 v6, 0x1

    invoke-virtual {p2}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBizDimension()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "source_search_page"

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;IZLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    return-void
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PlatformSearchAction;->readFromJson(Lorg/json/JSONObject;)V

    .line 60
    const-string/jumbo v0, "params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const-string/jumbo v0, "params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    iget-object v3, p0, Lcom/yelp/android/serializable/PlatformSearchAction;->mParams:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PlatformSearchAction;->readFromParcel(Landroid/os/Parcel;)V

    .line 72
    iget-object v0, p0, Lcom/yelp/android/serializable/PlatformSearchAction;->mParams:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_PlatformSearchAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/serializable/PlatformSearchAction;->mParams:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 79
    return-void
.end method
