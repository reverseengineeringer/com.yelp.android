.class public Lcom/yelp/android/serializable/PlatformGenericSearchFilter;
.super Lcom/yelp/android/serializable/GenericSearchFilter;
.source "PlatformGenericSearchFilter.java"


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/a",
            "<",
            "Lcom/yelp/android/serializable/PlatformGenericSearchFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Lcom/yelp/android/serializable/PlatformFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/yelp/android/serializable/PlatformGenericSearchFilter$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->CREATOR:Lcom/yelp/android/serializable/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/android/serializable/GenericSearchFilter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/PlatformFilter;Z)V
    .locals 2

    .prologue
    .line 22
    const-string/jumbo v0, "platform_filter"

    sget-object v1, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Platform:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    invoke-direct {p0, v0, v1, p2}, Lcom/yelp/android/serializable/GenericSearchFilter;-><init>(Ljava/lang/String;Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;Z)V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->e:Lcom/yelp/android/serializable/PlatformFilter;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/serializable/PlatformGenericSearchFilter$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/GenericSearchFilter;->a(Landroid/os/Parcel;)V

    .line 54
    const-class v0, Lcom/yelp/android/serializable/PlatformFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformFilter;

    iput-object v0, p0, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->e:Lcom/yelp/android/serializable/PlatformFilter;

    .line 55
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/GenericSearchFilter;->a(Lorg/json/JSONObject;)V

    .line 31
    const-string/jumbo v0, "params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    sget-object v0, Lcom/yelp/android/serializable/PlatformFilter;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "params"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformFilter;

    iput-object v0, p0, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->e:Lcom/yelp/android/serializable/PlatformFilter;

    .line 34
    :cond_0
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0}, Lcom/yelp/android/serializable/GenericSearchFilter;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->e:Lcom/yelp/android/serializable/PlatformFilter;

    if-eqz v1, :cond_0

    .line 40
    const-string/jumbo v1, "params"

    iget-object v2, p0, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->e:Lcom/yelp/android/serializable/PlatformFilter;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PlatformFilter;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    if-ne p0, p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 63
    goto :goto_0

    .line 65
    :cond_3
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/GenericSearchFilter;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 66
    goto :goto_0

    .line 69
    :cond_4
    check-cast p1, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;

    .line 71
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->f()Lcom/yelp/android/serializable/PlatformFilter;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->f()Lcom/yelp/android/serializable/PlatformFilter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->f()Lcom/yelp/android/serializable/PlatformFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/PlatformFilter;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->f()Lcom/yelp/android/serializable/PlatformFilter;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_0
.end method

.method public f()Lcom/yelp/android/serializable/PlatformFilter;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->e:Lcom/yelp/android/serializable/PlatformFilter;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/yelp/android/serializable/GenericSearchFilter;->hashCode()I

    move-result v0

    .line 79
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->f()Lcom/yelp/android/serializable/PlatformFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->f()Lcom/yelp/android/serializable/PlatformFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformFilter;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 80
    return v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/GenericSearchFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 48
    iget-object v0, p0, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->e:Lcom/yelp/android/serializable/PlatformFilter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 49
    return-void
.end method
