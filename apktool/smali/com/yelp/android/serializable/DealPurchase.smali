.class public Lcom/yelp/android/serializable/DealPurchase;
.super Lcom/yelp/android/serializable/_DealPurchase;
.source "DealPurchase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/DealPurchase;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/yelp/android/serializable/DealPurchase;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/yelp/android/serializable/DealPurchase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/yelp/android/serializable/DealPurchase$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/DealPurchase$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/DealPurchase;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    .line 136
    new-instance v0, Lcom/yelp/android/serializable/DealPurchase$2;

    invoke-direct {v0}, Lcom/yelp/android/serializable/DealPurchase$2;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/DealPurchase;->a:Ljava/util/Comparator;

    .line 150
    new-instance v0, Lcom/yelp/android/serializable/DealPurchase$3;

    invoke-direct {v0}, Lcom/yelp/android/serializable/DealPurchase$3;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/DealPurchase;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yelp/android/serializable/_DealPurchase;-><init>()V

    .line 19
    return-void
.end method

.method private m()Z
    .locals 4

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/yelp/android/serializable/DealPurchase;->e()J

    move-result-wide v0

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpDeal;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/serializable/DealPurchase;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/yelp/android/serializable/DealPurchase;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/yelp/android/serializable/YelpDeal;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/YelpDealOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDealOption;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/DealPurchase;->i:Ljava/lang/String;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/DealPurchase;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p2, p1}, Lcom/yelp/android/serializable/YelpDeal;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/DealPurchase;->e:Ljava/lang/String;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/DealPurchase;->i:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->a()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->q()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_DealPurchase;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_DealPurchase;->a(Lorg/json/JSONObject;)V

    .line 40
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->b()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->q()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public c()Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/yelp/android/serializable/DealPurchase;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/yelp/android/serializable/DealPurchase;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_FULLPRICE:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    .line 76
    :goto_0
    return-object v0

    .line 73
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_EXPIRED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    goto :goto_0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/DealPurchase;->k:Z

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yelp/android/serializable/DealPurchase;->m:J

    .line 93
    return-void
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->describeContents()I

    move-result v0

    return v0
.end method

.method public e()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 106
    iget-wide v2, p0, Lcom/yelp/android/serializable/DealPurchase;->l:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/yelp/android/serializable/DealPurchase;->l:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 175
    if-ne p0, p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 179
    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 182
    goto :goto_0

    .line 184
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/DealPurchase;

    .line 185
    iget-object v2, p0, Lcom/yelp/android/serializable/DealPurchase;->c:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 186
    iget-object v2, p1, Lcom/yelp/android/serializable/DealPurchase;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 187
    goto :goto_0

    .line 189
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/DealPurchase;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/DealPurchase;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 190
    goto :goto_0
.end method

.method public f()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 110
    iget-wide v2, p0, Lcom/yelp/android/serializable/DealPurchase;->m:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/yelp/android/serializable/DealPurchase;->m:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public bridge synthetic g()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->g()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->h()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 167
    .line 169
    iget-object v0, p0, Lcom/yelp/android/serializable/DealPurchase;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 170
    return v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/DealPurchase;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_DealPurchase;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
