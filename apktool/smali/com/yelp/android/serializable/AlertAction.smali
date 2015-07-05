.class public Lcom/yelp/android/serializable/AlertAction;
.super Lcom/yelp/android/serializable/_AlertAction;
.source "AlertAction.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/AlertAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/yelp/android/serializable/b;

    invoke-direct {v0}, Lcom/yelp/android/serializable/b;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/AlertAction;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/_AlertAction;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/yelp/android/serializable/AlertAction;Z)Z
    .locals 0

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/yelp/android/serializable/AlertAction;->mDisabled:Z

    return p1
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AlertAction;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getActedLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AlertAction;->getActedLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AlertAction;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AlertAction;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/yelp/android/serializable/AlertAction;->mDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/AlertAction;->mPath:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_AlertAction;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_AlertAction;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setDisabled(Z)V
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/yelp/android/serializable/AlertAction;->mDisabled:Z

    .line 16
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/yelp/android/serializable/AlertAction;->mPath:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AlertAction;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_AlertAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/AlertAction;->mDisabled:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 34
    return-void
.end method
