.class public final enum Lcom/yelp/android/serializable/Compliment$ComplimentState;
.super Ljava/lang/Enum;
.source "Compliment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Compliment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComplimentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/Compliment$ComplimentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/Compliment$ComplimentState;

.field public static final enum COMMITTED:Lcom/yelp/android/serializable/Compliment$ComplimentState;

.field public static final enum ELIGIBLE:Lcom/yelp/android/serializable/Compliment$ComplimentState;

.field public static final enum PENDING:Lcom/yelp/android/serializable/Compliment$ComplimentState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/yelp/android/serializable/Compliment$ComplimentState;

    const-string/jumbo v1, "COMMITTED"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/Compliment$ComplimentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentState;->COMMITTED:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    .line 30
    new-instance v0, Lcom/yelp/android/serializable/Compliment$ComplimentState;

    const-string/jumbo v1, "PENDING"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/serializable/Compliment$ComplimentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentState;->PENDING:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    .line 34
    new-instance v0, Lcom/yelp/android/serializable/Compliment$ComplimentState;

    const-string/jumbo v1, "ELIGIBLE"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/serializable/Compliment$ComplimentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentState;->ELIGIBLE:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/serializable/Compliment$ComplimentState;

    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentState;->COMMITTED:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentState;->PENDING:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentState;->ELIGIBLE:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentState;->$VALUES:[Lcom/yelp/android/serializable/Compliment$ComplimentState;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Compliment$ComplimentState;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/yelp/android/serializable/Compliment$ComplimentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment$ComplimentState;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/Compliment$ComplimentState;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentState;->$VALUES:[Lcom/yelp/android/serializable/Compliment$ComplimentState;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/Compliment$ComplimentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/Compliment$ComplimentState;

    return-object v0
.end method
