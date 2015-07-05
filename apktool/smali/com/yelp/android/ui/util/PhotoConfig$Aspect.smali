.class public final enum Lcom/yelp/android/ui/util/PhotoConfig$Aspect;
.super Ljava/lang/Enum;
.source "PhotoConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/util/PhotoConfig$Aspect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

.field public static final enum Normal:Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

.field public static final enum Square:Lcom/yelp/android/ui/util/PhotoConfig$Aspect;


# instance fields
.field public final shape:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    const-string/jumbo v1, "Square"

    const-string/jumbo v2, "s"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->Square:Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    .line 28
    new-instance v0, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    const-string/jumbo v1, "Normal"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->Normal:Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    sget-object v1, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->Square:Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->Normal:Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->$VALUES:[Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->shape:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/util/PhotoConfig$Aspect;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/util/PhotoConfig$Aspect;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->$VALUES:[Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    return-object v0
.end method
