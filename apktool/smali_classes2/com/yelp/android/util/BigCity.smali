.class public final enum Lcom/yelp/android/util/BigCity;
.super Ljava/lang/Enum;
.source "BigCity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/util/BigCity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/util/BigCity;

.field public static final enum AUSTIN_TX:Lcom/yelp/android/util/BigCity;

.field public static final enum BOSTON_MA:Lcom/yelp/android/util/BigCity;

.field public static final enum CHICAGO_IL:Lcom/yelp/android/util/BigCity;

.field public static final enum DC:Lcom/yelp/android/util/BigCity;

.field public static final enum NYC_NY:Lcom/yelp/android/util/BigCity;

.field public static final enum PHILIDELPHIA_PA:Lcom/yelp/android/util/BigCity;

.field public static final enum PORTLAND_OR:Lcom/yelp/android/util/BigCity;

.field public static final enum SAN_DIEGO_CA:Lcom/yelp/android/util/BigCity;

.field public static final enum SAN_FRANCISCO_CA:Lcom/yelp/android/util/BigCity;

.field public static final enum SEATTLE_WA:Lcom/yelp/android/util/BigCity;


# instance fields
.field private final centerPoint:Landroid/location/Location;

.field private radius:D


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 6
    new-instance v1, Lcom/yelp/android/util/BigCity;

    const-string/jumbo v2, "PHILIDELPHIA_PA"

    const/4 v3, 0x0

    const-wide v4, 0x4043f9e26916440fL    # 39.952222

    const-wide v6, 0x4052ca81b64e0547L    # 75.164167

    const/high16 v8, 0x41700000    # 15.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/util/BigCity;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/util/BigCity;->PHILIDELPHIA_PA:Lcom/yelp/android/util/BigCity;

    .line 7
    new-instance v1, Lcom/yelp/android/util/BigCity;

    const-string/jumbo v2, "NYC_NY"

    const/4 v3, 0x1

    const-wide v4, 0x40445b6c3760bf5dL    # 40.71424

    const-wide v6, -0x3fad7f96d0917d6bL    # -74.00642

    const/high16 v8, 0x42700000    # 60.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/util/BigCity;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/util/BigCity;->NYC_NY:Lcom/yelp/android/util/BigCity;

    .line 8
    new-instance v1, Lcom/yelp/android/util/BigCity;

    const-string/jumbo v2, "SAN_FRANCISCO_CA"

    const/4 v3, 0x2

    const-wide v4, 0x4042e33387160957L    # 37.77501

    const-wide v6, -0x3fa1653b3a68b19aL    # -122.41826

    const/high16 v8, 0x41700000    # 15.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/util/BigCity;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/util/BigCity;->SAN_FRANCISCO_CA:Lcom/yelp/android/util/BigCity;

    .line 9
    new-instance v1, Lcom/yelp/android/util/BigCity;

    const-string/jumbo v2, "CHICAGO_IL"

    const/4 v3, 0x3

    const-wide v4, 0x4044eccccccccccdL    # 41.85

    const-wide v6, -0x3faa166666666666L    # -87.65

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/util/BigCity;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/util/BigCity;->CHICAGO_IL:Lcom/yelp/android/util/BigCity;

    .line 10
    new-instance v1, Lcom/yelp/android/util/BigCity;

    const-string/jumbo v2, "BOSTON_MA"

    const/4 v3, 0x4

    const-wide v4, 0x40452ddddb1209eeL    # 42.358333

    const-wide v6, -0x3fae3c2467be553bL    # -71.060278

    const/high16 v8, 0x41700000    # 15.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/util/BigCity;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/util/BigCity;->BOSTON_MA:Lcom/yelp/android/util/BigCity;

    .line 11
    new-instance v1, Lcom/yelp/android/util/BigCity;

    const-string/jumbo v2, "SEATTLE_WA"

    const/4 v3, 0x5

    const-wide v4, 0x4047cd9e279dd3bbL    # 47.606389

    const-wide v6, -0x3fa16ad3a1d323ffL    # -122.330833

    const/high16 v8, 0x41700000    # 15.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/util/BigCity;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/util/BigCity;->SEATTLE_WA:Lcom/yelp/android/util/BigCity;

    .line 12
    new-instance v1, Lcom/yelp/android/util/BigCity;

    const-string/jumbo v2, "DC"

    const/4 v3, 0x6

    const-wide v4, 0x4043728f5c28f5c3L    # 38.895

    const-wide v6, -0x3facbda73f748a16L    # -77.036667

    const/high16 v8, 0x41700000    # 15.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/util/BigCity;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/util/BigCity;->DC:Lcom/yelp/android/util/BigCity;

    .line 13
    new-instance v1, Lcom/yelp/android/util/BigCity;

    const-string/jumbo v2, "SAN_DIEGO_CA"

    const/4 v3, 0x7

    const-wide v4, 0x40405becaab8a5ceL    # 32.71816

    const-wide v6, -0x3fa2b55989df1173L    # -117.16641

    const/high16 v8, 0x41700000    # 15.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/util/BigCity;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/util/BigCity;->SAN_DIEGO_CA:Lcom/yelp/android/util/BigCity;

    .line 14
    new-instance v1, Lcom/yelp/android/util/BigCity;

    const-string/jumbo v2, "AUSTIN_TX"

    const/16 v3, 0x8

    const-wide v4, 0x403e44567125dd09L    # 30.266944

    const-wide v6, -0x3fa79076534373f3L    # -97.742778

    const/high16 v8, 0x40400000    # 3.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/util/BigCity;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/util/BigCity;->AUSTIN_TX:Lcom/yelp/android/util/BigCity;

    .line 15
    new-instance v1, Lcom/yelp/android/util/BigCity;

    const-string/jumbo v2, "PORTLAND_OR"

    const/16 v3, 0x9

    const-wide v4, 0x4046c3242070b8d0L    # 45.52454

    const-wide v6, -0x3fa155018e757929L    # -122.67178

    const/high16 v8, 0x41700000    # 15.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/util/BigCity;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/util/BigCity;->PORTLAND_OR:Lcom/yelp/android/util/BigCity;

    .line 5
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/yelp/android/util/BigCity;

    const/4 v1, 0x0

    sget-object v2, Lcom/yelp/android/util/BigCity;->PHILIDELPHIA_PA:Lcom/yelp/android/util/BigCity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/yelp/android/util/BigCity;->NYC_NY:Lcom/yelp/android/util/BigCity;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/yelp/android/util/BigCity;->SAN_FRANCISCO_CA:Lcom/yelp/android/util/BigCity;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/yelp/android/util/BigCity;->CHICAGO_IL:Lcom/yelp/android/util/BigCity;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/yelp/android/util/BigCity;->BOSTON_MA:Lcom/yelp/android/util/BigCity;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/util/BigCity;->SEATTLE_WA:Lcom/yelp/android/util/BigCity;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/util/BigCity;->DC:Lcom/yelp/android/util/BigCity;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/util/BigCity;->SAN_DIEGO_CA:Lcom/yelp/android/util/BigCity;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/util/BigCity;->AUSTIN_TX:Lcom/yelp/android/util/BigCity;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/util/BigCity;->PORTLAND_OR:Lcom/yelp/android/util/BigCity;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/util/BigCity;->$VALUES:[Lcom/yelp/android/util/BigCity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IDDF)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDF)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v1, "Custom"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/util/BigCity;->centerPoint:Landroid/location/Location;

    .line 40
    iget-object v0, p0, Lcom/yelp/android/util/BigCity;->centerPoint:Landroid/location/Location;

    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLatitude(D)V

    .line 41
    iget-object v0, p0, Lcom/yelp/android/util/BigCity;->centerPoint:Landroid/location/Location;

    invoke-virtual {v0, p5, p6}, Landroid/location/Location;->setLongitude(D)V

    .line 42
    float-to-double v0, p7

    invoke-static {v0, v1}, Lcom/yelp/android/util/i;->a(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/util/BigCity;->radius:D

    .line 43
    return-void
.end method

.method public static isBigCity(Landroid/location/Location;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 24
    if-nez p0, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v0

    .line 27
    :cond_1
    invoke-static {}, Lcom/yelp/android/util/BigCity;->values()[Lcom/yelp/android/util/BigCity;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 28
    invoke-virtual {v4, p0}, Lcom/yelp/android/util/BigCity;->containsWithinRadius(Landroid/location/Location;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 29
    const/4 v0, 0x1

    goto :goto_0

    .line 27
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/util/BigCity;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/yelp/android/util/BigCity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/BigCity;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/util/BigCity;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/yelp/android/util/BigCity;->$VALUES:[Lcom/yelp/android/util/BigCity;

    invoke-virtual {v0}, [Lcom/yelp/android/util/BigCity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/util/BigCity;

    return-object v0
.end method


# virtual methods
.method public containsWithinRadius(Landroid/location/Location;)Z
    .locals 8

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/yelp/android/util/BigCity;->centerPoint:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iget-object v6, p0, Lcom/yelp/android/util/BigCity;->centerPoint:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/yelp/android/util/i;->a(DDDD)D

    move-result-wide v0

    .line 52
    iget-wide v2, p0, Lcom/yelp/android/util/BigCity;->radius:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
