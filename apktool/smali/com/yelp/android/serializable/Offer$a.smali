.class public final Lcom/yelp/android/serializable/Offer$a;
.super Ljava/lang/Object;
.source "Offer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Offer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/yelp/android/serializable/Offer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/yelp/android/serializable/Offer$a;->a:Landroid/location/Location;

    .line 155
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/Offer;)D
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Offer;->h()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/Offer$a;->a:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusiness;->a(Landroid/location/Location;)D

    move-result-wide v0

    .line 160
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Offer;->h()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->p()Z

    move-result v2

    if-nez v2, :cond_1

    .line 161
    :cond_0
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 163
    :cond_1
    return-wide v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Offer;Lcom/yelp/android/serializable/Offer;)I
    .locals 5

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/Offer$a;->a(Lcom/yelp/android/serializable/Offer;)D

    move-result-wide v0

    .line 169
    invoke-direct {p0, p2}, Lcom/yelp/android/serializable/Offer$a;->a(Lcom/yelp/android/serializable/Offer;)D

    move-result-wide v2

    .line 171
    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 172
    const/4 v0, -0x1

    .line 176
    :goto_0
    return v0

    .line 173
    :cond_0
    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 174
    const/4 v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Offer;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Offer;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 150
    check-cast p1, Lcom/yelp/android/serializable/Offer;

    check-cast p2, Lcom/yelp/android/serializable/Offer;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/serializable/Offer$a;->a(Lcom/yelp/android/serializable/Offer;Lcom/yelp/android/serializable/Offer;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    if-ne p0, p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 193
    goto :goto_0

    .line 195
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/Offer$a;

    if-nez v2, :cond_3

    move v0, v1

    .line 196
    goto :goto_0

    .line 198
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/Offer$a;

    .line 199
    iget-object v2, p0, Lcom/yelp/android/serializable/Offer$a;->a:Landroid/location/Location;

    if-nez v2, :cond_4

    .line 200
    iget-object v2, p1, Lcom/yelp/android/serializable/Offer$a;->a:Landroid/location/Location;

    if-eqz v2, :cond_0

    move v0, v1

    .line 201
    goto :goto_0

    .line 203
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/Offer$a;->a:Landroid/location/Location;

    iget-object v3, p1, Lcom/yelp/android/serializable/Offer$a;->a:Landroid/location/Location;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 204
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 181
    .line 183
    iget-object v0, p0, Lcom/yelp/android/serializable/Offer$a;->a:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 184
    return v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Offer$a;->a:Landroid/location/Location;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
