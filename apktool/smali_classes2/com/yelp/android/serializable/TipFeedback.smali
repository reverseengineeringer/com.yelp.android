.class public Lcom/yelp/android/serializable/TipFeedback;
.super Lcom/yelp/android/serializable/_TipFeedback;
.source "TipFeedback.java"

# interfaces
.implements Lcom/yelp/android/serializable/DisplayableAsUserBadge$DisplayableAsUserBadgeWithTimeAgo;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/TipFeedback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/yelp/android/serializable/TipFeedback$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/TipFeedback$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/TipFeedback;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/serializable/_TipFeedback;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/appdata/webrequests/co;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 21
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {p2}, Lcom/yelp/android/serializable/Passport;->a(Lcom/yelp/android/appdata/webrequests/co;)Lcom/yelp/android/serializable/Passport;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->e()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/serializable/_TipFeedback;-><init>(Ljava/util/Date;Lcom/yelp/android/serializable/Passport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedback;->k()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_TipFeedback;->a(Landroid/os/Parcel;)V

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
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_TipFeedback;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedback;->k()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_TipFeedback;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_TipFeedback;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_TipFeedback;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedback;->k()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/util/Date;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedback;->l()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public j_()I
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedback;->k()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->j_()I

    move-result v0

    return v0
.end method

.method public bridge synthetic k()Lcom/yelp/android/serializable/Passport;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_TipFeedback;->k()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    return-object v0
.end method

.method public k_()I
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedback;->k()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->k_()I

    move-result v0

    return v0
.end method

.method public bridge synthetic l()Ljava/util/Date;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_TipFeedback;->l()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public l_()I
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedback;->k()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->l_()I

    move-result v0

    return v0
.end method

.method public m_()I
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedback;->k()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->m_()I

    move-result v0

    return v0
.end method

.method public n_()I
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedback;->k()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->n_()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_TipFeedback;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
