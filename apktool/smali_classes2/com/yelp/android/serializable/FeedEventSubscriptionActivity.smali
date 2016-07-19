.class public Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;
.super Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;
.source "FeedEventSubscriptionActivity.java"

# interfaces
.implements Lcom/yelp/android/serializable/SingleFeedActivity;
.implements Ljava/lang/Comparable;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->a()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->a(Landroid/os/Parcel;)V

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
    .line 20
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->a(Lorg/json/JSONObject;)V

    .line 21
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;->a:Lcom/yelp/android/serializable/Event;

    iget-object v1, p0, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;->e:Lcom/yelp/android/serializable/User;

    iput-object v1, v0, Lcom/yelp/android/serializable/Event;->v:Lcom/yelp/android/serializable/User;

    .line 22
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;->a:Lcom/yelp/android/serializable/Event;

    iget-object v1, p0, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;->f:Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v1, v0, Lcom/yelp/android/serializable/Event;->w:Lcom/yelp/android/serializable/YelpBusiness;

    .line 23
    return-void
.end method

.method public bridge synthetic b()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->c()Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 27
    check-cast p1, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->statusFromString(Ljava/lang/String;)Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->statusFromString(Ljava/lang/String;)Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
