.class public final enum Lcom/yelp/android/ui/util/PhotoConfig$Size;
.super Ljava/lang/Enum;
.source "PhotoConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/PhotoConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Size"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/util/PhotoConfig$Size;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/util/PhotoConfig$Size;

.field public static final enum Large:Lcom/yelp/android/ui/util/PhotoConfig$Size;

.field public static final enum Medium:Lcom/yelp/android/ui/util/PhotoConfig$Size;

.field public static final enum Original:Lcom/yelp/android/ui/util/PhotoConfig$Size;

.field public static final enum Px_120:Lcom/yelp/android/ui/util/PhotoConfig$Size;

.field public static final enum Px_180:Lcom/yelp/android/ui/util/PhotoConfig$Size;

.field public static final enum Px_30:Lcom/yelp/android/ui/util/PhotoConfig$Size;

.field public static final enum Px_348:Lcom/yelp/android/ui/util/PhotoConfig$Size;

.field public static final enum Px_60:Lcom/yelp/android/ui/util/PhotoConfig$Size;

.field public static final enum Small:Lcom/yelp/android/ui/util/PhotoConfig$Size;

.field public static final enum XSmall:Lcom/yelp/android/ui/util/PhotoConfig$Size;


# instance fields
.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;

    const-string/jumbo v1, "XSmall"

    const-string/jumbo v2, "xs"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/ui/util/PhotoConfig$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->XSmall:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    .line 10
    new-instance v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;

    const-string/jumbo v1, "Small"

    const-string/jumbo v2, "s"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/ui/util/PhotoConfig$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Small:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    .line 11
    new-instance v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;

    const-string/jumbo v1, "Medium"

    const-string/jumbo v2, "m"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/ui/util/PhotoConfig$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Medium:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    .line 12
    new-instance v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;

    const-string/jumbo v1, "Large"

    const-string/jumbo v2, "l"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/ui/util/PhotoConfig$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Large:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    .line 13
    new-instance v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;

    const-string/jumbo v1, "Original"

    const-string/jumbo v2, "o"

    invoke-direct {v0, v1, v8, v2}, Lcom/yelp/android/ui/util/PhotoConfig$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Original:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    .line 14
    new-instance v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;

    const-string/jumbo v1, "Px_30"

    const/4 v2, 0x5

    const-string/jumbo v3, "30"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/PhotoConfig$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Px_30:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    .line 15
    new-instance v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;

    const-string/jumbo v1, "Px_60"

    const/4 v2, 0x6

    const-string/jumbo v3, "60"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/PhotoConfig$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Px_60:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    .line 16
    new-instance v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;

    const-string/jumbo v1, "Px_120"

    const/4 v2, 0x7

    const-string/jumbo v3, "120"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/PhotoConfig$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Px_120:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    .line 17
    new-instance v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;

    const-string/jumbo v1, "Px_180"

    const/16 v2, 0x8

    const-string/jumbo v3, "180"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/PhotoConfig$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Px_180:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    .line 18
    new-instance v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;

    const-string/jumbo v1, "Px_348"

    const/16 v2, 0x9

    const-string/jumbo v3, "348"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/PhotoConfig$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Px_348:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    .line 8
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/yelp/android/ui/util/PhotoConfig$Size;

    sget-object v1, Lcom/yelp/android/ui/util/PhotoConfig$Size;->XSmall:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Small:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Medium:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Large:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Original:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Px_30:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Px_60:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Px_120:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Px_180:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Px_348:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->$VALUES:[Lcom/yelp/android/ui/util/PhotoConfig$Size;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->type:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/util/PhotoConfig$Size;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/util/PhotoConfig$Size;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Size;->$VALUES:[Lcom/yelp/android/ui/util/PhotoConfig$Size;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/util/PhotoConfig$Size;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/util/PhotoConfig$Size;

    return-object v0
.end method
