.class public Lcom/yelp/android/serializable/PlatformFilter;
.super Lcom/yelp/android/serializable/_PlatformFilter;
.source "PlatformFilter.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/PlatformFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/yelp/android/serializable/PlatformFilter$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PlatformFilter$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/PlatformFilter;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yelp/android/serializable/_PlatformFilter;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/yelp/android/serializable/_PlatformFilter;-><init>(Lcom/yelp/android/serializable/SearchLocation;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/PlatformFilter;->b:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PlatformFilter;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/SearchRequest;)V
    .locals 1

    .prologue
    .line 87
    invoke-static {p1}, Lcom/yelp/android/serializable/SearchLocation;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest;)Lcom/yelp/android/serializable/SearchLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/PlatformFilter;->a:Lcom/yelp/android/serializable/SearchLocation;

    .line 88
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/SearchLocation;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/yelp/android/serializable/PlatformFilter;->a:Lcom/yelp/android/serializable/SearchLocation;

    .line 84
    return-void
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PlatformFilter;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformFilter;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pickup"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformFilter;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "delivery_current_location"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformFilter;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformFilter;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic c()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformFilter;->c()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformFilter;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformFilter;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Lcom/yelp/android/serializable/SearchLocation;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformFilter;->e()Lcom/yelp/android/serializable/SearchLocation;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50
    instance-of v1, p1, Lcom/yelp/android/serializable/PlatformFilter;

    if-nez v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    check-cast p1, Lcom/yelp/android/serializable/PlatformFilter;

    .line 54
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformFilter;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformFilter;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformFilter;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformFilter;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformFilter;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_PlatformFilter;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
