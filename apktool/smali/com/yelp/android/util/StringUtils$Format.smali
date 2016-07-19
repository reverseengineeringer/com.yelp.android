.class public final enum Lcom/yelp/android/util/StringUtils$Format;
.super Ljava/lang/Enum;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/util/StringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/util/StringUtils$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/util/StringUtils$Format;

.field public static final enum ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

.field public static final enum LONG:Lcom/yelp/android/util/StringUtils$Format;

.field public static final enum VERBOSE:Lcom/yelp/android/util/StringUtils$Format;


# instance fields
.field private mFeet:I

.field private mKilometers:I

.field private mMeters:I

.field private mMiles:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/yelp/android/util/StringUtils$Format;

    const-string/jumbo v1, "VERBOSE"

    sget v3, Lcom/yelp/android/co/a$i;->x_meters_away:I

    sget v4, Lcom/yelp/android/co/a$i;->x_kilometers_away:I

    sget v5, Lcom/yelp/android/co/a$i;->x_feet_away:I

    sget v6, Lcom/yelp/android/co/a$i;->x_miles_away:I

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/util/StringUtils$Format;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/yelp/android/util/StringUtils$Format;->VERBOSE:Lcom/yelp/android/util/StringUtils$Format;

    .line 78
    new-instance v3, Lcom/yelp/android/util/StringUtils$Format;

    const-string/jumbo v4, "LONG"

    sget v6, Lcom/yelp/android/co/a$i;->x_meters:I

    sget v7, Lcom/yelp/android/co/a$i;->x_kilometers:I

    sget v8, Lcom/yelp/android/co/a$i;->x_feet:I

    sget v9, Lcom/yelp/android/co/a$i;->x_miles:I

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/StringUtils$Format;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    .line 83
    new-instance v3, Lcom/yelp/android/util/StringUtils$Format;

    const-string/jumbo v4, "ABBREVIATED"

    sget v6, Lcom/yelp/android/co/a$i;->x_meters_short:I

    sget v7, Lcom/yelp/android/co/a$i;->x_kilometers_short:I

    sget v8, Lcom/yelp/android/co/a$i;->x_feet_short:I

    sget v9, Lcom/yelp/android/co/a$i;->x_miles_short:I

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/StringUtils$Format;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/util/StringUtils$Format;

    sget-object v1, Lcom/yelp/android/util/StringUtils$Format;->VERBOSE:Lcom/yelp/android/util/StringUtils$Format;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    aput-object v1, v0, v11

    sput-object v0, Lcom/yelp/android/util/StringUtils$Format;->$VALUES:[Lcom/yelp/android/util/StringUtils$Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput p3, p0, Lcom/yelp/android/util/StringUtils$Format;->mMeters:I

    .line 96
    iput p4, p0, Lcom/yelp/android/util/StringUtils$Format;->mKilometers:I

    .line 97
    iput p5, p0, Lcom/yelp/android/util/StringUtils$Format;->mFeet:I

    .line 98
    iput p6, p0, Lcom/yelp/android/util/StringUtils$Format;->mMiles:I

    .line 99
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/util/StringUtils$Format;
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/yelp/android/util/StringUtils$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/StringUtils$Format;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/util/StringUtils$Format;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/yelp/android/util/StringUtils$Format;->$VALUES:[Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v0}, [Lcom/yelp/android/util/StringUtils$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/util/StringUtils$Format;

    return-object v0
.end method


# virtual methods
.method public getQuantityResourceId(Lcom/yelp/android/util/StringUtils$Unit;)I
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/yelp/android/util/StringUtils$1;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/util/StringUtils$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    iget v0, p0, Lcom/yelp/android/util/StringUtils$Format;->mFeet:I

    :goto_0
    return v0

    .line 104
    :pswitch_0
    iget v0, p0, Lcom/yelp/android/util/StringUtils$Format;->mKilometers:I

    goto :goto_0

    .line 106
    :pswitch_1
    iget v0, p0, Lcom/yelp/android/util/StringUtils$Format;->mMeters:I

    goto :goto_0

    .line 108
    :pswitch_2
    iget v0, p0, Lcom/yelp/android/util/StringUtils$Format;->mMiles:I

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
