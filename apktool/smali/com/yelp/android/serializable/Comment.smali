.class public Lcom/yelp/android/serializable/Comment;
.super Lcom/yelp/android/serializable/_Comment;
.source "Comment.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/Comment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/yelp/android/serializable/z;

    invoke-direct {v0}, Lcom/yelp/android/serializable/z;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Comment;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Comment;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Lcom/yelp/android/serializable/User;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/yelp/android/serializable/_Comment;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/User;)V

    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_Comment;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDateUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_Comment;->getDateUpdated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_Comment;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_Comment;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUser()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_Comment;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Comment;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Comment;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_Comment;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Comment;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
