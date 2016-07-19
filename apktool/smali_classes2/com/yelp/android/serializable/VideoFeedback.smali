.class public Lcom/yelp/android/serializable/VideoFeedback;
.super Lcom/yelp/android/serializable/_VideoFeedback;
.source "VideoFeedback.java"

# interfaces
.implements Lcom/yelp/android/serializable/DisplayableAsUserBadge$DisplayableAsUserBadgeWithTimeAgo;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/VideoFeedback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/yelp/android/serializable/VideoFeedback$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/VideoFeedback$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/VideoFeedback;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/serializable/_VideoFeedback;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/yelp/android/serializable/VideoFeedback;->k()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_VideoFeedback;->a(Landroid/os/Parcel;)V

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
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_VideoFeedback;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/yelp/android/serializable/VideoFeedback;->k()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_VideoFeedback;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_VideoFeedback;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_VideoFeedback;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/serializable/VideoFeedback;->k()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/util/Date;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/serializable/VideoFeedback;->l()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public j_()I
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/yelp/android/serializable/VideoFeedback;->k()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->j_()I

    move-result v0

    return v0
.end method

.method public bridge synthetic k()Lcom/yelp/android/serializable/Passport;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_VideoFeedback;->k()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    return-object v0
.end method

.method public k_()I
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/yelp/android/serializable/VideoFeedback;->k()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->k_()I

    move-result v0

    return v0
.end method

.method public bridge synthetic l()Ljava/util/Date;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_VideoFeedback;->l()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public l_()I
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/serializable/VideoFeedback;->k()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->l_()I

    move-result v0

    return v0
.end method

.method public m_()I
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/yelp/android/serializable/VideoFeedback;->k()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->m_()I

    move-result v0

    return v0
.end method

.method public n_()I
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/serializable/VideoFeedback;->k()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->n_()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_VideoFeedback;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
