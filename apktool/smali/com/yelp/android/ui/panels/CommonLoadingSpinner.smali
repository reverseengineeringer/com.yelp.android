.class public final enum Lcom/yelp/android/ui/panels/CommonLoadingSpinner;
.super Ljava/lang/Enum;
.source "CommonLoadingSpinner.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/panels/CommonLoadingSpinner;",
        ">;",
        "Lcom/yelp/android/ui/panels/c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

.field public static final enum DEFAULT:Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

.field public static final enum SMALL:Lcom/yelp/android/ui/panels/CommonLoadingSpinner;


# instance fields
.field private mFrames:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6
    new-instance v0, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    const-string/jumbo v1, "DEFAULT"

    const/16 v2, 0x18

    new-array v2, v2, [I

    sget v3, Lcom/yelp/android/co/a$e;->general_spinner_000:I

    aput v3, v2, v5

    sget v3, Lcom/yelp/android/co/a$e;->general_spinner_001:I

    aput v3, v2, v6

    sget v3, Lcom/yelp/android/co/a$e;->general_spinner_002:I

    aput v3, v2, v7

    sget v3, Lcom/yelp/android/co/a$e;->general_spinner_003:I

    aput v3, v2, v8

    sget v3, Lcom/yelp/android/co/a$e;->general_spinner_004:I

    aput v3, v2, v9

    const/4 v3, 0x5

    sget v4, Lcom/yelp/android/co/a$e;->general_spinner_005:I

    aput v4, v2, v3

    const/4 v3, 0x6

    sget v4, Lcom/yelp/android/co/a$e;->general_spinner_006:I

    aput v4, v2, v3

    const/4 v3, 0x7

    sget v4, Lcom/yelp/android/co/a$e;->general_spinner_007:I

    aput v4, v2, v3

    const/16 v3, 0x8

    sget v4, Lcom/yelp/android/co/a$e;->general_spinner_008:I

    aput v4, v2, v3

    const/16 v3, 0x9

    sget v4, Lcom/yelp/android/co/a$e;->general_spinner_009:I

    aput v4, v2, v3

    const/16 v3, 0xa

    sget v4, Lcom/yelp/android/co/a$e;->general_spinner_010:I

    aput v4, v2, v3

    const/16 v3, 0xb

    sget v4, Lcom/yelp/android/co/a$e;->general_spinner_011:I

    aput v4, v2, v3

    const/16 v3, 0xc

    sget v4, Lcom/yelp/android/co/a$e;->general_spinner_012:I

    aput v4, v2, v3

    const/16 v3, 0xd

    sget v4, Lcom/yelp/android/co/a$e;->general_spinner_013:I

    aput v4, v2, v3

    const/16 v3, 0xe

    sget v4, Lcom/yelp/android/co/a$e;->general_spinner_014:I

    aput v4, v2, v3

    const/16 v3, 0xf

    sget v4, Lcom/yelp/android/co/a$e;->general_spinner_015:I

    aput v4, v2, v3

    const/16 v3, 0x10

    sget v4, Lcom/yelp/android/co/a$e;->general_spinner_016:I

    aput v4, v2, v3

    const/16 v3, 0x11

    sget v4, Lcom/yelp/android/co/a$e;->general_spinner_017:I

    aput v4, v2, v3

    const/16 v3, 0x12

    sget v4, Lcom/yelp/android/co/a$e;->general_spinner_018:I

    aput v4, v2, v3

    const/16 v3, 0x13

    sget v4, Lcom/yelp/android/co/a$e;->general_spinner_019:I

    aput v4, v2, v3

    const/16 v3, 0x14

    sget v4, Lcom/yelp/android/co/a$e;->general_spinner_020:I

    aput v4, v2, v3

    const/16 v3, 0x15

    sget v4, Lcom/yelp/android/co/a$e;->general_spinner_021:I

    aput v4, v2, v3

    const/16 v3, 0x16

    sget v4, Lcom/yelp/android/co/a$e;->general_spinner_022:I

    aput v4, v2, v3

    const/16 v3, 0x17

    sget v4, Lcom/yelp/android/co/a$e;->general_spinner_023:I

    aput v4, v2, v3

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->DEFAULT:Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    .line 33
    new-instance v0, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    const-string/jumbo v1, "SMALL"

    const/16 v2, 0x18

    new-array v2, v2, [I

    sget v3, Lcom/yelp/android/co/a$e;->small_spinner_000:I

    aput v3, v2, v5

    sget v3, Lcom/yelp/android/co/a$e;->small_spinner_001:I

    aput v3, v2, v6

    sget v3, Lcom/yelp/android/co/a$e;->small_spinner_002:I

    aput v3, v2, v7

    sget v3, Lcom/yelp/android/co/a$e;->small_spinner_003:I

    aput v3, v2, v8

    sget v3, Lcom/yelp/android/co/a$e;->small_spinner_004:I

    aput v3, v2, v9

    const/4 v3, 0x5

    sget v4, Lcom/yelp/android/co/a$e;->small_spinner_005:I

    aput v4, v2, v3

    const/4 v3, 0x6

    sget v4, Lcom/yelp/android/co/a$e;->small_spinner_006:I

    aput v4, v2, v3

    const/4 v3, 0x7

    sget v4, Lcom/yelp/android/co/a$e;->small_spinner_007:I

    aput v4, v2, v3

    const/16 v3, 0x8

    sget v4, Lcom/yelp/android/co/a$e;->small_spinner_008:I

    aput v4, v2, v3

    const/16 v3, 0x9

    sget v4, Lcom/yelp/android/co/a$e;->small_spinner_009:I

    aput v4, v2, v3

    const/16 v3, 0xa

    sget v4, Lcom/yelp/android/co/a$e;->small_spinner_010:I

    aput v4, v2, v3

    const/16 v3, 0xb

    sget v4, Lcom/yelp/android/co/a$e;->small_spinner_011:I

    aput v4, v2, v3

    const/16 v3, 0xc

    sget v4, Lcom/yelp/android/co/a$e;->small_spinner_012:I

    aput v4, v2, v3

    const/16 v3, 0xd

    sget v4, Lcom/yelp/android/co/a$e;->small_spinner_013:I

    aput v4, v2, v3

    const/16 v3, 0xe

    sget v4, Lcom/yelp/android/co/a$e;->small_spinner_014:I

    aput v4, v2, v3

    const/16 v3, 0xf

    sget v4, Lcom/yelp/android/co/a$e;->small_spinner_015:I

    aput v4, v2, v3

    const/16 v3, 0x10

    sget v4, Lcom/yelp/android/co/a$e;->small_spinner_016:I

    aput v4, v2, v3

    const/16 v3, 0x11

    sget v4, Lcom/yelp/android/co/a$e;->small_spinner_017:I

    aput v4, v2, v3

    const/16 v3, 0x12

    sget v4, Lcom/yelp/android/co/a$e;->small_spinner_018:I

    aput v4, v2, v3

    const/16 v3, 0x13

    sget v4, Lcom/yelp/android/co/a$e;->small_spinner_019:I

    aput v4, v2, v3

    const/16 v3, 0x14

    sget v4, Lcom/yelp/android/co/a$e;->small_spinner_020:I

    aput v4, v2, v3

    const/16 v3, 0x15

    sget v4, Lcom/yelp/android/co/a$e;->small_spinner_021:I

    aput v4, v2, v3

    const/16 v3, 0x16

    sget v4, Lcom/yelp/android/co/a$e;->small_spinner_022:I

    aput v4, v2, v3

    const/16 v3, 0x17

    sget v4, Lcom/yelp/android/co/a$e;->small_spinner_023:I

    aput v4, v2, v3

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->SMALL:Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    .line 5
    new-array v0, v7, [Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    sget-object v1, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->DEFAULT:Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->SMALL:Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->$VALUES:[Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-object p3, p0, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->mFrames:[I

    .line 65
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/panels/CommonLoadingSpinner;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/panels/CommonLoadingSpinner;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->$VALUES:[Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    return-object v0
.end method


# virtual methods
.method public getFrames()[I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->mFrames:[I

    return-object v0
.end method
