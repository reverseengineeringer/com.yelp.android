.class public final enum Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;
.super Ljava/lang/Enum;
.source "StarsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reviews/StarsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StarStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

.field public static final enum EMPTY:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

.field public static final enum GRAY:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

.field public static final enum LARGE:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

.field public static final enum MEDIUM:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

.field public static final enum SMALL:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

.field public static final enum SQUARE:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    const-string/jumbo v1, "SMALL"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->SMALL:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    .line 14
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    const-string/jumbo v1, "MEDIUM"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->MEDIUM:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    .line 15
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    const-string/jumbo v1, "LARGE"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->LARGE:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    .line 16
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    const-string/jumbo v1, "SQUARE"

    invoke-direct {v0, v1, v6}, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->SQUARE:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    .line 17
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    const-string/jumbo v1, "GRAY"

    invoke-direct {v0, v1, v7}, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->GRAY:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    .line 18
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    const-string/jumbo v1, "EMPTY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->EMPTY:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    .line 12
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->SMALL:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->MEDIUM:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->LARGE:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->SQUARE:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->GRAY:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->EMPTY:Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->$VALUES:[Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->$VALUES:[Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/reviews/StarsView$StarStyle;

    return-object v0
.end method
