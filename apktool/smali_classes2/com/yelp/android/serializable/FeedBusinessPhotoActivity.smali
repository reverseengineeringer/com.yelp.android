.class public Lcom/yelp/android/serializable/FeedBusinessPhotoActivity;
.super Lcom/yelp/android/serializable/_FeedBusinessPhotoActivity;
.source "FeedBusinessPhotoActivity.java"

# interfaces
.implements Lcom/yelp/android/serializable/SingleFeedActivity;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/FeedBusinessPhotoActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/yelp/android/serializable/FeedBusinessPhotoActivity$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FeedBusinessPhotoActivity$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/FeedBusinessPhotoActivity;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yelp/android/serializable/_FeedBusinessPhotoActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FeedBusinessPhotoActivity;->a(Landroid/os/Parcel;)V

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
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FeedBusinessPhotoActivity;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic b()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedBusinessPhotoActivity;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedBusinessPhotoActivity;->c()Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedBusinessPhotoActivity;->d()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedBusinessPhotoActivity;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FeedBusinessPhotoActivity;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedBusinessPhotoActivity;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_FeedBusinessPhotoActivity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
