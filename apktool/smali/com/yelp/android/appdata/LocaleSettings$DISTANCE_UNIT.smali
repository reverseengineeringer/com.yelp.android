.class public final enum Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;
.super Ljava/lang/Enum;
.source "LocaleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/LocaleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DISTANCE_UNIT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

.field public static final enum AUTOMATIC:Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

.field public static final enum KILOMETERS:Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

.field public static final enum MILES:Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;


# instance fields
.field private mResourceName:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    const-string/jumbo v1, "AUTOMATIC"

    sget v2, Lcom/yelp/android/co/a$j;->distance_unit_automatic:I

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->AUTOMATIC:Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    .line 28
    new-instance v0, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    const-string/jumbo v1, "KILOMETERS"

    sget v2, Lcom/yelp/android/co/a$j;->distance_unit_kilometers:I

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->KILOMETERS:Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    .line 29
    new-instance v0, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    const-string/jumbo v1, "MILES"

    sget v2, Lcom/yelp/android/co/a$j;->distance_unit_miles:I

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->MILES:Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    sget-object v1, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->AUTOMATIC:Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->KILOMETERS:Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->MILES:Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->$VALUES:[Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->mResourceName:I

    .line 35
    return-void
.end method

.method public static getResourceNames(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->values()[Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    move-result-object v0

    array-length v1, v0

    .line 39
    new-array v2, v1, [Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 41
    invoke-static {}, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->values()[Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    move-result-object v3

    aget-object v3, v3, v0

    iget v3, v3, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->mResourceName:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->$VALUES:[Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    return-object v0
.end method
