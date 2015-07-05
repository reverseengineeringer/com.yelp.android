.class public final enum Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;
.super Ljava/lang/Enum;
.source "AdapterNearbyFilters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

.field public static final enum Delivery:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

.field public static final enum FreeWifi:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

.field public static final enum FullBar:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

.field public static final enum GoodForGroups:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

.field public static final enum OutdoorSeating:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

.field public static final enum Parking:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

.field public static final enum TakesCredit:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;


# instance fields
.field public final mDisplayRes:I

.field public final mTokenName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 231
    new-instance v0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    const-string/jumbo v1, "FreeWifi"

    const v2, 0x7f070298

    const-string/jumbo v3, "WiFi.free"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->FreeWifi:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    .line 232
    new-instance v0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    const-string/jumbo v1, "OutdoorSeating"

    const v2, 0x7f070450

    const-string/jumbo v3, "OutdoorSeating"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->OutdoorSeating:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    .line 233
    new-instance v0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    const-string/jumbo v1, "Delivery"

    const v2, 0x7f0701fd

    const-string/jumbo v3, "RestaurantsDelivery"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->Delivery:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    .line 234
    new-instance v0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    const-string/jumbo v1, "TakesCredit"

    const v2, 0x7f0701e2

    const-string/jumbo v3, "BusinessAcceptsCreditCards"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->TakesCredit:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    .line 235
    new-instance v0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    const-string/jumbo v1, "FullBar"

    const v2, 0x7f0702b4

    const-string/jumbo v3, "Alcohol.full_bar"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->FullBar:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    .line 236
    new-instance v0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    const-string/jumbo v1, "GoodForGroups"

    const/4 v2, 0x5

    const v3, 0x7f0702c4

    const-string/jumbo v4, "RestaurantsGoodForGroups"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->GoodForGroups:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    .line 237
    new-instance v0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    const-string/jumbo v1, "Parking"

    const/4 v2, 0x6

    const v3, 0x7f070454

    const-string/jumbo v4, "Parking"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->Parking:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    .line 230
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    sget-object v1, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->FreeWifi:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->OutdoorSeating:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->Delivery:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->TakesCredit:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->FullBar:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->GoodForGroups:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->Parking:Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->$VALUES:[Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 251
    iput p3, p0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->mDisplayRes:I

    .line 252
    iput-object p4, p0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->mTokenName:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;
    .locals 1

    .prologue
    .line 230
    const-class v0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->$VALUES:[Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    invoke-virtual {v0}, [Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->mTokenName:Ljava/lang/String;

    return-object v0
.end method
