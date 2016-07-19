.class public final enum Lcom/yelp/android/serializable/Video$Provider;
.super Ljava/lang/Enum;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/Video$Provider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/Video$Provider;

.field public static final enum BRIGHTCOVE:Lcom/yelp/android/serializable/Video$Provider;

.field public static final enum OOYALA:Lcom/yelp/android/serializable/Video$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/yelp/android/serializable/Video$Provider;

    const-string/jumbo v1, "OOYALA"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/Video$Provider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Video$Provider;->OOYALA:Lcom/yelp/android/serializable/Video$Provider;

    .line 20
    new-instance v0, Lcom/yelp/android/serializable/Video$Provider;

    const-string/jumbo v1, "BRIGHTCOVE"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/serializable/Video$Provider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Video$Provider;->BRIGHTCOVE:Lcom/yelp/android/serializable/Video$Provider;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/serializable/Video$Provider;

    sget-object v1, Lcom/yelp/android/serializable/Video$Provider;->OOYALA:Lcom/yelp/android/serializable/Video$Provider;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/serializable/Video$Provider;->BRIGHTCOVE:Lcom/yelp/android/serializable/Video$Provider;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yelp/android/serializable/Video$Provider;->$VALUES:[Lcom/yelp/android/serializable/Video$Provider;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/yelp/android/serializable/Video$Provider;
    .locals 1

    .prologue
    .line 18
    invoke-static {p0}, Lcom/yelp/android/serializable/Video$Provider;->fromVideoSource(Ljava/lang/String;)Lcom/yelp/android/serializable/Video$Provider;

    move-result-object v0

    return-object v0
.end method

.method private static fromVideoSource(Ljava/lang/String;)Lcom/yelp/android/serializable/Video$Provider;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "user"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/yelp/android/serializable/Video$Provider;->BRIGHTCOVE:Lcom/yelp/android/serializable/Video$Provider;

    .line 31
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/Video$Provider;->OOYALA:Lcom/yelp/android/serializable/Video$Provider;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Video$Provider;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/yelp/android/serializable/Video$Provider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Video$Provider;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/Video$Provider;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/yelp/android/serializable/Video$Provider;->$VALUES:[Lcom/yelp/android/serializable/Video$Provider;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/Video$Provider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/Video$Provider;

    return-object v0
.end method
