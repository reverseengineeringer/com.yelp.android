.class public final enum Lcom/yelp/android/util/StringUtils$Unit;
.super Ljava/lang/Enum;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/util/StringUtils$Unit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/util/StringUtils$Unit;

.field public static final enum FOOT:Lcom/yelp/android/util/StringUtils$Unit;

.field public static final enum KILOMETER:Lcom/yelp/android/util/StringUtils$Unit;

.field public static final enum METER:Lcom/yelp/android/util/StringUtils$Unit;

.field public static final enum MILE:Lcom/yelp/android/util/StringUtils$Unit;


# instance fields
.field private mMinPrecisionThreshold:I

.field private mNumberInAKilometer:D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 108
    new-instance v1, Lcom/yelp/android/util/StringUtils$Unit;

    const-string/jumbo v2, "KILOMETER"

    const/4 v3, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, -0x1

    invoke-direct/range {v1 .. v6}, Lcom/yelp/android/util/StringUtils$Unit;-><init>(Ljava/lang/String;IDI)V

    sput-object v1, Lcom/yelp/android/util/StringUtils$Unit;->KILOMETER:Lcom/yelp/android/util/StringUtils$Unit;

    .line 109
    new-instance v1, Lcom/yelp/android/util/StringUtils$Unit;

    const-string/jumbo v2, "MILE"

    const/4 v3, 0x1

    const-wide v4, 0x3fe3e245d6ab1d52L    # 0.62137119224

    const/4 v6, -0x2

    invoke-direct/range {v1 .. v6}, Lcom/yelp/android/util/StringUtils$Unit;-><init>(Ljava/lang/String;IDI)V

    sput-object v1, Lcom/yelp/android/util/StringUtils$Unit;->MILE:Lcom/yelp/android/util/StringUtils$Unit;

    .line 110
    new-instance v1, Lcom/yelp/android/util/StringUtils$Unit;

    const-string/jumbo v2, "METER"

    const/4 v3, 0x2

    const-wide v4, 0x408f400000000000L    # 1000.0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/yelp/android/util/StringUtils$Unit;-><init>(Ljava/lang/String;IDI)V

    sput-object v1, Lcom/yelp/android/util/StringUtils$Unit;->METER:Lcom/yelp/android/util/StringUtils$Unit;

    .line 111
    new-instance v1, Lcom/yelp/android/util/StringUtils$Unit;

    const-string/jumbo v2, "FOOT"

    const/4 v3, 0x3

    const-wide v4, 0x40a9a1ae06b7aa26L    # 3280.839895

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/yelp/android/util/StringUtils$Unit;-><init>(Ljava/lang/String;IDI)V

    sput-object v1, Lcom/yelp/android/util/StringUtils$Unit;->FOOT:Lcom/yelp/android/util/StringUtils$Unit;

    .line 106
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/util/StringUtils$Unit;

    const/4 v1, 0x0

    sget-object v2, Lcom/yelp/android/util/StringUtils$Unit;->KILOMETER:Lcom/yelp/android/util/StringUtils$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/yelp/android/util/StringUtils$Unit;->MILE:Lcom/yelp/android/util/StringUtils$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/yelp/android/util/StringUtils$Unit;->METER:Lcom/yelp/android/util/StringUtils$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/yelp/android/util/StringUtils$Unit;->FOOT:Lcom/yelp/android/util/StringUtils$Unit;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/util/StringUtils$Unit;->$VALUES:[Lcom/yelp/android/util/StringUtils$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IDI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DI)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput-wide p3, p0, Lcom/yelp/android/util/StringUtils$Unit;->mNumberInAKilometer:D

    .line 118
    iput p5, p0, Lcom/yelp/android/util/StringUtils$Unit;->mMinPrecisionThreshold:I

    .line 119
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/util/StringUtils$Unit;
    .locals 1

    .prologue
    .line 106
    const-class v0, Lcom/yelp/android/util/StringUtils$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/StringUtils$Unit;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/util/StringUtils$Unit;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/yelp/android/util/StringUtils$Unit;->$VALUES:[Lcom/yelp/android/util/StringUtils$Unit;

    invoke-virtual {v0}, [Lcom/yelp/android/util/StringUtils$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/util/StringUtils$Unit;

    return-object v0
.end method


# virtual methods
.method public convertFromKm(D)D
    .locals 3

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/yelp/android/util/StringUtils$Unit;->mNumberInAKilometer:D

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method public getLocationPrecision(D)I
    .locals 3

    .prologue
    .line 138
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 141
    invoke-static {p1, p2}, Lcom/yelp/android/util/o;->c(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/util/StringUtils$Unit;->convertFromKm(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 147
    iget v1, p0, Lcom/yelp/android/util/StringUtils$Unit;->mMinPrecisionThreshold:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/yelp/android/util/StringUtils$Unit;->mMinPrecisionThreshold:I

    goto :goto_0
.end method
