.class public abstract enum Lcom/yelp/android/analytics/GADimensions;
.super Ljava/lang/Enum;
.source "GADimensions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/analytics/GADimensions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/analytics/GADimensions;

.field public static final enum MOBILE_PLATFORM_EXISTING_USER:Lcom/yelp/android/analytics/GADimensions;

.field public static final enum MOBILE_VERTICAL_SEARCH_ENTRY:Lcom/yelp/android/analytics/GADimensions;

.field public static final enum MOBILE_VERTICAL_SEARCH_TYPE:Lcom/yelp/android/analytics/GADimensions;

.field public static final enum PRELOAD_PARTNER:Lcom/yelp/android/analytics/GADimensions;

.field public static final enum UFC_NOTIFICATION:Lcom/yelp/android/analytics/GADimensions;

.field public static final enum USER_LOGGED_IN_STATE:Lcom/yelp/android/analytics/GADimensions;


# instance fields
.field private final index:I

.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 16
    new-instance v0, Lcom/yelp/android/analytics/GADimensions$1;

    const-string/jumbo v1, "USER_LOGGED_IN_STATE"

    invoke-direct {v0, v1, v5, v4}, Lcom/yelp/android/analytics/GADimensions$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/analytics/GADimensions;->USER_LOGGED_IN_STATE:Lcom/yelp/android/analytics/GADimensions;

    .line 43
    new-instance v0, Lcom/yelp/android/analytics/GADimensions$2;

    const-string/jumbo v1, "MOBILE_VERTICAL_SEARCH_TYPE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/analytics/GADimensions$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_TYPE:Lcom/yelp/android/analytics/GADimensions;

    .line 59
    new-instance v0, Lcom/yelp/android/analytics/GADimensions$3;

    const-string/jumbo v1, "MOBILE_VERTICAL_SEARCH_ENTRY"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/analytics/GADimensions$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_ENTRY:Lcom/yelp/android/analytics/GADimensions;

    .line 72
    new-instance v0, Lcom/yelp/android/analytics/GADimensions$4;

    const-string/jumbo v1, "MOBILE_PLATFORM_EXISTING_USER"

    const/16 v2, 0x36

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/analytics/GADimensions$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/analytics/GADimensions;->MOBILE_PLATFORM_EXISTING_USER:Lcom/yelp/android/analytics/GADimensions;

    .line 91
    new-instance v0, Lcom/yelp/android/analytics/GADimensions$5;

    const-string/jumbo v1, "PRELOAD_PARTNER"

    const/16 v2, 0x43

    invoke-direct {v0, v1, v8, v2}, Lcom/yelp/android/analytics/GADimensions$5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/analytics/GADimensions;->PRELOAD_PARTNER:Lcom/yelp/android/analytics/GADimensions;

    .line 101
    new-instance v0, Lcom/yelp/android/analytics/GADimensions$6;

    const-string/jumbo v1, "UFC_NOTIFICATION"

    const/4 v2, 0x5

    const/16 v3, 0x65

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/GADimensions$6;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/analytics/GADimensions;->UFC_NOTIFICATION:Lcom/yelp/android/analytics/GADimensions;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/yelp/android/analytics/GADimensions;

    sget-object v1, Lcom/yelp/android/analytics/GADimensions;->USER_LOGGED_IN_STATE:Lcom/yelp/android/analytics/GADimensions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_TYPE:Lcom/yelp/android/analytics/GADimensions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_ENTRY:Lcom/yelp/android/analytics/GADimensions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/analytics/GADimensions;->MOBILE_PLATFORM_EXISTING_USER:Lcom/yelp/android/analytics/GADimensions;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/analytics/GADimensions;->PRELOAD_PARTNER:Lcom/yelp/android/analytics/GADimensions;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/analytics/GADimensions;->UFC_NOTIFICATION:Lcom/yelp/android/analytics/GADimensions;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/analytics/GADimensions;->$VALUES:[Lcom/yelp/android/analytics/GADimensions;

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
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 114
    iput p3, p0, Lcom/yelp/android/analytics/GADimensions;->index:I

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/yelp/android/analytics/GADimensions$1;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/analytics/GADimensions;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/analytics/GADimensions;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/yelp/android/analytics/GADimensions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/GADimensions;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/analytics/GADimensions;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/yelp/android/analytics/GADimensions;->$VALUES:[Lcom/yelp/android/analytics/GADimensions;

    invoke-virtual {v0}, [Lcom/yelp/android/analytics/GADimensions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/analytics/GADimensions;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/yelp/android/analytics/GADimensions;->index:I

    return v0
.end method

.method public abstract getValue()Ljava/lang/String;
.end method
