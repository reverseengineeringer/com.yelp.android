.class public Lcom/yelp/android/serializable/CachedSearch;
.super Lcom/yelp/android/serializable/_CachedSearch;
.source "CachedSearch.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/CachedSearch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/yelp/android/serializable/CachedSearch$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/CachedSearch$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/CachedSearch;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/yelp/android/serializable/_CachedSearch;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/serializable/CachedSearch$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/serializable/CachedSearch;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/Filter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/serializable/_CachedSearch;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/yelp/android/serializable/CachedSearch;->a:Lcom/yelp/android/serializable/Filter;

    .line 25
    iput-object p2, p0, Lcom/yelp/android/serializable/CachedSearch;->b:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/yelp/android/serializable/CachedSearch;->c:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/yelp/android/serializable/CachedSearch;->d:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/yelp/android/serializable/CachedSearch;->e:Ljava/lang/String;

    .line 29
    iput p6, p0, Lcom/yelp/android/serializable/CachedSearch;->f:I

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_CachedSearch;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_CachedSearch;->a(Landroid/os/Parcel;)V

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
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_CachedSearch;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic b()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_CachedSearch;->b()I

    move-result v0

    return v0
.end method

.method public bridge synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_CachedSearch;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_CachedSearch;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_CachedSearch;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_CachedSearch;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_CachedSearch;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_CachedSearch;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Lcom/yelp/android/serializable/Filter;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_CachedSearch;->g()Lcom/yelp/android/serializable/Filter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_CachedSearch;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_CachedSearch;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
