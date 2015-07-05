.class public Lcom/yelp/android/serializable/BusinessSearchResult;
.super Lcom/yelp/android/serializable/_BusinessSearchResult;
.source "BusinessSearchResult.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/businesssearch/i;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSearchActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/SearchAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 236
    new-instance v0, Lcom/yelp/android/serializable/q;

    invoke-direct {v0}, Lcom/yelp/android/serializable/q;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/BusinessSearchResult;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/serializable/_BusinessSearchResult;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/BusinessSearchResult;->mSearchActions:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public static businessSearchResultsFromJSONArray(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 49
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 52
    sget-object v0, Lcom/yelp/android/serializable/BusinessSearchResult;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 55
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v4

    .line 56
    invoke-virtual {v4, p1}, Lcom/yelp/android/serializable/YelpBusiness;->setYelpRequestId(Ljava/lang/String;)V

    .line 57
    iget-object v5, v4, Lcom/yelp/android/serializable/YelpBusiness;->mFormatMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    if-nez v5, :cond_0

    .line 58
    iput-object p2, v4, Lcom/yelp/android/serializable/YelpBusiness;->mFormatMode:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    .line 60
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 62
    :cond_1
    return-object v3
.end method

.method public static getBusinessesFromBusinessSearchResult(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    if-eqz p0, :cond_0

    .line 69
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 70
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 73
    :cond_0
    return-object v2
.end method

.method public static replaceBusiness(Ljava/util/List;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            ">;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 85
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/BusinessSearchResult;->setBusiness(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 91
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessSearchResult;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 218
    :cond_0
    :goto_0
    return v1

    .line 196
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 200
    check-cast p1, Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 202
    invoke-virtual {p0}, Lcom/yelp/android/serializable/BusinessSearchResult;->getAnnotations()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/yelp/android/serializable/BusinessSearchResult;->getAnnotations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/BusinessSearchResult;->getAnnotations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBizDimension()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBizDimension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBizDimension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/YelpBusiness;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/BusinessSearchResult;->mSearchActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessSearchResult;->mSearchActions:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/yelp/android/serializable/BusinessSearchResult;->mSearchActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_5
    :goto_1
    move v1, v0

    goto :goto_0

    .line 202
    :cond_6
    invoke-virtual {p1}, Lcom/yelp/android/serializable/BusinessSearchResult;->getAnnotations()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 207
    :cond_7
    invoke-virtual {p1}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBizDimension()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 212
    :cond_8
    invoke-virtual {p1}, Lcom/yelp/android/serializable/BusinessSearchResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 218
    :cond_9
    iget-object v2, p1, Lcom/yelp/android/serializable/BusinessSearchResult;->mSearchActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_1
.end method

.method public bridge synthetic getAnnotations()Ljava/util/List;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessSearchResult;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBizDimension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessSearchResult;->getBizDimension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessSearchResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public getBusinessSearchResult()Lcom/yelp/android/serializable/BusinessSearchResult;
    .locals 0

    .prologue
    .line 233
    return-object p0
.end method

.method public getSearchActions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/SearchAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessSearchResult;->mSearchActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_BusinessSearchResult;->readFromJson(Lorg/json/JSONObject;)V

    .line 100
    const-string/jumbo v0, "actions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 101
    if-nez v2, :cond_1

    .line 127
    :cond_0
    return-void

    .line 104
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 105
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 106
    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->parseSearchActionType(Ljava/lang/String;)Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;
    invoke-static {v3}, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->access$000(Ljava/lang/String;)Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    move-result-object v3

    .line 108
    if-nez v3, :cond_2

    .line 104
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 111
    :cond_2
    sget-object v4, Lcom/yelp/android/serializable/r;->a:[I

    invoke-virtual {v3}, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :pswitch_0
    sget-object v3, Lcom/yelp/android/serializable/PlatformSearchAction;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-virtual {v3, v0}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformSearchAction;

    .line 115
    iget-object v3, p0, Lcom/yelp/android/serializable/BusinessSearchResult;->mSearchActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    :pswitch_1
    sget-object v3, Lcom/yelp/android/serializable/ReservationSearchAction;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {v3, v0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReservationSearchAction;

    .line 120
    iget-object v3, p0, Lcom/yelp/android/serializable/BusinessSearchResult;->mSearchActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_BusinessSearchResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 138
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->parseSearchActionType(Ljava/lang/String;)Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;
    invoke-static {v0}, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->access$000(Ljava/lang/String;)Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    move-result-object v0

    .line 142
    sget-object v3, Lcom/yelp/android/serializable/r;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 152
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is not supported."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :pswitch_0
    const-class v0, Lcom/yelp/android/serializable/PlatformSearchAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SearchAction;

    .line 155
    :goto_1
    iget-object v3, p0, Lcom/yelp/android/serializable/BusinessSearchResult;->mSearchActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 148
    :pswitch_1
    const-class v0, Lcom/yelp/android/serializable/ReservationSearchAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SearchAction;

    goto :goto_1

    .line 157
    :cond_0
    return-void

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBusiness(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/yelp/android/serializable/BusinessSearchResult;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 225
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    .line 167
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_BusinessSearchResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 168
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessSearchResult;->mSearchActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 171
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 173
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessSearchResult;->mSearchActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SearchAction;

    .line 176
    invoke-interface {v0}, Lcom/yelp/android/serializable/SearchAction;->getSearchActionType()Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    move-result-object v3

    # getter for: Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->typeAsString:Ljava/lang/String;
    invoke-static {v3}, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->access$100(Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    sget-object v3, Lcom/yelp/android/serializable/r;->a:[I

    invoke-interface {v0}, Lcom/yelp/android/serializable/SearchAction;->getSearchActionType()Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 185
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/yelp/android/serializable/SearchAction;->getSearchActionType()Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is not supported."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :pswitch_0
    check-cast v0, Lcom/yelp/android/serializable/PlatformSearchAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 172
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 182
    :pswitch_1
    check-cast v0, Lcom/yelp/android/serializable/ReservationSearchAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 189
    :cond_0
    return-void

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
