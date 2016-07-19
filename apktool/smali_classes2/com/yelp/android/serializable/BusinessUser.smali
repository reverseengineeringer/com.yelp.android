.class public Lcom/yelp/android/serializable/BusinessUser;
.super Lcom/yelp/android/serializable/_BusinessUser;
.source "BusinessUser.java"

# interfaces
.implements Lcom/yelp/android/serializable/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/BusinessUser$Role;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/BusinessUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/yelp/android/serializable/BusinessUser$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/BusinessUser$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/BusinessUser;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yelp/android/serializable/_BusinessUser;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 52
    invoke-static {}, Lcom/yelp/android/serializable/BusinessUser$Role;->values()[Lcom/yelp/android/serializable/BusinessUser$Role;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 53
    iget-object v4, v3, Lcom/yelp/android/serializable/BusinessUser$Role;->mKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/yelp/android/serializable/BusinessUser;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    iget v1, v3, Lcom/yelp/android/serializable/BusinessUser$Role;->mResourceId:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_1
    return-object v0

    .line 52
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/BusinessUser$Role;->EMPLOYEE:Lcom/yelp/android/serializable/BusinessUser$Role;

    iget v1, v1, Lcom/yelp/android/serializable/BusinessUser$Role;->mResourceId:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_BusinessUser;->a(Landroid/os/Parcel;)V

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
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_BusinessUser;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/yelp/android/serializable/BusinessUser;->h:Z

    .line 65
    return-void
.end method

.method public bridge synthetic b()Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessUser;->b()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessUser;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessUser;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessUser;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessUser;->e()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_BusinessUser;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessUser;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_BusinessUser;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
