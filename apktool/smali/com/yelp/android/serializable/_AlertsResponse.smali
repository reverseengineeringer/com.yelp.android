.class abstract Lcom/yelp/android/serializable/_AlertsResponse;
.super Ljava/lang/Object;
.source "_AlertsResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAlerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Alert;",
            ">;"
        }
    .end annotation
.end field

.field protected mCount:I

.field protected mFillerAlerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Alert;",
            ">;"
        }
    .end annotation
.end field

.field protected mNextPage:Ljava/lang/String;

.field protected mRevision:Ljava/lang/String;

.field protected mSummaryAlerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Alert;",
            ">;"
        }
    .end annotation
.end field

.field protected mTheme:Ljava/lang/String;

.field protected mUnreadMessageCount:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Alert;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Alert;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Alert;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yelp/android/serializable/_AlertsResponse;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mAlerts:Ljava/util/List;

    .line 29
    iput-object p2, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mFillerAlerts:Ljava/util/List;

    .line 30
    iput-object p3, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mSummaryAlerts:Ljava/util/List;

    .line 31
    iput-object p4, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mRevision:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mNextPage:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mTheme:Ljava/lang/String;

    .line 34
    iput p7, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mCount:I

    .line 35
    iput p8, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mUnreadMessageCount:I

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getAlerts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Alert;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mAlerts:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mCount:I

    return v0
.end method

.method public getFillerAlerts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Alert;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mFillerAlerts:Ljava/util/List;

    return-object v0
.end method

.method public getNextPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mNextPage:Ljava/lang/String;

    return-object v0
.end method

.method public getRevision()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getSummaryAlerts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Alert;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mSummaryAlerts:Ljava/util/List;

    return-object v0
.end method

.method public getTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mTheme:Ljava/lang/String;

    return-object v0
.end method

.method public getUnreadMessageCount()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mUnreadMessageCount:I

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 95
    const-string/jumbo v0, "alerts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 96
    const-string/jumbo v0, "alerts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Alert;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mAlerts:Ljava/util/List;

    .line 100
    :goto_0
    const-string/jumbo v0, "filler_alerts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 101
    const-string/jumbo v0, "filler_alerts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Alert;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mFillerAlerts:Ljava/util/List;

    .line 105
    :goto_1
    const-string/jumbo v0, "summary_alerts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 106
    const-string/jumbo v0, "summary_alerts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Alert;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mSummaryAlerts:Ljava/util/List;

    .line 110
    :goto_2
    const-string/jumbo v0, "revision"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const-string/jumbo v0, "revision"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mRevision:Ljava/lang/String;

    .line 113
    :cond_0
    const-string/jumbo v0, "next_page"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    const-string/jumbo v0, "next_page"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mNextPage:Ljava/lang/String;

    .line 116
    :cond_1
    const-string/jumbo v0, "theme"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    const-string/jumbo v0, "theme"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mTheme:Ljava/lang/String;

    .line 119
    :cond_2
    const-string/jumbo v0, "count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mCount:I

    .line 120
    const-string/jumbo v0, "unread_message_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mUnreadMessageCount:I

    .line 121
    return-void

    .line 98
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mAlerts:Ljava/util/List;

    goto :goto_0

    .line 103
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mFillerAlerts:Ljava/util/List;

    goto :goto_1

    .line 108
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mSummaryAlerts:Ljava/util/List;

    goto :goto_2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/yelp/android/serializable/Alert;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mAlerts:Ljava/util/List;

    .line 85
    sget-object v0, Lcom/yelp/android/serializable/Alert;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mFillerAlerts:Ljava/util/List;

    .line 86
    sget-object v0, Lcom/yelp/android/serializable/Alert;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mSummaryAlerts:Ljava/util/List;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mRevision:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mNextPage:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mTheme:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mCount:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mUnreadMessageCount:I

    .line 92
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 124
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 125
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mAlerts:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 126
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 127
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mAlerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Alert;

    .line 128
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Alert;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 130
    :cond_0
    const-string/jumbo v0, "alerts"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mFillerAlerts:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 133
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 134
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mFillerAlerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Alert;

    .line 135
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Alert;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 137
    :cond_2
    const-string/jumbo v0, "filler_alerts"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mSummaryAlerts:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 140
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 141
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mSummaryAlerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Alert;

    .line 142
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Alert;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 144
    :cond_4
    const-string/jumbo v0, "summary_alerts"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mRevision:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 147
    const-string/jumbo v0, "revision"

    iget-object v2, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mRevision:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mNextPage:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 150
    const-string/jumbo v0, "next_page"

    iget-object v2, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mNextPage:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mTheme:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 153
    const-string/jumbo v0, "theme"

    iget-object v2, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mTheme:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    :cond_8
    const-string/jumbo v0, "count"

    iget v2, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    const-string/jumbo v0, "unread_message_count"

    iget v2, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mUnreadMessageCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mAlerts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 74
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mFillerAlerts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mSummaryAlerts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mRevision:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mNextPage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mTheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/yelp/android/serializable/_AlertsResponse;->mUnreadMessageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return-void
.end method
