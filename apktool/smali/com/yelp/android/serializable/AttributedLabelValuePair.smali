.class public Lcom/yelp/android/serializable/AttributedLabelValuePair;
.super Lcom/yelp/android/serializable/_AttributedLabelValuePair;
.source "AttributedLabelValuePair.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/AttributedLabelValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/yelp/android/serializable/AttributedLabelValuePair$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/AttributedLabelValuePair$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/AttributedLabelValuePair;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/_AttributedLabelValuePair;-><init>()V

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
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->a(Landroid/os/Parcel;)V

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
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_AttributedLabelValuePair;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
