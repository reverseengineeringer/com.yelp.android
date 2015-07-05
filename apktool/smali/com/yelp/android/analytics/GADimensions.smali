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

.field public static final enum USER_LOGGED_IN_STATE:Lcom/yelp/android/analytics/GADimensions;


# instance fields
.field public final mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/yelp/android/analytics/GADimensions$1;

    const-string/jumbo v1, "USER_LOGGED_IN_STATE"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/GADimensions$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/analytics/GADimensions;->USER_LOGGED_IN_STATE:Lcom/yelp/android/analytics/GADimensions;

    .line 7
    new-array v0, v3, [Lcom/yelp/android/analytics/GADimensions;

    sget-object v1, Lcom/yelp/android/analytics/GADimensions;->USER_LOGGED_IN_STATE:Lcom/yelp/android/analytics/GADimensions;

    aput-object v1, v0, v2

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/yelp/android/analytics/GADimensions;->mIndex:I

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/yelp/android/analytics/GADimensions$1;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/analytics/GADimensions;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/analytics/GADimensions;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/yelp/android/analytics/GADimensions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/GADimensions;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/analytics/GADimensions;
    .locals 1

    .prologue
    .line 7
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
    .line 40
    iget v0, p0, Lcom/yelp/android/analytics/GADimensions;->mIndex:I

    return v0
.end method

.method public abstract getValue()Ljava/lang/String;
.end method
