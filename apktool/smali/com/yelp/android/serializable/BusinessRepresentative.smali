.class public Lcom/yelp/android/serializable/BusinessRepresentative;
.super Lcom/yelp/android/serializable/_BusinessRepresentative;
.source "BusinessRepresentative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/BusinessRepresentative$Role;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/BusinessRepresentative;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/yelp/android/serializable/BusinessRepresentative$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/BusinessRepresentative$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/BusinessRepresentative;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yelp/android/serializable/_BusinessRepresentative;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/BusinessRepresentative$Role;
    .locals 2

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessRepresentative;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "business_owner"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/yelp/android/serializable/BusinessRepresentative$Role;->BUSINESS_OWNER:Lcom/yelp/android/serializable/BusinessRepresentative$Role;

    .line 22
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/BusinessRepresentative$Role;->MANAGER:Lcom/yelp/android/serializable/BusinessRepresentative$Role;

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_BusinessRepresentative;->a(Landroid/os/Parcel;)V

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
    .line 11
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_BusinessRepresentative;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Don\'t parse these strings yourself, use getRole() instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic c()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessRepresentative;->c()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessRepresentative;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessRepresentative;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessRepresentative;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_BusinessRepresentative;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessRepresentative;->f()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessRepresentative;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_BusinessRepresentative;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
