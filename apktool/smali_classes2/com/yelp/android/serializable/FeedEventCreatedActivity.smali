.class public Lcom/yelp/android/serializable/FeedEventCreatedActivity;
.super Lcom/yelp/android/serializable/_FeedEventCreatedActivity;
.source "FeedEventCreatedActivity.java"

# interfaces
.implements Lcom/yelp/android/serializable/SingleFeedActivity;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/FeedEventCreatedActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/yelp/android/serializable/FeedEventCreatedActivity$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FeedEventCreatedActivity$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/FeedEventCreatedActivity;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yelp/android/serializable/_FeedEventCreatedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedEventCreatedActivity;->a()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FeedEventCreatedActivity;->a(Landroid/os/Parcel;)V

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
    .line 19
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FeedEventCreatedActivity;->a(Lorg/json/JSONObject;)V

    .line 20
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedEventCreatedActivity;->a:Lcom/yelp/android/serializable/Event;

    iget-object v1, p0, Lcom/yelp/android/serializable/FeedEventCreatedActivity;->b:Lcom/yelp/android/serializable/User;

    iput-object v1, v0, Lcom/yelp/android/serializable/Event;->v:Lcom/yelp/android/serializable/User;

    .line 21
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedEventCreatedActivity;->a:Lcom/yelp/android/serializable/Event;

    iget-object v1, p0, Lcom/yelp/android/serializable/FeedEventCreatedActivity;->c:Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v1, v0, Lcom/yelp/android/serializable/Event;->w:Lcom/yelp/android/serializable/YelpBusiness;

    .line 22
    return-void
.end method

.method public bridge synthetic b()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedEventCreatedActivity;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedEventCreatedActivity;->c()Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedEventCreatedActivity;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FeedEventCreatedActivity;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedEventCreatedActivity;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_FeedEventCreatedActivity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
