.class public final enum Lcom/yelp/android/appdata/LocationService$Accuracies;
.super Ljava/lang/Enum;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/LocationService$Accuracies;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/LocationService$Accuracies;

.field public static final enum COARSE:Lcom/yelp/android/appdata/LocationService$Accuracies;

.field public static final enum FINE:Lcom/yelp/android/appdata/LocationService$Accuracies;

.field public static final enum MEDIUM:Lcom/yelp/android/appdata/LocationService$Accuracies;

.field public static final enum MEDIUM_KM:Lcom/yelp/android/appdata/LocationService$Accuracies;

.field public static final enum UNKNOWN:Lcom/yelp/android/appdata/LocationService$Accuracies;


# instance fields
.field private final meters:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/yelp/android/appdata/LocationService$Accuracies;

    const-string/jumbo v1, "FINE"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/appdata/LocationService$Accuracies;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/appdata/LocationService$Accuracies;->FINE:Lcom/yelp/android/appdata/LocationService$Accuracies;

    new-instance v0, Lcom/yelp/android/appdata/LocationService$Accuracies;

    const-string/jumbo v1, "MEDIUM"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/appdata/LocationService$Accuracies;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    new-instance v0, Lcom/yelp/android/appdata/LocationService$Accuracies;

    const-string/jumbo v1, "MEDIUM_KM"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/appdata/LocationService$Accuracies;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM_KM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    new-instance v0, Lcom/yelp/android/appdata/LocationService$Accuracies;

    const-string/jumbo v1, "COARSE"

    const/16 v2, 0xbb8

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/appdata/LocationService$Accuracies;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/appdata/LocationService$Accuracies;->COARSE:Lcom/yelp/android/appdata/LocationService$Accuracies;

    new-instance v0, Lcom/yelp/android/appdata/LocationService$Accuracies;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/appdata/LocationService$Accuracies;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/appdata/LocationService$Accuracies;->UNKNOWN:Lcom/yelp/android/appdata/LocationService$Accuracies;

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v1, Lcom/yelp/android/appdata/LocationService$Accuracies;->FINE:Lcom/yelp/android/appdata/LocationService$Accuracies;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM_KM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/appdata/LocationService$Accuracies;->COARSE:Lcom/yelp/android/appdata/LocationService$Accuracies;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/appdata/LocationService$Accuracies;->UNKNOWN:Lcom/yelp/android/appdata/LocationService$Accuracies;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yelp/android/appdata/LocationService$Accuracies;->$VALUES:[Lcom/yelp/android/appdata/LocationService$Accuracies;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/yelp/android/appdata/LocationService$Accuracies;->meters:I

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/LocationService$Accuracies;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/yelp/android/appdata/LocationService$Accuracies;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/LocationService$Accuracies;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/LocationService$Accuracies;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/yelp/android/appdata/LocationService$Accuracies;->$VALUES:[Lcom/yelp/android/appdata/LocationService$Accuracies;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/LocationService$Accuracies;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/LocationService$Accuracies;

    return-object v0
.end method


# virtual methods
.method public final getMeters()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/yelp/android/appdata/LocationService$Accuracies;->meters:I

    return v0
.end method

.method public satisfies(Landroid/location/Location;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    sget-object v2, Lcom/yelp/android/appdata/LocationService$Accuracies;->UNKNOWN:Lcom/yelp/android/appdata/LocationService$Accuracies;

    invoke-virtual {p0, v2}, Lcom/yelp/android/appdata/LocationService$Accuracies;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/appdata/LocationService$Accuracies;->getMeters()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
