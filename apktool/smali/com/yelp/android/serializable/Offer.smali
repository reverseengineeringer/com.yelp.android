.class public Lcom/yelp/android/serializable/Offer;
.super Lcom/yelp/android/serializable/_Offer;
.source "Offer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/Offer$a;,
        Lcom/yelp/android/serializable/Offer$OfferState;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/a",
            "<",
            "Lcom/yelp/android/serializable/Offer;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/yelp/android/serializable/Offer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private k:Landroid/text/Spanned;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/yelp/android/serializable/Offer$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Offer$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Offer;->CREATOR:Lcom/yelp/android/serializable/a;

    .line 210
    new-instance v0, Lcom/yelp/android/serializable/Offer$2;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Offer$2;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Offer;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Offer;-><init>()V

    .line 150
    return-void
.end method


# virtual methods
.method public a()Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/serializable/Offer;->k:Landroid/text/Spanned;

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Offer;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Offer;->k:Landroid/text/Spanned;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Offer;->k:Landroid/text/Spanned;

    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Offer;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Offer$OfferState;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/yelp/android/serializable/Offer;->e:Lcom/yelp/android/serializable/Offer$OfferState;

    .line 112
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
    .line 91
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Offer;->a(Lorg/json/JSONObject;)V

    .line 92
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/Offer$OfferState;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Offer$OfferState;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Offer;->e:Lcom/yelp/android/serializable/Offer$OfferState;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yelp/android/serializable/Offer;->e:Lcom/yelp/android/serializable/Offer$OfferState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yelp/android/serializable/Offer;->e:Lcom/yelp/android/serializable/Offer$OfferState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/serializable/Offer;->e:Lcom/yelp/android/serializable/Offer$OfferState;

    sget-object v1, Lcom/yelp/android/serializable/Offer$OfferState;->EARNED:Lcom/yelp/android/serializable/Offer$OfferState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/Offer;->e:Lcom/yelp/android/serializable/Offer$OfferState;

    sget-object v1, Lcom/yelp/android/serializable/Offer$OfferState;->REDEEMED:Lcom/yelp/android/serializable/Offer$OfferState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 129
    iget-object v1, p0, Lcom/yelp/android/serializable/Offer;->d:Lcom/yelp/android/serializable/OfferRedemption;

    if-nez v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/Offer;->e:Lcom/yelp/android/serializable/Offer$OfferState;

    sget-object v2, Lcom/yelp/android/serializable/Offer$OfferState;->REMOVED:Lcom/yelp/android/serializable/Offer$OfferState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/yelp/android/serializable/Offer;->d:Lcom/yelp/android/serializable/OfferRedemption;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/OfferRedemption;->i()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->describeContents()I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 140
    iget-object v1, p0, Lcom/yelp/android/serializable/Offer;->d:Lcom/yelp/android/serializable/OfferRedemption;

    if-nez v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/Offer;->e:Lcom/yelp/android/serializable/Offer$OfferState;

    sget-object v2, Lcom/yelp/android/serializable/Offer$OfferState;->REMOVED:Lcom/yelp/android/serializable/Offer$OfferState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/yelp/android/serializable/Offer;->d:Lcom/yelp/android/serializable/OfferRedemption;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/OfferRedemption;->i()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/serializable/Offer;->d:Lcom/yelp/android/serializable/OfferRedemption;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/OfferRedemption;->c()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/yelp/android/serializable/Offer;->d:Lcom/yelp/android/serializable/OfferRedemption;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/OfferRedemption;->a()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Offer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->f()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->g()I

    move-result v0

    return v0
.end method

.method public bridge synthetic h()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->h()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Lcom/yelp/android/serializable/Offer$OfferState;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->l()Lcom/yelp/android/serializable/Offer$OfferState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Lcom/yelp/android/serializable/OfferRedemption;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Offer;->m()Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Offer;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
