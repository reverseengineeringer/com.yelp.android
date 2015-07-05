.class public final enum Lcom/yelp/android/serializable/AlertType;
.super Ljava/lang/Enum;
.source "AlertType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/AlertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/AlertType;

.field public static final enum APPROVED_FRIEND_REQUEST:Lcom/yelp/android/serializable/AlertType;

.field public static final enum BADGE_FADE:Lcom/yelp/android/serializable/AlertType;

.field public static final enum BLANK:Lcom/yelp/android/serializable/AlertType;

.field public static final enum CHECK_IN_COMMENT:Lcom/yelp/android/serializable/AlertType;

.field public static final enum CHECK_IN_FEEDBACK:Lcom/yelp/android/serializable/AlertType;

.field public static final enum COMPLIMENT_COOL:Lcom/yelp/android/serializable/AlertType;

.field public static final enum COMPLIMENT_CUTE:Lcom/yelp/android/serializable/AlertType;

.field public static final enum COMPLIMENT_FUNNY:Lcom/yelp/android/serializable/AlertType;

.field public static final enum COMPLIMENT_HOT:Lcom/yelp/android/serializable/AlertType;

.field public static final enum COMPLIMENT_LIST:Lcom/yelp/android/serializable/AlertType;

.field public static final enum COMPLIMENT_MORE:Lcom/yelp/android/serializable/AlertType;

.field public static final enum COMPLIMENT_NOTE:Lcom/yelp/android/serializable/AlertType;

.field public static final enum COMPLIMENT_PHOTOS:Lcom/yelp/android/serializable/AlertType;

.field public static final enum COMPLIMENT_PLAIN:Lcom/yelp/android/serializable/AlertType;

.field public static final enum COMPLIMENT_PROFILE:Lcom/yelp/android/serializable/AlertType;

.field private static final COMPLIMENT_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/serializable/AlertType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum COMPLIMENT_WRITER:Lcom/yelp/android/serializable/AlertType;

.field public static final enum DEAL:Lcom/yelp/android/serializable/AlertType;

.field public static final enum DEFAULT:Lcom/yelp/android/serializable/AlertType;

.field public static final enum FACEBOOK_FRIEND:Lcom/yelp/android/serializable/AlertType;

.field public static final enum FRIEND_REQUEST:Lcom/yelp/android/serializable/AlertType;

.field public static final enum PHOTO_FEEDBACK:Lcom/yelp/android/serializable/AlertType;

.field public static final enum REGULAR:Lcom/yelp/android/serializable/AlertType;

.field public static final enum ROYALTY:Lcom/yelp/android/serializable/AlertType;

.field public static final enum TIPPER:Lcom/yelp/android/serializable/AlertType;

.field public static final enum TIP_FEEDBACK:Lcom/yelp/android/serializable/AlertType;

.field public static final enum VIDEO_FEEDBACK:Lcom/yelp/android/serializable/AlertType;


# instance fields
.field private mIconRes:I

.field private mIndicatorIconRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const v8, 0x7f020068

    const v7, 0x7f020066

    const v6, 0x7f020063

    const/4 v5, 0x0

    .line 9
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->DEFAULT:Lcom/yelp/android/serializable/AlertType;

    .line 11
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "COMPLIMENT_PLAIN"

    const v2, 0x7f02005e

    const v3, 0x7f020070

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_PLAIN:Lcom/yelp/android/serializable/AlertType;

    .line 13
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "COMPLIMENT_CUTE"

    const/4 v2, 0x2

    const v3, 0x7f020057

    const v4, 0x7f020064

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_CUTE:Lcom/yelp/android/serializable/AlertType;

    .line 15
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "COMPLIMENT_WRITER"

    const/4 v2, 0x3

    const v3, 0x7f020058

    const v4, 0x7f020067

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_WRITER:Lcom/yelp/android/serializable/AlertType;

    .line 17
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "COMPLIMENT_HOT"

    const/4 v2, 0x4

    const v3, 0x7f02005b

    const v4, 0x7f02006a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_HOT:Lcom/yelp/android/serializable/AlertType;

    .line 19
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "COMPLIMENT_NOTE"

    const/4 v2, 0x5

    const v3, 0x7f02005c

    const v4, 0x7f02006b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_NOTE:Lcom/yelp/android/serializable/AlertType;

    .line 21
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "COMPLIMENT_PROFILE"

    const/4 v2, 0x6

    const v3, 0x7f02005d

    const v4, 0x7f02006c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_PROFILE:Lcom/yelp/android/serializable/AlertType;

    .line 23
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "COMPLIMENT_MORE"

    const/4 v2, 0x7

    const v3, 0x7f02005f

    const v4, 0x7f020071

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_MORE:Lcom/yelp/android/serializable/AlertType;

    .line 25
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "COMPLIMENT_COOL"

    const/16 v2, 0x8

    const v3, 0x7f020060

    const v4, 0x7f020072

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_COOL:Lcom/yelp/android/serializable/AlertType;

    .line 27
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "COMPLIMENT_PHOTOS"

    const/16 v2, 0x9

    const v3, 0x7f02005a

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_PHOTOS:Lcom/yelp/android/serializable/AlertType;

    .line 29
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "COMPLIMENT_LIST"

    const/16 v2, 0xa

    const v3, 0x7f020059

    const v4, 0x7f020069

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_LIST:Lcom/yelp/android/serializable/AlertType;

    .line 31
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "COMPLIMENT_FUNNY"

    const/16 v2, 0xb

    const v3, 0x7f020061

    const v4, 0x7f020073

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_FUNNY:Lcom/yelp/android/serializable/AlertType;

    .line 34
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "FRIEND_REQUEST"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->FRIEND_REQUEST:Lcom/yelp/android/serializable/AlertType;

    .line 35
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "APPROVED_FRIEND_REQUEST"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->APPROVED_FRIEND_REQUEST:Lcom/yelp/android/serializable/AlertType;

    .line 36
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "FACEBOOK_FRIEND"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->FACEBOOK_FRIEND:Lcom/yelp/android/serializable/AlertType;

    .line 37
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "TIP_FEEDBACK"

    const/16 v2, 0xf

    const v3, 0x7f020077

    const v4, 0x7f02006f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->TIP_FEEDBACK:Lcom/yelp/android/serializable/AlertType;

    .line 38
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "DEAL"

    const/16 v2, 0x10

    const v3, 0x7f020062

    const v4, 0x7f020065

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->DEAL:Lcom/yelp/android/serializable/AlertType;

    .line 39
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "PHOTO_FEEDBACK"

    const/16 v2, 0x11

    const v3, 0x7f020076

    const v4, 0x7f02006e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->PHOTO_FEEDBACK:Lcom/yelp/android/serializable/AlertType;

    .line 40
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "VIDEO_FEEDBACK"

    const/16 v2, 0x12

    const v3, 0x7f020076

    const v4, 0x7f02006e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->VIDEO_FEEDBACK:Lcom/yelp/android/serializable/AlertType;

    .line 41
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "CHECK_IN_FEEDBACK"

    const/16 v2, 0x13

    const v3, 0x7f020074

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->CHECK_IN_FEEDBACK:Lcom/yelp/android/serializable/AlertType;

    .line 43
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "CHECK_IN_COMMENT"

    const/16 v2, 0x14

    const v3, 0x7f020056

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->CHECK_IN_COMMENT:Lcom/yelp/android/serializable/AlertType;

    .line 46
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "BADGE_FADE"

    const/16 v2, 0x15

    const v3, 0x7f02006d

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->BADGE_FADE:Lcom/yelp/android/serializable/AlertType;

    .line 47
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "TIPPER"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2, v5, v5}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->TIPPER:Lcom/yelp/android/serializable/AlertType;

    .line 48
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "ROYALTY"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2, v5, v5}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->ROYALTY:Lcom/yelp/android/serializable/AlertType;

    .line 49
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "REGULAR"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2, v5, v5}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->REGULAR:Lcom/yelp/android/serializable/AlertType;

    .line 54
    new-instance v0, Lcom/yelp/android/serializable/AlertType;

    const-string/jumbo v1, "BLANK"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2, v5, v5}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->BLANK:Lcom/yelp/android/serializable/AlertType;

    .line 8
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/yelp/android/serializable/AlertType;

    sget-object v1, Lcom/yelp/android/serializable/AlertType;->DEFAULT:Lcom/yelp/android/serializable/AlertType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_PLAIN:Lcom/yelp/android/serializable/AlertType;

    aput-object v1, v0, v9

    const/4 v1, 0x2

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_CUTE:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_WRITER:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_HOT:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_NOTE:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_PROFILE:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_MORE:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_COOL:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_PHOTOS:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_LIST:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_FUNNY:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->FRIEND_REQUEST:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->APPROVED_FRIEND_REQUEST:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->FACEBOOK_FRIEND:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->TIP_FEEDBACK:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->DEAL:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->PHOTO_FEEDBACK:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->VIDEO_FEEDBACK:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->CHECK_IN_FEEDBACK:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->CHECK_IN_COMMENT:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->BADGE_FADE:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->TIPPER:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->ROYALTY:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->REGULAR:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/yelp/android/serializable/AlertType;->BLANK:Lcom/yelp/android/serializable/AlertType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->$VALUES:[Lcom/yelp/android/serializable/AlertType;

    .line 59
    sget-object v0, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_PLAIN:Lcom/yelp/android/serializable/AlertType;

    sget-object v1, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_FUNNY:Lcom/yelp/android/serializable/AlertType;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_TYPES:Ljava/util/EnumSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 83
    const v0, 0x7f020075

    const v1, 0x7f02006d

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yelp/android/serializable/AlertType;-><init>(Ljava/lang/String;III)V

    .line 84
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput p3, p0, Lcom/yelp/android/serializable/AlertType;->mIconRes:I

    .line 88
    if-nez p4, :cond_0

    .line 89
    const p4, 0x7f02006d

    .line 91
    :cond_0
    iput p4, p0, Lcom/yelp/android/serializable/AlertType;->mIndicatorIconRes:I

    .line 92
    return-void
.end method

.method public static getTypeFromString(Ljava/lang/String;)Lcom/yelp/android/serializable/AlertType;
    .locals 2

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 64
    sget-object v0, Lcom/yelp/android/serializable/AlertType;->DEFAULT:Lcom/yelp/android/serializable/AlertType;

    .line 78
    :goto_0
    return-object v0

    .line 66
    :cond_0
    const-string/jumbo v0, "approved_compliment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const-string/jumbo v0, "approved_compliment"

    const-string/jumbo v1, "compliment"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 70
    :cond_1
    const-string/jumbo v0, "compliment-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    const/16 v0, 0x2d

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 74
    :cond_2
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/AlertType;->valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/AlertType;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    sget-object v0, Lcom/yelp/android/serializable/AlertType;->DEFAULT:Lcom/yelp/android/serializable/AlertType;

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    sget-object v0, Lcom/yelp/android/serializable/AlertType;->DEFAULT:Lcom/yelp/android/serializable/AlertType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/AlertType;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/yelp/android/serializable/AlertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AlertType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/AlertType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/yelp/android/serializable/AlertType;->$VALUES:[Lcom/yelp/android/serializable/AlertType;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/AlertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/AlertType;

    return-object v0
.end method


# virtual methods
.method public getIconResource()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/yelp/android/serializable/AlertType;->mIconRes:I

    return v0
.end method

.method public getIndicatorResource()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/yelp/android/serializable/AlertType;->mIndicatorIconRes:I

    return v0
.end method

.method public isCompliment()Z
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/yelp/android/serializable/AlertType;->COMPLIMENT_TYPES:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
