.class public final enum Lcom/yelp/android/appdata/LocationService$AccuracyUnit;
.super Ljava/lang/Enum;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccuracyUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/LocationService$AccuracyUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

.field public static final enum METERS:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

.field public static final enum MILES:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    const-string/jumbo v1, "MILES"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->MILES:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    .line 78
    new-instance v0, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    const-string/jumbo v1, "METERS"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->METERS:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    sget-object v1, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->MILES:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->METERS:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->$VALUES:[Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/LocationService$AccuracyUnit;
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/LocationService$AccuracyUnit;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->$VALUES:[Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    return-object v0
.end method
