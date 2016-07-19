.class public Lcom/yelp/android/serializable/YelpDealOption;
.super Lcom/yelp/android/serializable/_YelpDealOption;
.source "YelpDealOption.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/YelpDealOption;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    new-instance v0, Ljava/math/BigDecimal;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    sput-object v0, Lcom/yelp/android/serializable/YelpDealOption;->h:Ljava/math/BigDecimal;

    .line 43
    new-instance v0, Lcom/yelp/android/serializable/YelpDealOption$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpDealOption$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpDealOption;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpDealOption;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Currency;Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/yelp/android/serializable/YelpDealOption;->h:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Currency;->getDefaultFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    if-gez v1, :cond_1

    .line 27
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v0

    .line 32
    :cond_0
    :goto_0
    return-object v0

    .line 28
    :cond_1
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    if-lez v1, :cond_0

    .line 30
    invoke-virtual {p0}, Ljava/util/Currency;->getDefaultFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/Currency;)Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDealOption;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yelp/android/serializable/YelpDealOption;->a(Ljava/util/Currency;Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDealOption;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpDealOption;->a(Landroid/os/Parcel;)V

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
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpDealOption;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic b()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDealOption;->b()I

    move-result v0

    return v0
.end method

.method public b(Ljava/util/Currency;)Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDealOption;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yelp/android/serializable/YelpDealOption;->a(Ljava/util/Currency;Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDealOption;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDealOption;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDealOption;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDealOption;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpDealOption;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDealOption;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDealOption;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDealOption;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_YelpDealOption;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
