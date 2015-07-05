.class public final enum Lcom/yelp/android/appdata/LocationService$Recentness;
.super Ljava/lang/Enum;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/LocationService$Recentness;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/LocationService$Recentness;

.field public static final enum DAY:Lcom/yelp/android/appdata/LocationService$Recentness;

.field public static final enum HOUR:Lcom/yelp/android/appdata/LocationService$Recentness;

.field public static final enum MINUTE:Lcom/yelp/android/appdata/LocationService$Recentness;

.field public static final enum MINUTE_15:Lcom/yelp/android/appdata/LocationService$Recentness;


# instance fields
.field private final secs:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    new-instance v0, Lcom/yelp/android/appdata/LocationService$Recentness;

    const-string/jumbo v1, "MINUTE"

    const-wide/16 v2, 0x3c

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/yelp/android/appdata/LocationService$Recentness;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE:Lcom/yelp/android/appdata/LocationService$Recentness;

    new-instance v0, Lcom/yelp/android/appdata/LocationService$Recentness;

    const-string/jumbo v1, "MINUTE_15"

    const-wide/16 v2, 0x384

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/yelp/android/appdata/LocationService$Recentness;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE_15:Lcom/yelp/android/appdata/LocationService$Recentness;

    new-instance v0, Lcom/yelp/android/appdata/LocationService$Recentness;

    const-string/jumbo v1, "HOUR"

    const-wide/16 v2, 0xe10

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/yelp/android/appdata/LocationService$Recentness;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/yelp/android/appdata/LocationService$Recentness;->HOUR:Lcom/yelp/android/appdata/LocationService$Recentness;

    new-instance v0, Lcom/yelp/android/appdata/LocationService$Recentness;

    const-string/jumbo v1, "DAY"

    const-wide/32 v2, 0x15180

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/yelp/android/appdata/LocationService$Recentness;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/yelp/android/appdata/LocationService$Recentness;->DAY:Lcom/yelp/android/appdata/LocationService$Recentness;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v1, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE:Lcom/yelp/android/appdata/LocationService$Recentness;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE_15:Lcom/yelp/android/appdata/LocationService$Recentness;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/appdata/LocationService$Recentness;->HOUR:Lcom/yelp/android/appdata/LocationService$Recentness;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/appdata/LocationService$Recentness;->DAY:Lcom/yelp/android/appdata/LocationService$Recentness;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yelp/android/appdata/LocationService$Recentness;->$VALUES:[Lcom/yelp/android/appdata/LocationService$Recentness;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-wide p3, p0, Lcom/yelp/android/appdata/LocationService$Recentness;->secs:J

    .line 46
    return-void
.end method

.method static getOldness(J)J
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/LocationService$Recentness;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/yelp/android/appdata/LocationService$Recentness;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/LocationService$Recentness;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/LocationService$Recentness;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/yelp/android/appdata/LocationService$Recentness;->$VALUES:[Lcom/yelp/android/appdata/LocationService$Recentness;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/LocationService$Recentness;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/LocationService$Recentness;

    return-object v0
.end method


# virtual methods
.method public getMillis()J
    .locals 4

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/yelp/android/appdata/LocationService$Recentness;->secs:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public satisfies(Landroid/location/Location;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 55
    if-nez p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/appdata/LocationService$Recentness;->getMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/yelp/android/appdata/LocationService$Recentness;->getOldness(J)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
